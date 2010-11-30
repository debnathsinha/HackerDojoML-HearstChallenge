-- create all databases needed for the competition

drop database if exists hearst_challenge;

create database hearst_challenge;
	
connect hearst_challenge;

-- validation

create table sales_vd (
	wholesaler_key int not null, 
	chain_key int not null, 
	store_key int not null, 
	issue_key int not null, 
	title_key int not null
	);

create table store_vd (
	chain_key int,
	store_key int,
	city varchar(255),
	ctry varchar(255),
	or_cot_desc varchar(255),
	zip_code int,
	zip_4 int,
	state varchar(255),
	store_number int,
	chain_or_cot_desc varchar(255),
	households int,
	individuals int,
	occupation_prof_technical int,
	occupation_sales_service int,
	occupation_farm_related int,
	occupation_blue_collar int,
	occupation_other int,
	occupation_retired int,
	occupation_unknown int,
	education_high_school_diploma int,
	education_some_college int,
	education_bachelor_degree int,
	education_graduate_degree int,
	education_less_than_high_school int,
	education_unknown int,
	age_18 int,
	age_19 int,
	age_20 int,
	age_21 int,
	age_22_to_24 int,
	age_25_to_29 int,
	age_30_to_34 int,
	age_35_to_39 int,
	age_40_to_44 int,
	age_45_to_49 int,
	age_50_to_54 int,
	age_55_to_59 int,
	age_60_to_64 int,
	age_65_to_69 int,
	age_70_to_75 int,
	age_75_ int,
	age_unknown int,
	gender_male int,
	gender_female int,
	gender_both int,
	gender_unknown int,
	marital_status_yes int,
	marital_status_no int,
	marital_status_unknown int,
	hsehld_status_head_of_household int,
	hsehld_status_spouse int,
	hsehld_status_young_adult int,
	hsehld_status_elderly_individua int,
	hsehld_status_other_adult int,
	income_under__15000 int,
	income__15000_to__24999 int,
	income__25000_to__34999 int,
	income__35000_to__49999 int,
	income__50000_to__74999 int,
	income__75000_to__99999 int,
	income__100000_to__124999 int,
	income__125000_to__149999 int,
	income__150000_to__174999 int,
	income__175000_to__199999 int,
	income__200000_to__249999 int,
	income__250000_ int,
	income_unknown int,
	homeowner int,
	renter int,
	homeowner_unknown int,
	dwelling_type_single_family_sfd int,
	dwelling_type_multi_fam_condo int,
	dwelling_type_marginal_multi_fa int,
	dwelling_type_po_box int,
	dwelling_type_unknown int,
	length_of_residence_under_1_yr int,
	length_of_residence_1_yr int,
	length_of_residence_2_to_5_yrs int,
	length_of_residence_6_to_10_yrs int,
	length_of_residence_10__yrs int,
	length_of_residence_unknown int,
	dwelling_size___1_unit int,
	dwelling_size___2_units int,
	dwelling_size___3_units int,
	dwelling_size___4_units int,
	dwelling_size___5_to_9_units int,
	dwelling_size___10_to_19_units int,
	dwelling_size___20_to_49_units int,
	dwelling_size___50_to_100_units int,
	dwelling_size___100__units int,
	dwelling_size___unknown int,
	mvh___under__101000 int,
	mvh____101000_to__200000 int,
	mvh____201000_to__300000 int,
	mvh____301000_to__500000 int,
	mvh____501000_to__999999 int,
	mvh____1000000_ int,
	mvh___unknown int,
	summarized_area_lvl_statistics_a DECIMAL(7,2),
	summarized_area_lvl_statistics_b DECIMAL(7,2),
	summarized_area_lvl_statistics_c DECIMAL(7,2),
	summarized_area_lvl_statistics_d DECIMAL(7,2),
	summarized_area_lvl_statistics_e DECIMAL(7,2),
	summarized_area_lvl_statistics_f DECIMAL(7,2),
	summarized_area_lvl_statistics_g DECIMAL(7,2),
	summarized_area_lvl_statistics_h DECIMAL(7,2),
	number_of_vehicles_in_zip_zip_4 int,
	number_of_hhs_with_a_vehicle int,
	number_of_hhs_without_a_vehicle int,
	number_of_new_cars int,
	number_of_new_light_trucks int,
	number_of_used_cars int,
	number_of_used_light_trucks int,
	avg_vehicle_msrp int,
	avg_current_vehicle_retail_valu int,
	mystery_element_a varchar(1),
	mystery_element_b int
	);

create table template_vd (
	store_key int not null, 
	title_key int not null, 
	yearmonth varchar(6) not null, 
	sales_total decimal(10,10)
	);

-- model

create table issue_mo (
	issue_key int not null primary key,
	CAN_COV_PRC DECIMAL(7,2),
	ISS_CD int,
	US_COV_PRC DECIMAL(7,2),
	ON_SALE_DATE VARCHAR(255),
	OFF_SALE_DATE VARCHAR(255)
	);

create table sales_mo (
	wholesaler_key int not null,
	chain_key int not null,
	store_key int not null,
	issue_key int not null,
	dollar_volume decimal(10,10),
	draw int,
	returns int,
	sales int,
	title_key int
	);

create table store_mo (
	chain_key int,
	store_key int,
	city varchar(255),
	ctry varchar(255),
	or_cot_desc varchar(255),
	zip_code int,
	zip_4 int,
	state varchar(255),
	store_number int,
	chain_or_cot_desc varchar(255),
	households int,
	individuals int,
	occupation_prof_technical int,
	occupation_sales_service int,
	occupation_farm_related int,
	occupation_blue_collar int,
	occupation_other int,
	occupation_retired int,
	occupation_unknown int,
	education_high_school_diploma int,
	education_some_college int,
	education_bachelor_degree int,
	education_graduate_degree int,
	education_less_than_high_school int,
	education_unknown int,
	age_18 int,
	age_19 int,
	age_20 int,
	age_21 int,
	age_22_to_24 int,
	age_25_to_29 int,
	age_30_to_34 int,
	age_35_to_39 int,
	age_40_to_44 int,
	age_45_to_49 int,
	age_50_to_54 int,
	age_55_to_59 int,
	age_60_to_64 int,
	age_65_to_69 int,
	age_70_to_75 int,
	age_75_ int,
	age_unknown int,
	gender_male int,
	gender_female int,
	gender_both int,
	gender_unknown int,
	marital_status_yes int,
	marital_status_no int,
	marital_status_unknown int,
	hsehld_status_head_of_household int,
	hsehld_status_spouse int,
	hsehld_status_young_adult int,
	hsehld_status_elderly_individua int,
	hsehld_status_other_adult int,
	income_under__15000 int,
	income__15000_to__24999 int,
	income__25000_to__34999 int,
	income__35000_to__49999 int,
	income__50000_to__74999 int,
	income__75000_to__99999 int,
	income__100000_to__124999 int,
	income__125000_to__149999 int,
	income__150000_to__174999 int,
	income__175000_to__199999 int,
	income__200000_to__249999 int,
	income__250000_ int,
	income_unknown int,
	homeowner int,
	renter int,
	homeowner_unknown int,
	dwelling_type_single_family_sfd int,
	dwelling_type_multi_fam_condo int,
	dwelling_type_marginal_multi_fa int,
	dwelling_type_po_box int,
	dwelling_type_unknown int,
	length_of_residence_under_1_yr int,
	length_of_residence_1_yr int,
	length_of_residence_2_to_5_yrs int,
	length_of_residence_6_to_10_yrs int,
	length_of_residence_10__yrs int,
	length_of_residence_unknown int,
	dwelling_size___1_unit int,
	dwelling_size___2_units int,
	dwelling_size___3_units int,
	dwelling_size___4_units int,
	dwelling_size___5_to_9_units int,
	dwelling_size___10_to_19_units int,
	dwelling_size___20_to_49_units int,
	dwelling_size___50_to_100_units int,
	dwelling_size___100__units int,
	dwelling_size___unknown int,
	mvh___under__101000 int,
	mvh____101000_to__200000 int,
	mvh____201000_to__300000 int,
	mvh____301000_to__500000 int,
	mvh____501000_to__999999 int,
	mvh____1000000_ int,
	mvh___unknown int,
	summarized_area_lvl_statistics_a DECIMAL(7,2),
	summarized_area_lvl_statistics_b DECIMAL(7,2),
	summarized_area_lvl_statistics_c DECIMAL(7,2),
	summarized_area_lvl_statistics_d DECIMAL(7,2),
	summarized_area_lvl_statistics_e DECIMAL(7,2),
	summarized_area_lvl_statistics_f DECIMAL(7,2),
	summarized_area_lvl_statistics_g DECIMAL(7,2),
	summarized_area_lvl_statistics_h DECIMAL(7,2),
	number_of_vehicles_in_zip_zip_4 int,
	number_of_hhs_with_a_vehicle int,
	number_of_hhs_without_a_vehicle int,
	number_of_new_cars int,
	number_of_new_light_trucks int,
	number_of_used_cars int,
	number_of_used_light_trucks int,
	avg_vehicle_msrp int,
	avg_current_vehicle_retail_valu int,
	mystery_element_a varchar(1),
	mystery_element_b int
	);
	
create table wholesaler_mo (
	wholesaler_key int not null primary key,
	CITY varchar(255),
	ST varchar(255)
	);
	
create table zip_plus4_data1 (
  ZIP_CODE INT,
  ZIP_4 INT,
  HOUSEHOLDS INT,
  INDIVIDUALS INT,
  OCCUPATION_PROF_TECHNICAL INT,
  OCCUPATION_SALES_SERVICE INT,
  OCCUPATION_FARM_RELATED INT,
  OCCUPATION_BLUE_COLLAR INT,
  OCCUPATION_OTHER INT,
  OCCUPATION_RETIRED INT,
  OCCUPATION_UNKNOWN INT,
  EDUCATION_HIGH_SCHOOL_DIPLOMA INT,
  EDUCATION_SOME_COLLEGE INT,
  EDUCATION_BACHELOR_DEGREE INT,
  EDUCATION_GRADUATE_DEGREE INT,
  EDUCATION_LESS_THAN_HIGH_SCHOOL INT,
  EDUCATION_UNKNOWN INT,
  AGE_18 INT,
  AGE_19 INT,
  AGE_20 INT,
  AGE_21 INT,
  AGE_22_TO_24 INT,
  AGE_25_TO_29 INT,
  AGE_30_TO_34 INT,
  AGE_35_TO_39 INT,
  AGE_40_TO_44 INT,
  AGE_45_TO_49 INT,
  AGE_50_TO_54 INT,
  AGE_55_TO_59 INT,
  AGE_60_TO_64 INT,
  AGE_65_TO_69 INT,
  AGE_70_TO_75 INT,
  AGE_75_ INT,
  AGE_UNKNOWN INT,
  GENDER_MALE INT,
  GENDER_FEMALE INT,
  GENDER_BOTH INT,
  GENDER_UNKNOWN INT,
  MARITAL_STATUS_YES INT,
  MARITAL_STATUS_NO INT,
  MARITAL_STATUS_UNKNOWN INT,
  HSEHLD_STATUS_HEAD_OF_HOUSEHOLD INT,
  HSEHLD_STATUS_SPOUSE INT,
  HSEHLD_STATUS_YOUNG_ADULT INT,
  HSEHLD_STATUS_ELDERLY_INDIVIDUA INT,
  HSEHLD_STATUS_OTHER_ADULT INT,
  INCOME_UNDER__15000 INT,
  INCOME__15000_TO__24999 INT,
  INCOME__25000_TO__34999 INT,
  INCOME__35000_TO__49999 INT,
  INCOME__50000_TO__74999 INT,
  INCOME__75000_TO__99999 INT,
  INCOME__100000_TO__124999 INT,
  INCOME__125000_TO__149999 INT,
  INCOME__150000_TO__174999 INT,
  INCOME__175000_TO__199999 INT,
  INCOME__200000_TO__249999 INT,
  INCOME__250000_ INT,
  INCOME_UNKNOWN INT,
  HOMEOWNER INT,
  RENTER INT,
  HOMEOWNER_UNKNOWN INT,
  DWELLING_TYPE_SINGLE_FAMILY_SFD INT,
  DWELLING_TYPE_MULTI_FAM_CONDO INT,
  DWELLING_TYPE_MARGINAL_MULTI_FA INT,
  DWELLING_TYPE_PO_BOX INT,
  DWELLING_TYPE_UNKNOWN INT,
  LENGTH_OF_RESIDENCE_UNDER_1_YR INT,
  LENGTH_OF_RESIDENCE_1_YR INT,
  LENGTH_OF_RESIDENCE_2_TO_5_YRS INT,
  LENGTH_OF_RESIDENCE_6_TO_10_YRS INT,
  LENGTH_OF_RESIDENCE_10__YRS INT,
  LENGTH_OF_RESIDENCE_UNKNOWN INT,
  DWELLING_SIZE___1_UNIT INT,
  DWELLING_SIZE___2_UNITS INT,
  DWELLING_SIZE___3_UNITS INT,
  DWELLING_SIZE___4_UNITS INT,
  DWELLING_SIZE___5_TO_9_UNITS INT,
  DWELLING_SIZE___10_TO_19_UNITS INT,
  DWELLING_SIZE___20_TO_49_UNITS INT,
  DWELLING_SIZE___50_TO_100_UNITS INT,
  DWELLING_SIZE___100__UNITS INT,
  DWELLING_SIZE___UNKNOWN INT,
  MVH___UNDER__101000 INT,
  MVH____101000_TO__200000 INT,
  MVH____201000_TO__300000 INT,
  MVH____301000_TO__500000 INT,
  MVH____501000_TO__999999 INT,
  MVH____1000000_ INT,
  MVH___UNKNOWN INT,
  SUMMARIZED_AREA_LVL_STATISTICS_A DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_B DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_C DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_D DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_E DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_F DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_G DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_H DECIMAL(7,2),
  NUMBER_OF_VEHICLES_IN_ZIP_ZIP_4 INT,
  NUMBER_OF_HHS_WITH_A_VEHICLE INT,
  NUMBER_OF_HHS_WITHOUT_A_VEHICLE INT,
  NUMBER_OF_NEW_CARS INT,
  NUMBER_OF_NEW_LIGHT_TRUCKS INT,
  NUMBER_OF_USED_CARS INT,
  NUMBER_OF_USED_LIGHT_TRUCKS INT,
  AVG_VEHICLE_MSRP INT,
  AVG_CURRENT_VEHICLE_RETAIL_VALU INT,
  MYSTERY_ELEMENT_A INT,
  MYSTERY_ELEMENT_B INT
);

create table zip_plus4_data2 (
  ZIP_CODE INT,
  ZIP_4 INT,
  HOUSEHOLDS INT,
  INDIVIDUALS INT,
  OCCUPATION_PROF_TECHNICAL INT,
  OCCUPATION_SALES_SERVICE INT,
  OCCUPATION_FARM_RELATED INT,
  OCCUPATION_BLUE_COLLAR INT,
  OCCUPATION_OTHER INT,
  OCCUPATION_RETIRED INT,
  OCCUPATION_UNKNOWN INT,
  EDUCATION_HIGH_SCHOOL_DIPLOMA INT,
  EDUCATION_SOME_COLLEGE INT,
  EDUCATION_BACHELOR_DEGREE INT,
  EDUCATION_GRADUATE_DEGREE INT,
  EDUCATION_LESS_THAN_HIGH_SCHOOL INT,
  EDUCATION_UNKNOWN INT,
  AGE_18 INT,
  AGE_19 INT,
  AGE_20 INT,
  AGE_21 INT,
  AGE_22_TO_24 INT,
  AGE_25_TO_29 INT,
  AGE_30_TO_34 INT,
  AGE_35_TO_39 INT,
  AGE_40_TO_44 INT,
  AGE_45_TO_49 INT,
  AGE_50_TO_54 INT,
  AGE_55_TO_59 INT,
  AGE_60_TO_64 INT,
  AGE_65_TO_69 INT,
  AGE_70_TO_75 INT,
  AGE_75_ INT,
  AGE_UNKNOWN INT,
  GENDER_MALE INT,
  GENDER_FEMALE INT,
  GENDER_BOTH INT,
  GENDER_UNKNOWN INT,
  MARITAL_STATUS_YES INT,
  MARITAL_STATUS_NO INT,
  MARITAL_STATUS_UNKNOWN INT,
  HSEHLD_STATUS_HEAD_OF_HOUSEHOLD INT,
  HSEHLD_STATUS_SPOUSE INT,
  HSEHLD_STATUS_YOUNG_ADULT INT,
  HSEHLD_STATUS_ELDERLY_INDIVIDUA INT,
  HSEHLD_STATUS_OTHER_ADULT INT,
  INCOME_UNDER__15000 INT,
  INCOME__15000_TO__24999 INT,
  INCOME__25000_TO__34999 INT,
  INCOME__35000_TO__49999 INT,
  INCOME__50000_TO__74999 INT,
  INCOME__75000_TO__99999 INT,
  INCOME__100000_TO__124999 INT,
  INCOME__125000_TO__149999 INT,
  INCOME__150000_TO__174999 INT,
  INCOME__175000_TO__199999 INT,
  INCOME__200000_TO__249999 INT,
  INCOME__250000_ INT,
  INCOME_UNKNOWN INT,
  HOMEOWNER INT,
  RENTER INT,
  HOMEOWNER_UNKNOWN INT,
  DWELLING_TYPE_SINGLE_FAMILY_SFD INT,
  DWELLING_TYPE_MULTI_FAM_CONDO INT,
  DWELLING_TYPE_MARGINAL_MULTI_FA INT,
  DWELLING_TYPE_PO_BOX INT,
  DWELLING_TYPE_UNKNOWN INT,
  LENGTH_OF_RESIDENCE_UNDER_1_YR INT,
  LENGTH_OF_RESIDENCE_1_YR INT,
  LENGTH_OF_RESIDENCE_2_TO_5_YRS INT,
  LENGTH_OF_RESIDENCE_6_TO_10_YRS INT,
  LENGTH_OF_RESIDENCE_10__YRS INT,
  LENGTH_OF_RESIDENCE_UNKNOWN INT,
  DWELLING_SIZE___1_UNIT INT,
  DWELLING_SIZE___2_UNITS INT,
  DWELLING_SIZE___3_UNITS INT,
  DWELLING_SIZE___4_UNITS INT,
  DWELLING_SIZE___5_TO_9_UNITS INT,
  DWELLING_SIZE___10_TO_19_UNITS INT,
  DWELLING_SIZE___20_TO_49_UNITS INT,
  DWELLING_SIZE___50_TO_100_UNITS INT,
  DWELLING_SIZE___100__UNITS INT,
  DWELLING_SIZE___UNKNOWN INT,
  MVH___UNDER__101000 INT,
  MVH____101000_TO__200000 INT,
  MVH____201000_TO__300000 INT,
  MVH____301000_TO__500000 INT,
  MVH____501000_TO__999999 INT,
  MVH____1000000_ INT,
  MVH___UNKNOWN INT,
  SUMMARIZED_AREA_LVL_STATISTICS_A DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_B DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_C DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_D DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_E DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_F DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_G DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_H DECIMAL(7,2),
  NUMBER_OF_VEHICLES_IN_ZIP_ZIP_4 INT,
  NUMBER_OF_HHS_WITH_A_VEHICLE INT,
  NUMBER_OF_HHS_WITHOUT_A_VEHICLE INT,
  NUMBER_OF_NEW_CARS INT,
  NUMBER_OF_NEW_LIGHT_TRUCKS INT,
  NUMBER_OF_USED_CARS INT,
  NUMBER_OF_USED_LIGHT_TRUCKS INT,
  AVG_VEHICLE_MSRP INT,
  AVG_CURRENT_VEHICLE_RETAIL_VALU INT,
  MYSTERY_ELEMENT_A INT,
  MYSTERY_ELEMENT_B INT
);

create table zip_plus4_data3 (
  ZIP_CODE INT,
  ZIP_4 INT,
  HOUSEHOLDS INT,
  INDIVIDUALS INT,
  OCCUPATION_PROF_TECHNICAL INT,
  OCCUPATION_SALES_SERVICE INT,
  OCCUPATION_FARM_RELATED INT,
  OCCUPATION_BLUE_COLLAR INT,
  OCCUPATION_OTHER INT,
  OCCUPATION_RETIRED INT,
  OCCUPATION_UNKNOWN INT,
  EDUCATION_HIGH_SCHOOL_DIPLOMA INT,
  EDUCATION_SOME_COLLEGE INT,
  EDUCATION_BACHELOR_DEGREE INT,
  EDUCATION_GRADUATE_DEGREE INT,
  EDUCATION_LESS_THAN_HIGH_SCHOOL INT,
  EDUCATION_UNKNOWN INT,
  AGE_18 INT,
  AGE_19 INT,
  AGE_20 INT,
  AGE_21 INT,
  AGE_22_TO_24 INT,
  AGE_25_TO_29 INT,
  AGE_30_TO_34 INT,
  AGE_35_TO_39 INT,
  AGE_40_TO_44 INT,
  AGE_45_TO_49 INT,
  AGE_50_TO_54 INT,
  AGE_55_TO_59 INT,
  AGE_60_TO_64 INT,
  AGE_65_TO_69 INT,
  AGE_70_TO_75 INT,
  AGE_75_ INT,
  AGE_UNKNOWN INT,
  GENDER_MALE INT,
  GENDER_FEMALE INT,
  GENDER_BOTH INT,
  GENDER_UNKNOWN INT,
  MARITAL_STATUS_YES INT,
  MARITAL_STATUS_NO INT,
  MARITAL_STATUS_UNKNOWN INT,
  HSEHLD_STATUS_HEAD_OF_HOUSEHOLD INT,
  HSEHLD_STATUS_SPOUSE INT,
  HSEHLD_STATUS_YOUNG_ADULT INT,
  HSEHLD_STATUS_ELDERLY_INDIVIDUA INT,
  HSEHLD_STATUS_OTHER_ADULT INT,
  INCOME_UNDER__15000 INT,
  INCOME__15000_TO__24999 INT,
  INCOME__25000_TO__34999 INT,
  INCOME__35000_TO__49999 INT,
  INCOME__50000_TO__74999 INT,
  INCOME__75000_TO__99999 INT,
  INCOME__100000_TO__124999 INT,
  INCOME__125000_TO__149999 INT,
  INCOME__150000_TO__174999 INT,
  INCOME__175000_TO__199999 INT,
  INCOME__200000_TO__249999 INT,
  INCOME__250000_ INT,
  INCOME_UNKNOWN INT,
  HOMEOWNER INT,
  RENTER INT,
  HOMEOWNER_UNKNOWN INT,
  DWELLING_TYPE_SINGLE_FAMILY_SFD INT,
  DWELLING_TYPE_MULTI_FAM_CONDO INT,
  DWELLING_TYPE_MARGINAL_MULTI_FA INT,
  DWELLING_TYPE_PO_BOX INT,
  DWELLING_TYPE_UNKNOWN INT,
  LENGTH_OF_RESIDENCE_UNDER_1_YR INT,
  LENGTH_OF_RESIDENCE_1_YR INT,
  LENGTH_OF_RESIDENCE_2_TO_5_YRS INT,
  LENGTH_OF_RESIDENCE_6_TO_10_YRS INT,
  LENGTH_OF_RESIDENCE_10__YRS INT,
  LENGTH_OF_RESIDENCE_UNKNOWN INT,
  DWELLING_SIZE___1_UNIT INT,
  DWELLING_SIZE___2_UNITS INT,
  DWELLING_SIZE___3_UNITS INT,
  DWELLING_SIZE___4_UNITS INT,
  DWELLING_SIZE___5_TO_9_UNITS INT,
  DWELLING_SIZE___10_TO_19_UNITS INT,
  DWELLING_SIZE___20_TO_49_UNITS INT,
  DWELLING_SIZE___50_TO_100_UNITS INT,
  DWELLING_SIZE___100__UNITS INT,
  DWELLING_SIZE___UNKNOWN INT,
  MVH___UNDER__101000 INT,
  MVH____101000_TO__200000 INT,
  MVH____201000_TO__300000 INT,
  MVH____301000_TO__500000 INT,
  MVH____501000_TO__999999 INT,
  MVH____1000000_ INT,
  MVH___UNKNOWN INT,
  SUMMARIZED_AREA_LVL_STATISTICS_A DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_B DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_C DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_D DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_E DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_F DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_G DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_H DECIMAL(7,2),
  NUMBER_OF_VEHICLES_IN_ZIP_ZIP_4 INT,
  NUMBER_OF_HHS_WITH_A_VEHICLE INT,
  NUMBER_OF_HHS_WITHOUT_A_VEHICLE INT,
  NUMBER_OF_NEW_CARS INT,
  NUMBER_OF_NEW_LIGHT_TRUCKS INT,
  NUMBER_OF_USED_CARS INT,
  NUMBER_OF_USED_LIGHT_TRUCKS INT,
  AVG_VEHICLE_MSRP INT,
  AVG_CURRENT_VEHICLE_RETAIL_VALU INT,
  MYSTERY_ELEMENT_A INT,
  MYSTERY_ELEMENT_B INT
);

create table zip_plus4_data4 (
  ZIP_CODE INT,
  ZIP_4 INT,
  HOUSEHOLDS INT,
  INDIVIDUALS INT,
  OCCUPATION_PROF_TECHNICAL INT,
  OCCUPATION_SALES_SERVICE INT,
  OCCUPATION_FARM_RELATED INT,
  OCCUPATION_BLUE_COLLAR INT,
  OCCUPATION_OTHER INT,
  OCCUPATION_RETIRED INT,
  OCCUPATION_UNKNOWN INT,
  EDUCATION_HIGH_SCHOOL_DIPLOMA INT,
  EDUCATION_SOME_COLLEGE INT,
  EDUCATION_BACHELOR_DEGREE INT,
  EDUCATION_GRADUATE_DEGREE INT,
  EDUCATION_LESS_THAN_HIGH_SCHOOL INT,
  EDUCATION_UNKNOWN INT,
  AGE_18 INT,
  AGE_19 INT,
  AGE_20 INT,
  AGE_21 INT,
  AGE_22_TO_24 INT,
  AGE_25_TO_29 INT,
  AGE_30_TO_34 INT,
  AGE_35_TO_39 INT,
  AGE_40_TO_44 INT,
  AGE_45_TO_49 INT,
  AGE_50_TO_54 INT,
  AGE_55_TO_59 INT,
  AGE_60_TO_64 INT,
  AGE_65_TO_69 INT,
  AGE_70_TO_75 INT,
  AGE_75_ INT,
  AGE_UNKNOWN INT,
  GENDER_MALE INT,
  GENDER_FEMALE INT,
  GENDER_BOTH INT,
  GENDER_UNKNOWN INT,
  MARITAL_STATUS_YES INT,
  MARITAL_STATUS_NO INT,
  MARITAL_STATUS_UNKNOWN INT,
  HSEHLD_STATUS_HEAD_OF_HOUSEHOLD INT,
  HSEHLD_STATUS_SPOUSE INT,
  HSEHLD_STATUS_YOUNG_ADULT INT,
  HSEHLD_STATUS_ELDERLY_INDIVIDUA INT,
  HSEHLD_STATUS_OTHER_ADULT INT,
  INCOME_UNDER__15000 INT,
  INCOME__15000_TO__24999 INT,
  INCOME__25000_TO__34999 INT,
  INCOME__35000_TO__49999 INT,
  INCOME__50000_TO__74999 INT,
  INCOME__75000_TO__99999 INT,
  INCOME__100000_TO__124999 INT,
  INCOME__125000_TO__149999 INT,
  INCOME__150000_TO__174999 INT,
  INCOME__175000_TO__199999 INT,
  INCOME__200000_TO__249999 INT,
  INCOME__250000_ INT,
  INCOME_UNKNOWN INT,
  HOMEOWNER INT,
  RENTER INT,
  HOMEOWNER_UNKNOWN INT,
  DWELLING_TYPE_SINGLE_FAMILY_SFD INT,
  DWELLING_TYPE_MULTI_FAM_CONDO INT,
  DWELLING_TYPE_MARGINAL_MULTI_FA INT,
  DWELLING_TYPE_PO_BOX INT,
  DWELLING_TYPE_UNKNOWN INT,
  LENGTH_OF_RESIDENCE_UNDER_1_YR INT,
  LENGTH_OF_RESIDENCE_1_YR INT,
  LENGTH_OF_RESIDENCE_2_TO_5_YRS INT,
  LENGTH_OF_RESIDENCE_6_TO_10_YRS INT,
  LENGTH_OF_RESIDENCE_10__YRS INT,
  LENGTH_OF_RESIDENCE_UNKNOWN INT,
  DWELLING_SIZE___1_UNIT INT,
  DWELLING_SIZE___2_UNITS INT,
  DWELLING_SIZE___3_UNITS INT,
  DWELLING_SIZE___4_UNITS INT,
  DWELLING_SIZE___5_TO_9_UNITS INT,
  DWELLING_SIZE___10_TO_19_UNITS INT,
  DWELLING_SIZE___20_TO_49_UNITS INT,
  DWELLING_SIZE___50_TO_100_UNITS INT,
  DWELLING_SIZE___100__UNITS INT,
  DWELLING_SIZE___UNKNOWN INT,
  MVH___UNDER__101000 INT,
  MVH____101000_TO__200000 INT,
  MVH____201000_TO__300000 INT,
  MVH____301000_TO__500000 INT,
  MVH____501000_TO__999999 INT,
  MVH____1000000_ INT,
  MVH___UNKNOWN INT,
  SUMMARIZED_AREA_LVL_STATISTICS_A DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_B DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_C DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_D DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_E DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_F DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_G DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_H DECIMAL(7,2),
  NUMBER_OF_VEHICLES_IN_ZIP_ZIP_4 INT,
  NUMBER_OF_HHS_WITH_A_VEHICLE INT,
  NUMBER_OF_HHS_WITHOUT_A_VEHICLE INT,
  NUMBER_OF_NEW_CARS INT,
  NUMBER_OF_NEW_LIGHT_TRUCKS INT,
  NUMBER_OF_USED_CARS INT,
  NUMBER_OF_USED_LIGHT_TRUCKS INT,
  AVG_VEHICLE_MSRP INT,
  AVG_CURRENT_VEHICLE_RETAIL_VALU INT,
  MYSTERY_ELEMENT_A INT,
  MYSTERY_ELEMENT_B INT
);

create table zip_plus4_data5 (
  ZIP_CODE INT,
  ZIP_4 INT,
  HOUSEHOLDS INT,
  INDIVIDUALS INT,
  OCCUPATION_PROF_TECHNICAL INT,
  OCCUPATION_SALES_SERVICE INT,
  OCCUPATION_FARM_RELATED INT,
  OCCUPATION_BLUE_COLLAR INT,
  OCCUPATION_OTHER INT,
  OCCUPATION_RETIRED INT,
  OCCUPATION_UNKNOWN INT,
  EDUCATION_HIGH_SCHOOL_DIPLOMA INT,
  EDUCATION_SOME_COLLEGE INT,
  EDUCATION_BACHELOR_DEGREE INT,
  EDUCATION_GRADUATE_DEGREE INT,
  EDUCATION_LESS_THAN_HIGH_SCHOOL INT,
  EDUCATION_UNKNOWN INT,
  AGE_18 INT,
  AGE_19 INT,
  AGE_20 INT,
  AGE_21 INT,
  AGE_22_TO_24 INT,
  AGE_25_TO_29 INT,
  AGE_30_TO_34 INT,
  AGE_35_TO_39 INT,
  AGE_40_TO_44 INT,
  AGE_45_TO_49 INT,
  AGE_50_TO_54 INT,
  AGE_55_TO_59 INT,
  AGE_60_TO_64 INT,
  AGE_65_TO_69 INT,
  AGE_70_TO_75 INT,
  AGE_75_ INT,
  AGE_UNKNOWN INT,
  GENDER_MALE INT,
  GENDER_FEMALE INT,
  GENDER_BOTH INT,
  GENDER_UNKNOWN INT,
  MARITAL_STATUS_YES INT,
  MARITAL_STATUS_NO INT,
  MARITAL_STATUS_UNKNOWN INT,
  HSEHLD_STATUS_HEAD_OF_HOUSEHOLD INT,
  HSEHLD_STATUS_SPOUSE INT,
  HSEHLD_STATUS_YOUNG_ADULT INT,
  HSEHLD_STATUS_ELDERLY_INDIVIDUA INT,
  HSEHLD_STATUS_OTHER_ADULT INT,
  INCOME_UNDER__15000 INT,
  INCOME__15000_TO__24999 INT,
  INCOME__25000_TO__34999 INT,
  INCOME__35000_TO__49999 INT,
  INCOME__50000_TO__74999 INT,
  INCOME__75000_TO__99999 INT,
  INCOME__100000_TO__124999 INT,
  INCOME__125000_TO__149999 INT,
  INCOME__150000_TO__174999 INT,
  INCOME__175000_TO__199999 INT,
  INCOME__200000_TO__249999 INT,
  INCOME__250000_ INT,
  INCOME_UNKNOWN INT,
  HOMEOWNER INT,
  RENTER INT,
  HOMEOWNER_UNKNOWN INT,
  DWELLING_TYPE_SINGLE_FAMILY_SFD INT,
  DWELLING_TYPE_MULTI_FAM_CONDO INT,
  DWELLING_TYPE_MARGINAL_MULTI_FA INT,
  DWELLING_TYPE_PO_BOX INT,
  DWELLING_TYPE_UNKNOWN INT,
  LENGTH_OF_RESIDENCE_UNDER_1_YR INT,
  LENGTH_OF_RESIDENCE_1_YR INT,
  LENGTH_OF_RESIDENCE_2_TO_5_YRS INT,
  LENGTH_OF_RESIDENCE_6_TO_10_YRS INT,
  LENGTH_OF_RESIDENCE_10__YRS INT,
  LENGTH_OF_RESIDENCE_UNKNOWN INT,
  DWELLING_SIZE___1_UNIT INT,
  DWELLING_SIZE___2_UNITS INT,
  DWELLING_SIZE___3_UNITS INT,
  DWELLING_SIZE___4_UNITS INT,
  DWELLING_SIZE___5_TO_9_UNITS INT,
  DWELLING_SIZE___10_TO_19_UNITS INT,
  DWELLING_SIZE___20_TO_49_UNITS INT,
  DWELLING_SIZE___50_TO_100_UNITS INT,
  DWELLING_SIZE___100__UNITS INT,
  DWELLING_SIZE___UNKNOWN INT,
  MVH___UNDER__101000 INT,
  MVH____101000_TO__200000 INT,
  MVH____201000_TO__300000 INT,
  MVH____301000_TO__500000 INT,
  MVH____501000_TO__999999 INT,
  MVH____1000000_ INT,
  MVH___UNKNOWN INT,
  SUMMARIZED_AREA_LVL_STATISTICS_A DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_B DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_C DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_D DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_E DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_F DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_G DECIMAL(7,2),
  SUMMARIZED_AREA_LVL_STATISTICS_H DECIMAL(7,2),
  NUMBER_OF_VEHICLES_IN_ZIP_ZIP_4 INT,
  NUMBER_OF_HHS_WITH_A_VEHICLE INT,
  NUMBER_OF_HHS_WITHOUT_A_VEHICLE INT,
  NUMBER_OF_NEW_CARS INT,
  NUMBER_OF_NEW_LIGHT_TRUCKS INT,
  NUMBER_OF_USED_CARS INT,
  NUMBER_OF_USED_LIGHT_TRUCKS INT,
  AVG_VEHICLE_MSRP INT,
  AVG_CURRENT_VEHICLE_RETAIL_VALU INT,
  MYSTERY_ELEMENT_A INT,
  MYSTERY_ELEMENT_B INT
);