/*HOMEWORK PART 2*/

/*Write a query to select all the customers from Germany*/
SELECT * FROM public.customers WHERE country='Germany'

/*Update all customers who has UK value in country field, set their country as United Kingdom*/
UPDATE public.customers SET country='United Kingdom' WHERE country='UK'

/*Remove all customers who has fax number null*/
DELETE FROM public.customers WHERE fax IS NULL

/*Add yourself and 5 more customers to database*/
INSERT INTO public.customers (customer_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax) VALUES('BADCO', 'Bad Company', 'Abdul', 'Master of Memes', 'Point Nemo 69', 'Lundun', null, '80085', 'Tibet', '666-6969', '555-8008')

/*Select all customers who has contact_title as Sales Representative*/
SELECT * FROM public.customers WHERE contact_title='Sales Representative'

/*Update company_name to Linkedin for the customer who has customer_id BOTTM*/
UPDATE public.customers SET company_name='Linkedin' WHERE customer_id='BOTTM'

/*Select all customers who has region null and country USA*/
SELECT * FROM public.customers WHERE region IS NULL AND country='USA'

/*Delete all customers who has postal_code 1734*/
DELETE FROM public.customers WHERE postal_code='1734'

/*Select all customers who has contact_title Owner*/
SELECT * FROM public.customers WHERE contact_title='Owner'

/*Select only company_name , contact_name, contact_title from the customers who has country as Brazil*/
SELECT company_name, contact_name, contact_title FROM public.customers WHERE country='Brazil'

/*Select and use alias to change contact_name to name and contact_title to title for the customers who has country Finland*/
SELECT contact_name AS name, contact_title AS title FROM public.customers WHERE country='Finland'

/*Delete customers who has city value Lyon*/
DELETE FROM public.customers WHERE city='Lyon'

/*Update all null region values to 'Unknown'*/
UPDATE public.customers SET region='Unknown' WHERE region IS NULL