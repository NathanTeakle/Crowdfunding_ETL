-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [campaign] (
    [cf_id] VARCHAR(255)  NOT NULL ,
    [contact_id] INTEGER  NOT NULL ,
    [company_name] VARCHAR(255)  NOT NULL ,
    [description] TEXT  NOT NULL ,
    [goal] DECIMAL  NOT NULL ,
    [pledged] DECIMAL  NOT NULL ,
    [outcome] VARCHAR(255)  NOT NULL ,
    [backers_count] INTEGER  NOT NULL ,
    [country] VARCHAR(255)  NOT NULL ,
    [currency] VARCHAR(255)  NOT NULL ,
    [launched_date] DATE  NOT NULL ,
    [end_date] DATE  NOT NULL ,
    [category_id] INTEGER  NOT NULL ,
    [subcategory_id] INTEGER  NOT NULL 
)

CREATE TABLE [category] (
    [category_id] INTEGER  NOT NULL ,
    [category] INTEGER  NOT NULL 
)

CREATE TABLE [contacts] (
    [contact_id] INTEGER  NOT NULL ,
    [first_name] VARCHAR(255)  NOT NULL ,
    [last_name] VARCHAR(255)  NOT NULL ,
    [email] VARCHAR(255)  NOT NULL 
)

CREATE TABLE [subcategory] (
    [subcategory_id] INTEGER  NOT NULL ,
    [category] INTEGER  NOT NULL 
)

ALTER TABLE [campaign] WITH CHECK ADD CONSTRAINT [FK_campaign_category_id] FOREIGN KEY([category_id])
REFERENCES [category] ([category_id])

ALTER TABLE [campaign] CHECK CONSTRAINT [FK_campaign_category_id]

ALTER TABLE [campaign] WITH CHECK ADD CONSTRAINT [FK_campaign_subcategory_id] FOREIGN KEY([subcategory_id])
REFERENCES [subcategory] ([subcategory_id])

ALTER TABLE [campaign] CHECK CONSTRAINT [FK_campaign_subcategory_id]

ALTER TABLE [contacts] WITH CHECK ADD CONSTRAINT [FK_contacts_contact_id] FOREIGN KEY([contact_id])
REFERENCES [campaign] ([contact_id])

ALTER TABLE [contacts] CHECK CONSTRAINT [FK_contacts_contact_id]

COMMIT TRANSACTION QUICKDBD