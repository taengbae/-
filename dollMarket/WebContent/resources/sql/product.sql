create table if not exists product(
	p_id VARCHAR(10) NOT NULL,
	p_name VARCHAR(20),
	p_unitPrice  INTEGER,
	p_description TEXT,
   	p_category VARCHAR(20),
	p_manufacturer VARCHAR(20),
	p_unitsInStock LONG,
	p_condition VARCHAR(20),
	p_fileName  VARCHAR(20),
	PRIMARY KEY (p_id)
)default CHARSET=utf8;

desc product;
select * from product;
delete from product where p_id='P0006';
update product set p_name='폼폼푸린 25주년 마스코트 스트랩' where p_name='폼폼푸린 스트랩';