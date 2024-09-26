# DBT_ASSIGNMENT 2
### Fufu Data Engineering Project
## Overview
This project focuses on creating a dimensional model for Fufu Republic, a restaurant chain in Nigeria. The objective is to leverage data for understanding sales trends, managing stock levels efficiently, and enhancing customer experience.
## Project Structure
fufu
  models
    dimensional
    sources
    staging
dbt_project.yml
README.md

## Steps to Set Up

# Database Creation:

Create the PostgreSQL database named fufu.
Create necessary tables for Branch, Menu_Item, Customer, Order, Order_Line, Payment_Method, Dining_Option, and Inventory.

# Source Models:

Define the source models for the raw data tables in the models/sources directory.
Ensure freshness tests for data sources.

# Staging Models:

Implement staging models that map 1:1 with the source tables, applying light transformations (e.g., renaming columns, casting data types).

# Dimensional Models:

Build dimension and fact models based on the defined business process, including tables for sales analysis and inventory optimization.

# Testing and Documentation:

Add generic and custom tests to the models to ensure data quality (uniqueness, non-null constraints, accepted values).
Document each model thoroughly for clarity and maintainability.

# Automating User Access Requests:

Implement a method to automate granting access to user joseph for new tables/models after each dbt execution.
Dependencies
PostgreSQL
dbt (version 1.8.7)

## Running the Project

Ensure your PostgreSQL database is running and accessible.
Install dbt and required dependencies.
Set up the connection to the PostgreSQL database in profiles.yml.
Run the following commands to execute the dbt models:
  dbt clean
  dbt deps
  dbt run
