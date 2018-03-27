/* https://dev.mysql.com/doc/refman/5.6/en/create-table-foreign-keys.html */
ALTER TABLE products
ADD FOREIGN KEY (category_id) REFERENCES categories(id);