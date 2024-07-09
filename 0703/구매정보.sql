SELECT 
m.구매번호, pn.상품명, s.사이즈명, c.색상명, pn.가격, st.상태명, u.구매자이름, g.성별 
FROM 
	구매정보 m
 left outer join 상품 as p on(p.상품번호 = m.상품번호)
 left outer join 상품명 as pn on(pn.상품명번호 = p.상품명번호)
 left outer join 사이즈 as s on(s.사이즈번호 = p.사이즈번호)
 left outer join 색상 as c on(c.색상번호 = p.색상번호)
 left outer join 상태 as st on(st.상태번호 = m.상태번호)
 left outer join 구매자 as u on(u.구매자번호 = m.구매자번호)
 left outer join 성별 as g on(g.성별번호 = u.성별번호);