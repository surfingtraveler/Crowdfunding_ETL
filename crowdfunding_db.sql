-- creating 'Category' table
CREATE TABLE Category (
  category_id VARCHAR(8) NOT NULL PRIMARY KEY,
  category VARCHAR(20) NOT NULL
);

-- creating 'Subcategory' table
CREATE TABLE Subcategory (
  subcategory_id VARCHAR(15) NOT NULL PRIMARY KEY,
  subcategory VARCHAR(35) NOT NULL
);

-- creating 'Contacts' table
CREATE TABLE Contacts (
  contact_id INTEGER NOT NULL PRIMARY KEY,
  first_name VARCHAR(25) NOT NULL,
  last_name VARCHAR(25) NOT NULL,
  email VARCHAR(60) NOT NULL
);

-- creating 'Campaign' table
CREATE TABLE Campaign (
  cf_id INTEGER NOT NULL PRIMARY KEY,
  contact_id INTEGER NOT NULL,
  company_name VARCHAR(50) NOT NULL,
  description VARCHAR(100) NOT NULL,
  goal FLOAT NOT NULL,
  pledged FLOAT NOT NULL,
  outcome VARCHAR(100) NOT NULL,
  backers_count INTEGER NOT NULL,
  country VARCHAR(50) NOT NULL,
  currency VARCHAR(50) NOT NULL,
  launched_date DATE NOT NULL,
  end_date DATE NOT NULL,
  category_id VARCHAR(8) NOT NULL,
  subcategory_id VARCHAR(15) NOT NULL,
  FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
  FOREIGN KEY (category_id) REFERENCES Category(category_id),
  FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);

-- viewing the tables 

SELECT * FROM Campaign;
SELECT * FROM Category;	
SELECT * FROM Subcategory;
SELECT * FROM Contacts;
