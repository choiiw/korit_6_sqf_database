SELECT * FROM study.study_sample;

insert into study_sample
 values 
 ("김준일", "국어, 수학", 10000 + 20000),
 ("김준이", "국어, 영어, 과학", 10000 + 30000 + 40000),
 ("김준삼", "국어, 과학", 10000 + 40000);
 
 truncate study_sample;
 
 # 정규화 (Normalization) 
 
 # 제 1정규형 (1NF - 1 Normal Form) -> 하나의 컬럼에는 하나의 값만 들어간다. 
insert into study_sample
 values 
 ("김준일", "국어", 10000),
 ("김준일", "수학", 20000),
 ("김준이", "국어", 10000),
 ("김준이", "영어", 30000),
 ("김준이", "과학", 40000),
 ("김준삼", "국어", 10000),
 ("김준삼", "과학", 40000);
 
 # 제 2정규형 (2NF) -> 부분 종속성(Partial Dependency)을 제거해야한다.
 # Partial Dependency란?
 # Composite Primary Key를 가진 데이터를 의미한다. 
 # Primary Key -> 기본키 
 
 insert into course_register_list
 values 
 ("김준일", "국어"),
 ("김준일", "수학"),
 ("김준이", "국어"),
 ("김준이", "영어"),
 ("김준이", "과학"),
 ("김준삼", "국어"),
 ("김준삼", "과학");
 
insert into course_list
 values 
 ("국어", 10000, "홍길동"),
 ("수학", 20000, "김영자"),
 ("영어", 30000, "이숙자"),
 ("과학", 40000, "박영구");
 
 
insert into course_price
 values 
 ("국어", 10000),
 ("수학", 20000),
 ("영어", 30000),
 ("과학", 40000);
 
insert into instructor_list
 values 
 ("국어", "홍길동"),
 ("수학", "김영자"),
 ("영어", "이숙자"),
 ("과학", "박영구");
 

 