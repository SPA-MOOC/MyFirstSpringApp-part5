SET SQL_SAFE_UPDATES = 0;

delete from Store_User;
delete from Item;
delete from OrderData;
delete from Order_Item;
delete from Category;



insert into Store_User (name)
values ('user1');
insert into Store_User (name)
values ('user2');
insert into Store_User (name)
values ('user3');

insert into Category (name)
values ('dairy');
insert into Category (name)
values ('snacks');
insert into Category (name)
values ('fruits');
insert into Category (name)
values ('vegetables');



insert into Item (name, price, category)
values ('yoghurt',2.33,1);

insert into Item (name, price, category)
values ('milk',2.53,1);

insert into Item (name, price, category)
values ('mars',3.45,2);

insert into Item (name, price, category)
values ('apple',5.99,3);


insert into OrderData(order_date,store_user_id)
values ('2022-03-15',1);

insert into order_item(order_id,item_id)
values (1,1);

insert into order_item(order_id,item_id)
values (1,3);

insert into order_item(order_id,item_id)
values (1,4);