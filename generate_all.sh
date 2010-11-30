#!/bin/sh

echo "creating tables"
mysql -u root --password=$1 < create_tables.sql
echo "loading data"
mysql -u root --password=$1 < load_data.sql
echo "massaging the data"
mysql -u root --password=$1 < massage_tables.sql
echo "creating indexes"
mysql -u root --password=$1 < create_indexes.sql
echo "doing joins"
mysql -u root --password=$1 < hearst_joins.sql
