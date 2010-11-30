connect hearst_challenge;

truncate sales_mo;
load data local infile 'sales_mo_dataset.csv' into table sales_mo fields terminated by ',' lines terminated by '\n';
/*delete the row that correponds to the csv file*/
delete from sales_mo limit 1;

truncate sales_vd;
load data local infile 'sales_vd_dataset.csv' into table sales_vd fields terminated by ',' lines terminated by '\n';
/*delete the row that correponds to the csv file*/
delete from sales_vd limit 1;

truncate store_mo;
load data local infile 'store_mo_dataset.csv' into table store_mo fields terminated by ',' lines terminated by '\n';
/*delete the row that correponds to the csv file*/
delete from store_mo limit 1;

truncate store_vd;
load data local infile 'store_vd_dataset.csv' into table store_vd fields terminated by ',' lines terminated by '\n';
/*delete the row that correponds to the csv file*/
delete from store_vd limit 1;

truncate wholesaler_mo;
load data local infile 'wholesaler_mo_dataset.csv' into table wholesaler_mo fields terminated by ',' lines terminated by '\n';
/*delete the row that correponds to the csv file*/
delete from wholesaler_mo limit 1;

truncate issue_mo;
load data local infile 'issue_mo_dataset.csv' into table issue_mo fields terminated by ',' lines terminated by '\n';
/*delete the row that correponds to the csv file*/
delete from issue_mo limit 1;
