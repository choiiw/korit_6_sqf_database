SELECT * FROM score_tb;
select * from master_view;

call usp_add_master("이병안", "010-8888-8888");

select @@autocommit;
set @@autocommit = 0;

set @total =0;
call usp_mod_score("이병안", 90, "a", 80, @total);

select @total;

set @number = 10;
call usp_square(@number);
select @number;


select
	add_number(10,20);