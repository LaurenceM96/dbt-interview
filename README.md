# Analytics Engineer Interview Task

Welcome to our dbt and SQL skills assessment! This environment provides you with a dbt project connected to a DuckDB database.

## Your Task

Your goal is to create two new **silver-level models** in the `models/silver/` directory. These models should build upon the existing bronze models.

### 1. `silver_customers`

This model should enrich the `bronze_customers` data.

* Join with the `country_codes` seed data to bring in the full `country_name`.
* Create a new column `full_name` by concatenating `first_name` and `last_name`.
* Calculate the number of days since the customer signed up, named `days_as_customer`.

### 2. `silver_orders`

This model should provide an aggregated view of orders.

* Create a model that calculates the total order amount for each customer.
* The model should have two columns: `customer_id` and `total_revenue`.

## Instructions

1.  Familiarize yourself with the project structure.
2.  Run `dbt build` in the terminal to materialize the initial bronze models and run tests.
3.  Create your new silver models in the `models/silver/` directory.
4.  Ensure your models are well-documented and follow dbt best practices.
5.  Be prepared to discuss your approach and the reasoning behind your code.

Good luck!