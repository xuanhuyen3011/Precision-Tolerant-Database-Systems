use solutions;
SET @test_driver = "DRIVER001";
SET @start_time = CURRENT_TIMESTAMP(3);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_A("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_A("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_A("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_A("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_A("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_A("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
SET @end_time = CURRENT_TIMESTAMP(3);
SELECT TIMEDIFF(@end_time, @start_time) AS total_query_time_solution_A_precise_computational;

