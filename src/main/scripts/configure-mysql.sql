## Command used for mySql inside docker container
# docker run --name mysqldb -p 3306:3306 -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -d mysql

# connect to mysql and run as root user
# Create DataBases
CREATE DATABASE sfg_dev;
CREATE DATABASE sfg_prod;

# Create database service accounts
CREATE USER 'sfg_dev_user'@'localhost' IDENTIFIED by 'mihai';
CREATE USER 'sfg_prod_user'@'localhost' IDENTIFIED by 'mihai';
CREATE USER 'sfg_dev_user'@'%' IDENTIFIED by 'mihai';
CREATE USER 'sfg_prod_user'@'%' IDENTIFIED by 'mihai';

# Database grants
GRANT SELECT on sfg_dev.* to 'sfg_dev_user'@'localhost';
GRANT INSERT on sfg_dev.* to 'sfg_dev_user'@'localhost';
GRANT DELETE on sfg_dev.* to 'sfg_dev_user'@'localhost';
GRANT UPDATE on sfg_dev.* to 'sfg_dev_user'@'localhost';
GRANT SELECT on sfg_prod.* to 'sfg_prod_user'@'localhost';
GRANT INSERT on sfg_prod.* to 'sfg_prod_user'@'localhost';
GRANT DELETE on sfg_prod.* to 'sfg_prod_user'@'localhost';
GRANT UPDATE on sfg_prod.* to 'sfg_prod_user'@'localhost';
GRANT SELECT on sfg_dev.* to 'sfg_dev_user'@'%';
GRANT INSERT on sfg_dev.* to 'sfg_dev_user'@'%';
GRANT DELETE on sfg_dev.* to 'sfg_dev_user'@'%';
GRANT UPDATE on sfg_dev.* to 'sfg_dev_user'@'%';
GRANT SELECT on sfg_prod.* to 'sfg_prod_user'@'%';
GRANT INSERT on sfg_prod.* to 'sfg_prod_user'@'%';
GRANT DELETE on sfg_prod.* to 'sfg_prod_user'@'%';
GRANT UPDATE on sfg_prod.* to 'sfg_prod_user'@'%';
