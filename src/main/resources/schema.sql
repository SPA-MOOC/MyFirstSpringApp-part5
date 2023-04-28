create table if not exists Item (
    id int not null auto_increment,
    name varchar(50) not null,
    price  double not null,
    category int not null,
    PRIMARY KEY (id)
);

create table if not exists Category (
    id int not null auto_increment,
    name varchar(20) not null,
    PRIMARY KEY (id)
);

create table if not exists Store_User (
    id int not null auto_increment,
    name varchar(20) not null,
    PRIMARY KEY (id)
);

create table if not exists OrderData (
    id int not null auto_increment,
    order_date timestamp not null,
    store_user_id int not null,
    PRIMARY KEY (id)
);



create table if not exists Order_Item (
    id int not null auto_increment,
    order_id int,
    item_id int,
    PRIMARY KEY (id)
);


alter table Item
add foreign key (category) references Category(id);
alter table OrderData
add foreign key (store_user_id) references Store_User(id);
alter table Order_Item
add foreign key (order_id) references OrderData(id);
alter table Order_Item
add foreign key (item_id) references Item(id);

