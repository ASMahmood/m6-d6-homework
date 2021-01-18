# STEPS TO IMPORT DATA

- be sure pgAdmin postgres service is running

- clone repo

- npm install

- go to .env file set your password

- npm run setup

# HOMEWORK PART 2

 ** IMPORTANT : WRITE YOUR SQL QUERIES IN A FILE answers.sql and run test your queries on pg admin , tutors will check your answers.sql file to see your  answers ** 


- Write a query to select all the customers from Germany

- Update all customers who has UK value in country field, set their country as United Kingdom

- Remove all customers who has fax number null

- Add yourself and 5 more customers to database

- Select all customers who has contact_title as Sales Representative

- Update company_name to Linkedin for the customer who has customer_id BOTTM

- Select all customers who has region null and country USA

- Delete all customers who has postal_code 1734

- Select all customers who has contact_title Owner

- Select only company_name , contact_name, contact_title from the customers who has country as Brazil

- Select and use alias to change contact_name to name and contact_title to title for the customers who has country Finland

- Delete customers who has city value Lyon

- Update all null region values to 'Unknown'

# HOMEWORK PART 3

- Prepare Article table set all data types correctly (same fields with previous mongo schema, without references)
- Prepare Author table set all data types correctly (same fields with previous mongo schema, without references)
- Prepare Reviews table set all data types correctly (same fields with previous mongo schema, without references)
