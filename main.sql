-- STEP 1 : Create the baseline database as benchmark
create database baseline;
USE baseline;

-- Include the baseline numerical constraints
CREATE TABLE Payment (
    Trip_ID VARCHAR(6) PRIMARY KEY,
    Driver_ID VARCHAR(10),
    BaseFare DECIMAL(6,2) CHECK (BaseFare >=0 and BaseFare <=100),
    Surcharge DECIMAL(6,2) CHECK (Surcharge >=0 and Surcharge <=50),
    Total DECIMAL(6,2),
    Duration DECIMAL(10,1) CHECK (Duration >=0 and Duration <=8)
);

DELIMITER //

CREATE TRIGGER payment_before_insert
BEFORE INSERT ON Payment FOR EACH ROW
BEGIN
    SET NEW.Total = NEW.BaseFare + NEW.Surcharge;
END;
//
DELIMITER ;


-- STEP 2 : insertion for the 10,000 rows in baseline [Payment] table, run Insert_BaselineAll.sql


-- STEP 3 : Create the database for solutions
create database solutions;
USE solutions;

CREATE TABLE Drivers (
    Driver_ID VARCHAR(10) PRIMARY KEY,
    Driver_Name VARCHAR(50),
    Vehicle_ID VARCHAR(12)
);

INSERT INTO Drivers VALUES ("DRIVER001", "Keny", "ABC123"),
("DRIVER002", "Yonax", "CBA777"),
("DRIVER003", "Jeremy", "XYZ888");


-- STEP 4.1 : Create the table for solution A
CREATE TABLE solutions.Payment_A (
    Trip_ID VARCHAR(6) PRIMARY KEY,
    Driver_ID VARCHAR(10),
    BaseFare DECIMAL (6,2),
    Surcharge DECIMAL (6,2),
    Total DECIMAL (6,2),
    Duration DECIMAL(10, 1),
    Imprecise_status boolean,
    Imprecise_tag VARCHAR(10)
    );
    
    DELIMITER //
    
-- STEP 4.2 : Insert or Update Procedure A
CREATE PROCEDURE solutions.Insert_Update_A(
    IN p_Trip_ID VARCHAR(6),
    IN p_Driver_ID VARCHAR(10),
    IN p_BaseFare DECIMAL (6,2),
    IN p_Surcharge DECIMAL (6,2),
    IN p_Total DECIMAL (6,2),
	IN p_Duration DECIMAL(10, 1)
)
BEGIN
    DECLARE v_imprecise_status boolean;
    DECLARE v_imprecise_BaseFare VARCHAR(10);
    DECLARE v_imprecise_Surcharge VARCHAR(10);
    DECLARE v_imprecise_Total VARCHAR(10);
    DECLARE v_imprecise_Duration VARCHAR(10);
    SET v_imprecise_status = 0;
	SET v_imprecise_BaseFare = "";
    SET v_imprecise_Surcharge = "";
    SET v_imprecise_Total = "";
	SET v_imprecise_Duration = "";
    
    IF p_BaseFare < 0 OR p_BaseFare > 100 THEN
        SET v_imprecise_status = 1;
        SET v_imprecise_BaseFare = "1";
        SET v_imprecise_Total = "2";
	ELSE
		SET v_imprecise_BaseFare = "0";
    END IF;

    IF p_Surcharge < 0 OR p_Surcharge > 50 THEN
        SET v_imprecise_status = 1;
        SET v_imprecise_Surcharge = "1";
        SET v_imprecise_Total = "2";
	ELSE
		SET v_imprecise_Surcharge = "0";

    END IF;
    
    IF p_Total != (p_BaseFare + p_Surcharge) THEN
        SET v_imprecise_status = 1;
        SET v_imprecise_Total = "2";
    ELSE
        IF p_Total < 0 OR p_Total > 150 THEN
        SET v_imprecise_status = 1;
        SET v_imprecise_Total = "1";
	ELSE
		IF v_imprecise_Total != "2" AND v_imprecise_Total != "1" THEN
		SET v_imprecise_Total = "0";
        END IF;
        END IF;
    END IF;
    IF (SELECT SUM(Duration) FROM Payment_A WHERE Driver_ID = p_Driver_ID) + p_Duration > 8 THEN
		SET v_imprecise_status = 1;
        SET v_imprecise_Duration = "3";
        -- Update the rows already in the table
        Update Payment_A SET Imprecise_status = 1 WHERE Driver_ID = p_Driver_ID;
        Update Payment_A SET Imprecise_tag = CONCAT(SUBSTRING(Imprecise_tag, 1, LENGTH(Imprecise_tag) - 1), '3') WHERE Driver_ID = p_Driver_ID;
	else
		SET v_imprecise_Duration = "0";
    END IF;    
        
	IF EXISTS (SELECT * FROM Payment_A WHERE Trip_ID = p_Trip_ID) THEN
        -- for update
        UPDATE Payment_A
        SET BaseFare = p_BaseFare,
            Surcharge = p_Surcharge,
            Total = p_Total,
            Duration = p_Duration,
            Imprecise_status = v_imprecise_status,
            Imprecise_tag = CONCAT_WS(",", v_imprecise_BaseFare, v_imprecise_Surcharge, v_imprecise_Total, v_imprecise_Duration)
		WHERE Trip_ID = p_Trip_ID;
    ELSE
     -- for insertion
        INSERT INTO Payment_A 
        (Trip_ID, Driver_ID, BaseFare, Surcharge, Total, Duration,
        Imprecise_status, Imprecise_tag)
        VALUES 
        (p_Trip_ID, p_Driver_ID, p_BaseFare, p_Surcharge, p_Total, p_Duration,
		v_imprecise_status, CONCAT_WS(",", v_imprecise_BaseFare, v_imprecise_Surcharge, v_imprecise_Total, v_imprecise_Duration));
    END IF;
END//
DELIMITER ;


-- STEP 4.2 : Create Procedure to process query for solution A
DELIMITER //
CREATE PROCEDURE solutions.Query_A(
    IN query_statement TEXT, IN precision_column boolean)
BEGIN
    -- Declare variables for column names and condition
    DECLARE basefare_col VARCHAR(255);
    DECLARE surcharge_col VARCHAR(255);
    DECLARE total_col VARCHAR(255);
    DECLARE duration_col VARCHAR(255);


    -- Initialize column names based on precision_column
    IF precision_column = FALSE THEN
        SET basefare_col = 'BaseFare';
        SET surcharge_col = 'Surcharge';
        SET total_col = 'Total';
        SET duration_col = 'Duration';
    ELSEIF precision_column = TRUE THEN
        SET basefare_col = "CASE WHEN SUBSTRING(Imprecise_tag, 1, 1) != '0' THEN NULL ELSE BaseFare END AS BaseFare";
        SET surcharge_col = "CASE WHEN SUBSTRING(Imprecise_tag, 3, 1) != '0' THEN NULL ELSE Surcharge END AS Surcharge";
        SET total_col = "CASE WHEN SUBSTRING(Imprecise_tag, 5, 1) != '0' THEN NULL ELSE Total END AS Total";
        SET duration_col = "CASE WHEN SUBSTRING(Imprecise_tag, 7, 1) != '0' THEN NULL ELSE Duration END AS Duration";
    END IF;

	SET @sql = CONCAT('CREATE TEMPORARY TABLE IF NOT EXISTS Payment AS ',
	'SELECT Trip_ID, Driver_ID, ',
	basefare_col, ', ',
	surcharge_col, ', ',
	total_col, ', ',
	duration_col, ', ',
	'Imprecise_status, '
	'Imprecise_tag '
	' FROM Payment_A ');

    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    -- Your dynamic query logic using the temporary table
    SET @sql_statement = query_statement;

    -- Execute the SQL statement directly
    PREPARE stmt FROM @sql_statement;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    -- Drop the temporary table when done
    DROP TEMPORARY TABLE IF EXISTS Payment;
END//
DELIMITER ;



-- STEP 5.1 : Create Table for solution B
CREATE TABLE solutions.Payment_B (
    Trip_ID VARCHAR(6) PRIMARY KEY,
    Driver_ID VARCHAR(10),
    BaseFare DECIMAL(10, 2),
    Surcharge DECIMAL(10, 2),
    Total DECIMAL(10, 2),
    Duration DECIMAL(10, 2),
    -- TotalDuration DECIMAL(10, 1), -- New column
    imprecise_BaseFare boolean,
    imprecise_Surcharge boolean,
    imprecise_Total boolean,
    imprecise_Duration boolean
);
	

-- STEP 5.2 : Create Procedure for insert or update for solution B
DELIMITER //

CREATE PROCEDURE solutions.Insert_Update_B(
    IN p_Trip_ID VARCHAR(6),
    IN p_Driver_ID VARCHAR(10),
    IN p_BaseFare DECIMAL,
    IN p_Surcharge DECIMAL (6,2),
    IN p_Total DECIMAL(6,2),
	IN p_Duration DECIMAL(6, 2)
)
BEGIN
    DECLARE v_imprecise_BaseFare boolean;
    DECLARE v_imprecise_Surcharge boolean;
    DECLARE v_imprecise_Total boolean;
    DECLARE v_imprecise_Duration boolean;
    
    -- Calculate the total duration for the driver's trips
    SET v_imprecise_BaseFare = 0;
    SET v_imprecise_Surcharge = 0;
    SET v_imprecise_Total = 0;
	SET v_imprecise_Duration = 0;
    
    IF p_BaseFare < 0 OR p_BaseFare > 100 THEN
        SET v_imprecise_BaseFare = 1;
		SET v_imprecise_Total = 1;
    END IF;

    IF p_Surcharge < 0 OR p_Surcharge > 50 THEN
        SET v_imprecise_Surcharge = 1;
		SET v_imprecise_Total = 1;
    END IF;
    
    IF p_Total != (p_BaseFare + p_Surcharge) THEN
        SET v_imprecise_Total = 1;
    ELSE
        IF p_Total < 0 OR p_Total > 150 THEN
            SET v_imprecise_Total = 1;
        END IF;
    END IF;
    IF (SELECT SUM(Duration) FROM Payment_B WHERE Driver_ID = p_Driver_ID) + p_Duration > 8 THEN
		SET v_imprecise_Duration = 1;
        Update Payment_B SET imprecise_Duration = 1 WHERE Driver_ID = p_Driver_ID;
        END IF;

    IF EXISTS (SELECT * FROM Payment_B WHERE Trip_ID = p_Trip_ID) THEN
        -- for update
        UPDATE Payment_B
        SET BaseFare = p_BaseFare,
            Surcharge = p_Surcharge,
            Total = p_Total,
            Duration = p_Duration,
           -- TotalDuration = v_TotalDuration + p_Duration,
            imprecise_BaseFare = v_imprecise_BaseFare,
            imprecise_Surcharge = v_imprecise_Surcharge,
            imprecise_Total = v_imprecise_Total,
            imprecise_Duration = v_imprecise_Duration
        WHERE Trip_ID = p_Trip_ID;
    ELSE
        -- for insertion
        INSERT INTO Payment_B 
        (Trip_ID, Driver_ID, BaseFare, Surcharge, Total, Duration,
        imprecise_BaseFare, imprecise_Surcharge, imprecise_Total, imprecise_Duration)
        VALUES 
        (p_Trip_ID, p_Driver_ID, p_BaseFare, p_Surcharge, p_Total, p_Duration,
		v_imprecise_BaseFare, v_imprecise_Surcharge,
         v_imprecise_Total, v_imprecise_Duration);
    END IF;
END;
//
DELIMITER ;

DELIMITER //


-- STEP 5.3 : Create Procedure to process query for solution B
CREATE PROCEDURE solutions.Query_B(
    IN query_statement TEXT, IN precision_column boolean)
BEGIN
    -- Declare variables for column names and condition
    DECLARE basefare_col VARCHAR(255);
    DECLARE surcharge_col VARCHAR(255);
    DECLARE total_col VARCHAR(255);
    DECLARE duration_col VARCHAR(255);


    -- Initialize column names based on precision_column
    IF precision_column = FALSE THEN
        SET basefare_col = 'BaseFare';
        SET surcharge_col = 'Surcharge';
        SET total_col = 'Total';
        SET duration_col = 'Duration';
    ELSEIF precision_column = TRUE THEN
        SET basefare_col = "CASE WHEN imprecise_BaseFare != 0 THEN NULL ELSE BaseFare END AS BaseFare";
        SET surcharge_col = "CASE WHEN imprecise_Surcharge != 0 THEN NULL ELSE Surcharge END AS Surcharge";
        SET total_col = "CASE WHEN imprecise_Total != 0 THEN NULL ELSE Total END AS Total";
        SET duration_col = "CASE WHEN imprecise_Duration != 0 THEN NULL ELSE Duration END AS Duration";
    END IF;

	SET @sql = CONCAT('CREATE TEMPORARY TABLE IF NOT EXISTS Payment AS ',
	'SELECT Trip_ID, Driver_ID, ',
	basefare_col, ', ',
	surcharge_col, ', ',
	total_col, ', ',
	duration_col, ', ',
	'imprecise_BaseFare, '
	'imprecise_Surcharge, '
    'imprecise_Total, '
    'imprecise_Duration '
	' FROM Payment_B ');
    -- END IF;
    

    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    -- Your dynamic query logic using the temporary table
    SET @sql_statement = query_statement;

    -- Execute the SQL statement directly
    PREPARE stmt FROM @sql_statement;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

    -- Drop the temporary table when done
    DROP TEMPORARY TABLE IF EXISTS Payment;
END//
DELIMITER ;



-- STEP 6.1 : Create table and procedures for solution C
CREATE TABLE solutions.Payment_precise (
    Trip_ID VARCHAR(6) PRIMARY KEY,
    Driver_ID VARCHAR(10),
    BaseFare DECIMAL(6,2) check (BaseFare >=0 and BaseFare <=100),
    Surcharge DECIMAL(6,2) check (Surcharge >=0 and Surcharge <=50),
    Total DECIMAL(6,2) check (Total >=0 and Total <=150),
    Duration DECIMAL(10,1) check (Duration >=0 and Duration <=8)
);

CREATE TABLE solutions.Payment_imprecise (
    Trip_ID VARCHAR(6) PRIMARY KEY,
    Driver_ID VARCHAR(10),
    BaseFare DECIMAL(6,2),
    Surcharge DECIMAL(6,2),
    Total DECIMAL(6,2),
    Duration DECIMAL(10,1)
);

-- STEP 6.2 : Create procedure to insert or update solution C
DELIMITER //
CREATE PROCEDURE solutions.Insert_Update_C(
    IN input_Trip_ID VARCHAR(99),
    IN input_Driver_ID VARCHAR(99),
    IN input_BaseFare FLOAT,
    IN input_Surcharge FLOAT,
    IN input_Total FLOAT,
    IN input_Duration FLOAT
)
BEGIN
	DECLARE v_total_amount DECIMAL(10, 2);
    DECLARE v_total_duration DECIMAL(10, 2);
    DECLARE v_total_duration_imp DECIMAL(10, 2); -- also check the duration from imprecise side
    DECLARE v_latest_duration DECIMAL(10, 2);
    
    SET v_total_amount = input_BaseFare + input_Surcharge;
    
    -- Check for duplicates in Payment_precise
    IF EXISTS (SELECT 1 FROM Payment_precise WHERE Trip_ID = input_Trip_ID) THEN
        -- Duplicate found in Payment_precise, delete the row
        DELETE FROM Payment_precise WHERE Trip_ID = input_Trip_ID;
    END IF;

    -- Check for duplicates in Payment_imprecise
    IF EXISTS (SELECT 1 FROM Payment_imprecise WHERE Trip_ID = input_Trip_ID) THEN
        -- Duplicate found in Payment_imprecise, delete the row
        DELETE FROM Payment_imprecise WHERE Trip_ID = input_Trip_ID;
    END IF;
    
    -- Calculate total duration for the driver
    SELECT COALESCE(SUM(Duration), 0) INTO v_total_duration
    FROM Payment_precise
    WHERE Driver_ID = input_Driver_ID;
    
    SELECT COALESCE(SUM(Duration), 0) INTO v_total_duration_imp
    FROM Payment_imprecise
    WHERE Driver_ID = input_Driver_ID;
    
    SET v_latest_duration = v_total_duration + v_total_duration_imp + input_Duration;

    IF input_BaseFare < 0 OR input_BaseFare > 100 THEN
        INSERT INTO Payment_imprecise(Trip_ID, Driver_ID, BaseFare, Surcharge, Total, Duration)
        VALUES (input_Trip_ID, input_Driver_ID, input_BaseFare, input_Surcharge, input_Total, input_Duration);
    ELSEIF input_Surcharge < 0 OR input_Surcharge > 50 THEN
        INSERT INTO Payment_imprecise(Trip_ID, Driver_ID, BaseFare, Surcharge, Total, Duration)
        VALUES (input_Trip_ID, input_Driver_ID, input_BaseFare, input_Surcharge, input_Total, input_Duration);
    ELSEIF input_Total < 0 OR input_Total > 150 THEN
        INSERT INTO Payment_imprecise(Trip_ID, Driver_ID, BaseFare, Surcharge, Total, Duration)
        VALUES (input_Trip_ID, input_Driver_ID, input_BaseFare, input_Surcharge, input_Total, input_Duration);
    ELSEIF v_total_amount != input_Total THEN
        INSERT INTO Payment_imprecise(Trip_ID, Driver_ID, BaseFare, Surcharge, Total, Duration)
        VALUES (input_Trip_ID, input_Driver_ID, input_BaseFare, input_Surcharge, input_Total, input_Duration);
    ELSEIF input_Duration < 0 OR input_Duration > 8 THEN
        INSERT INTO Payment_imprecise(Trip_ID, Driver_ID, BaseFare, Surcharge, Total, Duration)
        VALUES (input_Trip_ID, input_Driver_ID, input_BaseFare, input_Surcharge, input_Total, input_Duration);
    ELSEIF v_latest_duration > 8 THEN
		INSERT INTO Payment_precise(Trip_ID, Driver_ID, BaseFare, Surcharge, Total, Duration)
        VALUES (input_Trip_ID, input_Driver_ID, input_BaseFare, input_Surcharge, input_Total, input_Duration);
        -- Move all rows with the same Driver_ID to Payment_imprecise
        INSERT INTO Payment_imprecise(Trip_ID, Driver_ID, BaseFare, Surcharge, Total, Duration)
        SELECT Trip_ID, Driver_ID, BaseFare, Surcharge, Total, Duration
        FROM Payment_precise
        WHERE Driver_ID = input_Driver_ID;
        
        DELETE FROM Payment_precise WHERE Driver_ID = input_Driver_ID;
    ELSE
        INSERT INTO Payment_precise(Trip_ID, Driver_ID, BaseFare, Surcharge, Total, Duration)
        VALUES (input_Trip_ID, input_Driver_ID, input_BaseFare, input_Surcharge, input_Total, input_Duration);
    END IF;
END;
//
DELIMITER ;


-- STEP 6.3 : Create procedure to process queries for solution C
DELIMITER //
-- change the database name
CREATE PROCEDURE solutions.Query_C(IN query_statement TEXT, IN precision_column boolean)
BEGIN
-- Initialize column names based on precision_column
    IF precision_column = FALSE THEN
		SET @sql = CONCAT('WITH Payment AS (Select * from Payment_imprecise UNION ALL Select * from Payment_precise) ', query_statement);
    ELSEIF precision_column = TRUE THEN
        SET @sql = CONCAT('WITH Payment AS (Select * from Payment_precise AS Payment) ', query_statement);
	END IF;
    -- Prepare and run the statement
	PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END
//
DELIMITER ;
    


-- STEP 7 : Run Insert_Update procedures to populate tables with 10,000 data rows. run: Insert_A_ScriptAll.sql, Insert_B_ScriptAll.sql, Insert_C_ScriptAll.sql


-- STEP 8 : Measuring Resulting Tables
  -- where to count data_length
SHOW TABLE STATUS LIKE 'Payment_A';
SHOW TABLE STATUS LIKE 'Payment_B';
SHOW TABLE STATUS LIKE 'Payment_precise';
SHOW TABLE STATUS LIKE 'Payment_imprecise';
SHOW TABLE STATUS LIKE 'Payment';

-- STEP 9 : Run Queries.



-- other control panel for verifying results
use solutions_Dependency_only;
use baseline;
show tables;

select count(*) from baseline.Payment;
select count(*) from baseline_no_constraints.Payment;

select count(*) from solutions.Payment_A;
select count(*) from solutions.Payment_B;
select count(*) from solutions.Payment_imprecise;
select count(*) from solutions.Payment_precise;

select count(*) from solutions_aggregation_only.Payment;
select * from solutions_aggregation_only.Payment;
select count(*) from solutions_aggregation_only.Payment_A;
select count(*) from solutions_aggregation_only.Payment_B;
select count(*) from solutions_aggregation_only.Payment_imprecise;
select count(*) from solutions_aggregation_only.Payment_precise;

select count(*) from solutions_Dependency_only.Payment;
select count(*) from solutions_Dependency_only.Payment_A;
select count(*) from solutions_Dependency_only.Payment_B;
select count(*) from solutions_Dependency_only.Payment_imprecise;
select count(*) from solutions_Dependency_only.Payment_precise;

select count(*) from solutions_Range_only.Payment;
select count(*) from solutions_Range_only.Payment_A;
select count(*) from solutions_Range_only.Payment_B;
select count(*) from solutions_Range_only.Payment_imprecise;
select count(*) from solutions_Range_only.Payment_precise;

select count(*) from solutions.Payment_A where Imprecise_status = 1;
select count(*) from solutions_aggregation_only.Payment_A where Imprecise_status = 1;
select count(*) from solutions_Dependency_only.Payment_A where Imprecise_status = 1;
select count(*) from solutions_Range_only.Payment_A where Imprecise_status = 1;

select count(*) from solutions.Payment_B 
where imprecise_BaseFare =1 or imprecise_Surcharge = 1 or imprecise_Total = 1 or imprecise_Duration = 1;

select count(*) from solutions_aggregation_only.Payment_B 
where imprecise_BaseFare =1 or imprecise_Surcharge = 1 or imprecise_Total = 1 or imprecise_Duration = 1;

select count(*) from solutions_Dependency_only.Payment_B 
where imprecise_BaseFare =1 or imprecise_Surcharge = 1 or imprecise_Total = 1 or imprecise_Duration = 1;

select count(*) from solutions_Range_only.Payment_B 
where imprecise_BaseFare =1 or imprecise_Surcharge = 1 or imprecise_Total = 1 or imprecise_Duration = 1;

select count(*) from solutions.Payment_imprecise;
select count(*) from solutions_aggregation_only.Payment_imprecise;
select count(*) from solutions_Dependency_only.Payment_imprecise;
select count(*) from solutions_Range_only.Payment_imprecise;


SELECT * FROM (
    SELECT * FROM information_schema.TABLES WHERE TABLE_NAME = 'Payment_A'
    UNION ALL
    SELECT * FROM information_schema.TABLES WHERE TABLE_NAME = 'Payment_B'
    UNION ALL
    SELECT * FROM information_schema.TABLES WHERE TABLE_NAME = 'Payment_precise'
    UNION ALL
    SELECT * FROM information_schema.TABLES WHERE TABLE_NAME = 'Payment_imprecise'
) AS combined_table_status;

SELECT
    table_name AS "Payment_imprecise",
    ROUND(((data_length + index_length) / 1024 / 1024), 2) AS "Size (MB)"
FROM
    information_schema.tables
WHERE
    table_schema = 'solutions' AND table_name = 'Payment_imprecise';
    
-- baseline without constraints
create database baseline_no_constraints;
USE baseline_no_constraints;
CREATE TABLE Payment (
    Trip_ID VARCHAR(6) PRIMARY KEY,
    Driver_ID VARCHAR(10),
    BaseFare DECIMAL(6,2),
    Surcharge DECIMAL(6,2),
    Total DECIMAL(6,2),
    Duration DECIMAL(10,1)
);