-- SCHEMA: crowdfunding_db
-- DROP SCHEMA IF EXISTS crowdfunding_db ;
CREATE SCHEMA IF NOT EXISTS crowdfunding_db
    AUTHORIZATION postgres;
	
COMMENT ON SCHEMA crowdfunding_db
    IS 'Project2 - Nathan and Cameron';
	
CREATE TABLE campaign (
    cf_id VARCHAR(255) NOT NULL,
    contact_id INTEGER NOT NULL,
    company_name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    goal DECIMAL NOT NULL,
    pledged DECIMAL NOT NULL,
    outcome VARCHAR(255) NOT NULL,
    backers_count INTEGER NOT NULL,
    country VARCHAR(255) NOT NULL,
    currency VARCHAR(255) NOT NULL,
    launched_date DATE NOT NULL,
    end_date DATE NOT NULL,
    category_id VARCHAR(255) NOT NULL,
    subcategory_id VARCHAR(255) NOT NULL
);

CREATE TABLE category (
    category_id VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL
);

CREATE TABLE contacts (
    contact_id VARCHAR(255)  NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL
);

Select*From subcategory
Select*From contacts
Select*From category
Select*From campaign