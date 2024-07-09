SELECT * FROM study.student_tb;

select
    sub_tb.*
from
(select 
	rank() over(partition by class order by score desc) as `rank`,
    student_name,
    class,
    score
from
	student_tb) as sub_tb
where
	`rank` = 1;