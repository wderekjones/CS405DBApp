CREATE TABLE Customer(
    cust_id integer NOT NULL PRIMARY KEY,
    name varchar(30),
    age integer,
    address varchar(100),
    phone varchar(20),
    vip boolean
);

CREATE TABLE Item(
    item_id integer NOT NULL PRIMARY KEY,
    item_type varchar(20)
);

CREATE TABLE Staff(
    staff_id integer NOT NULL PRIMARY KEY,
    name varchar(30),
    age integer,
    address varchar(100)
);


CREATE TABLE Orders(
    order_id integer NOT NULL PRIMARY KEY,
    c_id integer,
    s_id integer,
    i_id integer,
    amount float,
    orderDate date,
    orderStatus boolean,
    
    FOREIGN KEY (c_id) REFERENCES Customer(cust_id),
    FOREIGN KEY (s_id) REFERENCES Staff(staff_id),
    FOREIGN KEY (i_id) REFERENCES Item(item_id)
    
);


