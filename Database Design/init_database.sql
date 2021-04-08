CREATE TABLE `user`(
	wechat_id VARCHAR(40) PRIMARY KEY,
    privilege VARCHAR(10),
    user_QR_str VARCHAR(100),
    phone_number VARCHAR(11),
    real_name VARCHAR(20)
)ENGINE=InnoDB;

CREATE TABLE `port`(
	port_id INT PRIMARY KEY AUTO_INCREMENT,
    longitude DOUBLE,
    latitude DOUBLE,
    port_QR_str_in VARCHAR(100),
    port_QR_str_out VARCHAR(100),
    description VARCHAR(30)
)ENGINE=InnoDB;

CREATE TABLE `record`(
	record_id INT PRIMARY KEY AUTO_INCREMENT,
    wechat_id VARCHAR(40),
    port_id INT,
    FOREIGN KEY (wechat_id) REFERENCES user(wechat_id)
     on delete cascade on update cascade, 
    FOREIGN KEY (port_id) REFERENCES port(port_id)
     on delete cascade on update cascade, 
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP , 
    status VARCHAR(10)
)ENGINE=InnoDB;

CREATE TABLE `admin`(
	admin_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(100),
    password_hash VARCHAR(200)
)ENGINE=InnoDB;