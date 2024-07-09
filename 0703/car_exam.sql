select * from car_tb;

insert into `study`.`car_tb` 
	(car_id, car_name, car_color, product_date)
	values
    (0, "k5", "black", now());
    
insert into `car_tb` 
	(car_id, car_name, car_color, product_date)
	values
    (0, "k3", "red", now());
    
insert into car_tb
	values
    (0, "k7", "white", now()),
    (0, "k9", "green", now()),
    (0, "qm6", "blue", now());
    
truncate table car_tb;
    
    
    
    