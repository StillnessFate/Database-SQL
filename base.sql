CREATE TABLE reservation(
	id INT AUTO_INCREMENT primary key,
	time DATE,
	type_id INT NOT NULL,
	room_number INT NOT NULL,
	manager_id INT NOT NULL,
	guest_id INT NOT NULL,
	num_of_guest INT,
	check_in DATE,
	check_out DATE,
	payment_id INT,
	state INT,
	memo TEXT,
	successful INT
);


CREATE TABLE reservation_type(
	id INT AUTO_INCREMENT primary key,
	name VARCHAR(30)
);

CREATE TABLE payment(
	id INT AUTO_INCREMENT primary key,
	type_id INT,
	price INT NOT NULL
);

CREATE TABLE payment_details(
	payment_id INT AUTO_INCREMENT primary key,
	contents VARCHAR(30),
	item_price INT
);

CREATE TABLE payment_type(
	id INT AUTO_INCREMENT primary key,
	name VARCHAR(30)
);

CREATE TABLE employee_information(
	id INT AUTO_INCREMENT primary key,
	name VARCHAR(30),
	sex VARCHAR(20),
	date_of_birth DATE,
	date_of_join DATE,
	date_of_leave DATE,
	contact_phone VARCHAR(30),
	contact_email VARCHAR(40),
	address VARCHAR(40),
	type_id INT,
	position_id INT,
	area VARCHAR(30),
	salary INT,
	language VARCHAR(30)

);



CREATE TABLE guest_information(
	id INT AUTO_INCREMENT primary key,
	name VARCHAR(30),
	sex VARCHAR(20),
	date_of_birth DATE,
	contact_phone VARCHAR(30),
	contact_email VARCHAR(40),
	address VARCHAR(40),
	country VARCHAR(30),
	language VARCHAR(30),
	belong VARCHAR(30),
	type_id INT NOT NULL,
	smoking BOOLEAN,
	memo TEXT
);


CREATE TABLE room_information(
	room_number INT NOT NULL,
	type_id INT,
	floor INT,
	state_in_room BOOLEAN,
	state_cleaned BOOLEAN,
	state_transaction INT,
	target_temperature DOUBLE(4,1),
	target_humidity DOUBLE(4,1)
);


CREATE TABLE room_type(
	id INT AUTO_INCREMENT primary key,
	name varchar(30),
	capacity INT,
	smoking BOOLEAN,
	price INT
);

CREATE TABLE room_equipment(
	room_number INT,
	equipment_id INT,
	count INT
);


CREATE TABLE equipment(
	id INT AUTO_INCREMENT primary key,
	name VARCHAR(30),
	type INT,
	count INT,
	seller VARCHAR(30)
);

CREATE TABLE equipment_log(
	id INT AUTO_INCREMENT primary key,
	time DATE,
	room_number INT,
	equipment_id INT,
	count INT,
	type INT,
	reason TEXT
);


CREATE TABLE keycard(
	id INT AUTO_INCREMENT primary key,
	type_id INT,
	room_number INT,
	guest_id INT
);



CREATE TABLE keycard_type(
	id INT AUTO_INCREMENT primary key,
	name VARCHAR(30)
);


CREATE TABLE room_temperature_log(
	id INT AUTO_INCREMENT primary key,
	time DATE,
	room_number INT,
	temperature DOUBLE(4,1),
	humidity DOUBLE(4,1)
);

CREATE TABLE membership_type(
	id INT AUTO_INCREMENT primary key,
	name VARCHAR(30)
);

CREATE TABLE membership(
	guest_id INT,
	type_id INT,
	start DATE,
	end DATE,
	point INT
);


CREATE TABLE employee_type(
	id INT AUTO_INCREMENT primary key,
	name VARCHAR(30)
);

CREATE TABLE employee_position(
	id INT AUTO_INCREMENT primary key,
	name VARCHAR(30)
);


CREATE TABLE attendance(
	id INT AUTO_INCREMENT primary key,
	employee_id INT,
	work_start_time DATE,
	work_end_time DATE
);


CREATE TABLE complain(
	id INT AUTO_INCREMENT primary key,
	manager_id INT,
	guest_id INT,
	type_id INT,
	contents TEXT,
	completed BOOLEAN
);

CREATE TABLE guest_type(
	id INT AUTO_INCREMENT primary key,
	name VARCHAR(30)
);

CREATE TABLE complain_type(
	id INT AUTO_INCREMENT primary key,
	name VARCHAR(30)
);

CREATE TABLE reservation_log(
	id INT AUTO_INCREMENT primary key,
	time DATE,
	type_id INT,
	room_number INT,
	manager_id INT,
	guest_id INT,
	num_of_guest INT,
	check_in DATE,
	check_out DATE,
	price INT,
	state INT,
	memo TEXT,
	successful INT
);

CREATE TABLE account (
	id int(11) NOT NULL AUTO_INCREMENT,
	user_id varchar(50) NOT NULL,
	user_pwd varchar(50) NOT NULL,
	user_key int(11) DEFAULT NULL,
	PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
