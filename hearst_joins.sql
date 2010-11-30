connect hearst_challenge;

drop table vdset;

create table vdset 
select store_vd.*, sales_vd.title_key, issue_mo.* ,
wholesaler_mo.city as wholesaler_city,
wholesaler_mo.ST as wholesaler_state
from store_vd, sales_vd, issue_mo, wholesaler_mo where 
store_vd.store_key = sales_vd.store_key and 
store_vd.chain_key = sales_vd.chain_key and 
sales_vd.issue_key = issue_mo.issue_key and 
wholesaler_mo.wholesaler_key = sales_vd.wholesaler_key;
