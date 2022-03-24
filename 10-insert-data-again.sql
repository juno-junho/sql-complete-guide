INSERT INTO employers(company_name, company_address, yearly_revenue, is_hiring) VALUES ('Google', 'California, USA','100.5',TRUE);
INSERT INTO employers(company_name, company_address, yearly_revenue) VALUES ('APPLE', 'California, USA','50.345');
INSERT INTO employers(company_name, company_address, yearly_revenue, is_hiring) 
VALUES ('Learning Inc', 'Educationstreet 12, London',0.87,TRUE);
INSERT INTO employers(company_name, company_address, yearly_revenue) 
VALUES ('Big Oil Inc', 'Slipperystreet 110, Houston',112.55);
INSERT INTO employers(company_name, company_address, yearly_revenue, is_hiring) 
VALUES ('Hipster Food', 'Avocadostreet 5, Berlin',6.12,TRUE);

INSERT INTO conversations(user_name, employer_name, message) 
VALUES('Max Schwarz', 'Learning Inc', 'Hi, I like Learning!');