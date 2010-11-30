connect hearst_challenge;

delete from sales_mo where sales < 0;

alter table issue_mo add column ondate date after ON_SALE_DATE;
update issue_mo set ondate = str_to_date(ON_SALE_DATE,"%m/%d/%Y");
alter table issue_mo add column onyrmth int(11) after ondate;
update issue_mo set onyrmth = year(ondate) * 100 + month(ondate);

alter table issue_mo add column offdate date after OFF_SALE_DATE;
update issue_mo set offdate = str_to_date(OFF_SALE_DATE,"%m/%d/%Y");
alter table issue_mo add column offyrmth int(11) after offdate;
update issue_mo set offyrmth = year(offdate) * 100 + month(offdate);

