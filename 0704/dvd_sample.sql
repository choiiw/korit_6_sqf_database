SELECT * FROM study.dvd_tb;


-- publisher
insert into dvd_publisher_tb
select
	0,
	dvd_publisher
from 
	dvd_tb
group by
	dvd_publisher;
    
-- producer
insert into producer_tb
select
	0,
	producer
from 
	dvd_tb
group by
	producer;
    
    

    
    
    
update dvd_tb as dt
    left outer join producer_tb as p on(p.producer_name = dt.producer)
    left outer join dvd_publisher_tb as dp on(dp.dvd_publisher_name = dt.dvd_publisher)
set
    producerID = p.producer_id,
    dvd_publisherID = if(dt.dvd_publisher = "", null, dp.dvd_publisher_id);

    
    
select 
	*
from
	dvd_tb
where
	producerID is null
    or dvd_publisherID is null;
