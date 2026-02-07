/*
======================================================================================
DDL Script: Creates Bronze Tables
======================================================================================
Script Purpose:
This script creates the Bronze schema and drops tables if they already exist.
Run this script to re-define the DDL structure of 'bronze' tables.
=====================================================================================
*/

IF OBJECT_ID ('Bronze.crm_cust_info' , 'U') IS NOT NULL
	DROP TABLE Bronze.crm_cust_info;
CREATE Table Bronze.crm_cust_info(
cst_id Int,
cst_key NVARCHAR(50),
cst_firstname NVARCHAR(50),
cst_lastname NVARCHAR(50),
cst_marital_status NVARCHAR(50),
cst_gndr NVARCHAR(50),
cst_create_date DATE
);

IF OBJECT_ID ('Bronze.crm_prod_info' , 'U') IS NOT NULL
	DROP TABLE Bronze.crm_prod_info;
CREATE TABLE Bronze.crm_prod_info(
prd_id INT,
prd_key NVARCHAR(50),
prd_name NVARCHAR(50),
prd_cost INT,
prd_line NVARCHAR(50),
prd_start_dt DATETIME,
prd_end_dt DATETIME
);

IF OBJECT_ID ('Bronze.crm_sales_details' , 'U') IS NOT NULL
	DROP TABLE Bronze.crm_sales_details;
CREATE TABLE Bronze.crm_sales_details(
sls_ord_num NVARCHAR(50),
sls_prod_key NVARCHAR(50),
sls_cust_id INT,
sls_order_dt INT,
sls_ship_dt INT,
sls_due_dt INT,
sls_sales INT,
sls_quantity INT,
sls_price INT
);

IF OBJECT_ID ('Bronze.erp_custAZ12' , 'U') IS NOT NULL
	DROP TABLE Bronze.erp_custAZ12;
CREATE TABLE Bronze.erp_custAZ12(
cid NVARCHAR(50),
bdate DATE,
gen NVARCHAR(50)
);

IF OBJECT_ID ('Bronze.erp_loc_A101' , 'U') IS NOT NULL
	DROP TABLE Bronze.erp_loc_A101;
CREATE TABLE Bronze.erp_loc_A101(
cid NVARCHAR(50),
cntry NVARCHAR(50)
);

IF OBJECT_ID ('Bronze.erp_px_cat_G1V2' , 'U') IS NOT NULL
	DROP TABLE Bronze.erp_px_cat_G1V2;
CREATE TABLE Bronze.erp_px_cat_G1V2(
id NVARCHAR(50),
cat NVARCHAR(50),
subcat NVARCHAR(50),
maintenance NVARCHAR(50)
);
