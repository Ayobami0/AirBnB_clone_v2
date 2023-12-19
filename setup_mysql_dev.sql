-- SETTING UP THE DEV SQL PROFILE
--The script that doess the same
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
USE hbnb_dev_db;
REVOKE ALL PRIVILEGES ON *.* FROM 'hbnb_dev'@'localhost'
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO hbnb_dev@localhost;
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@localhost;
FLUSH PRIVILEGES;
