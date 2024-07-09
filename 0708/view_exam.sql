-- 마스터 테이블 뷰
create view master_view as 
select
	mt.master_id,
    jt1.name,
    st.kor,
    st.eng,
    st.math,
    jt2.phone
from 
	master_tb mt
    left outer join join1_tb jt1 on(jt1.join1_id = mt.name_id)
    left outer join score_tb st on(st.name_id = jt1.join1_id)
    left outer join join2_tb jt2 on(jt2.join2_id = mt.phone_id);
    



