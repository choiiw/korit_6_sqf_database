# 데이터 삽입(DML -INSERT)
select * from student_tb;

# insert into `study`.`student_tb` Database가 use되지 않은 경우 
# insert into `student_tb` Database가 use상태인 경우
insert into student_tb
	(student_id, student_name, phone, email, admission_date)
 values
	(0, "김준일", "010-0000-0000", "rkr@naver.com", now());
    
insert into student_tb
	(student_id, student_name, phone, email, admission_date)
 values
	(0, "김준이", "010-1111-1111", "ewr@naver.com", now()),
	(0, "김준삼", "010-2222-2222", "ewr@naver.com", now()),
	(0, "김준사", "010-3333-3333", "ewr@naver.com", now());
 
insert into student_tb
	(student_id, student_name, phone, email, introduce, admission_date)
 values
	(0, "김준오", "010-0000-0000", "rkr@naver.com", null, now());
    
insert into student_tb
	(student_id,  phone, email, introduce,student_name, admission_date)
 values
	(0,  "010-0000-0000", "rkr@naver.com", null, "김준육", now());
    
insert into student_tb
 values
	(0, "김준칠", "010-0000-0000", "rkr@naver.com", null, now());