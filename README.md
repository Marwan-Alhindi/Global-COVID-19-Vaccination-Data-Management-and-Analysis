## Languages and Tools

- **SQLite**: Database engine used for creating and querying the database.
- **SQL**: Language used for defining the schema and querying the database.
- **Data Visualization**: Tools like Google Charts and Excel were used to visualize query results.

# COVID-19 Vaccination Data Analysis and Database Project

## Overview

This project focuses on designing a database to manage and analyze COVID-19 vaccination data from multiple countries. Using data provided by "Our World in Data," this project involves understanding various datasets, creating a normalized relational database, and developing SQL queries to retrieve meaningful insights. The project also visualizes the data retrieved from the database using SQL queries.

### Key Features

1. **Data Understanding and Manipulation**:
   - Multiple datasets include information on vaccinations by country, state, manufacturer, and age group.
   - The project involves cleaning the data, normalizing attributes, and importing them into a relational database.

2. **Database Design**:
   - A relational database schema was designed using ER diagrams, and the schema was normalized to 3NF.
   - The database was created in SQLite, and the data from CSV files was imported to create the final database.

3. **SQL Queries**:
   - SQL queries were developed to retrieve data such as:
     - Total vaccines administered by country.
     - Vaccination trends across states in the US.
     - Comparison of vaccine types administered in different countries.
   - Each query produces data visualizations that provide insights into vaccination trends worldwide.

4. **Data Visualization**:
   - The results of SQL queries are visualized using charts and graphs, aiding in better understanding of the vaccination data.
   - Visualization tools such as Excel or Google Charts were used to graphically represent the output.

### System Design

- **ER Diagram**:
  - The project used an Entity-Relationship diagram to model the database schema (available in `Model.pdf`).
  - The schema was designed following normalization principles, ensuring data is stored efficiently without redundancy.

- **Normalization**:
  - The database schema was normalized to 3NF, ensuring there are no transitive dependencies and all relations are cleanly organized (explained in `Model.pdf`).

### SQL Queries and Data Retrieval

- SQL scripts were written to retrieve data based on various tasks outlined in the project:
  - **Task 1**: List total vaccines administered for a specific country (e.g., Australia) on each observation date.
  - **Task 2**: Retrieve cumulative doses of vaccines administered by each country.
  - **Task 3**: Retrieve the type of vaccines administered in each US state.
  - **Task 4**: Display total vaccines administered according to each data source.
  - **Task 5**: Compare the vaccine administration speed across multiple countries for 2022.
  
  The SQL queries for these tasks are available in `Queries.sql` and are documented in `Queries.pdf`.

### Files in the Repository

- **`Model.pdf`**: Contains the ER diagram, database schema, and normalization details.
- **`Database.sql`**: The SQL script used to create the database schema.
- **`Vaccinations.db`**: The SQLite database populated with data from the CSV files.
- **`Queries.sql`**: SQL scripts for performing various data retrieval tasks.
- **`Queries.pdf`**: Results of the SQL queries along with the data visualizations.

### Data Sources

The data used for this project is derived from the publicly available "Our World in Data" COVID-19 vaccination dataset. The dataset includes:
- Vaccination records by country and state.
- Age group data for vaccinated individuals.
- Manufacturer-wise vaccine administration data.

For more information, see [Our World in Data - COVID-19 Vaccinations](https://github.com/owid/covid-19-data).

### How to Run the Project

1. **Set Up SQLite**:
   - Install SQLite Studio or any SQLite viewer.
   - Open the `Vaccinations.db` file to access the database.

2. **Run SQL Queries**:
   - Open the `Queries.sql` file in SQLite Studio or a similar tool.
   - Execute the queries to retrieve the results.

3. **View Visualizations**:
   - After retrieving the results from the SQL queries, use tools such as Excel or Google Charts to visualize the data as described in `Queries.pdf`.
