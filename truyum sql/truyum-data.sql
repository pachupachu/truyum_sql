use truyum;
insert into menu_item values('Sandwich', 99.00, 'Yes', '2017-03-15','Main Course', 'Yes', 1001);
insert into menu_item values('Burger', 129.00, 'Yes', '2017-12-23','Main Course', 'No', 1002);
insert into menu_item values('Pizza', 149.00, 'Yes', '2017-08-21','Main Course', 'No', 1003);
insert into menu_item values('French Fries', 57.00, 'No', '2017-07-02','Starters', 'Yes', 1004);
insert into menu_item values('Chocolate Brownie', 32.00, 'Yes', '2022-11-02','Dessert', 'Yes', 1005);

select * from menu_item;

select * from menu_item where date_of_launch > 'example' and active_status = 'Yes';

select item_name from menu_item group by item_id;

update menu_item set column_name = 'example' group by item_id;


insert into users values(2002,'Sree');
insert into users values(2003, 'Hari');
insert into cart values(2002, 1001, 3001);
insert into cart values(2002, 1003, 3002);
insert into cart values(2002, 1005, 3003);


select A.item_name, A.price, A.category, A.free_delivery from menu_item A inner join cart B on A.item_id = B.item_id where B.user_id = 2002;
select sum(menu_item.price) from menu_item inner join cart on menu_item.item_id = cart.item_id where cart.user_id = 2002;

delete from cart where user_id = 2002 and item_id = 1005;