use solutions;
SET @test_driver = "DRIVER001";
SET @start_time = CURRENT_TIMESTAMP(3);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", TRUE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", TRUE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", TRUE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", TRUE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", TRUE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", TRUE);
CALL Query_B("SELECT sum(Total) from Payment WHERE Driver_ID = @test_driver;", FALSE);
CALL Query_B("SELECT AVG(Duration) from Payment WHERE Basefare < 15;", FALSE);
CALL Query_B("SELECT Count(Distinct(Driver_ID)) from Payment WHERE Surcharge < 1;", FALSE);
CALL Query_B("SELECT Total/Duration AS revenue_per_hour from Payment WHERE Duration < 1;", FALSE);
CALL Query_B("SELECT AVG(Total/Duration) AS avg_revenue_per_hour from Payment WHERE Basefare < 20;", FALSE);
CALL Query_B("SELECT Driver_ID, sum(Total), sum(Duration) FROM Payment GROUP BY Driver_ID ORDER BY sum(Total);", FALSE);
SET @end_time = CURRENT_TIMESTAMP(3);
SELECT TIMEDIFF(@end_time, @start_time) AS total_query_time_solution_B_all_computational;
