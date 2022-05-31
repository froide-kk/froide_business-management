Enter password: 
mysqldump: Got error: 1045: Access denied for user 'root'@'localhost' (using password: YES) when trying to connect

CREATE TABLE name_age_list(
    id INT(11) AUTO_INCREMENT NOT NULL,
    name VARCHAR(30) NOT NULL ,
    age INT(3) NOT NULL,
    PRIMARY KEY (id));