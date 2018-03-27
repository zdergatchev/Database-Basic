ALTER TABLE users
CHANGE COLUMN last_login_time last_login_time DATETIME 
DEFAULT NOW();
/* https://dev.mysql.com/doc/refman/5.7/en/alter-table.html */

/*
ALTER TABLE users
CHANGE COLUMN last_login_time last_login_time TIMESTAMP 
DEFAULT CURRENT_TIMESTAMP;
*/