create table tripaccount(
	id varchar2(12) primary key,
	password varchar2(12) not null,
	name varchar2(50) not null,
	email varchar2(30) not null,
	address varchar2(50) not null,
	gender char(1),
	CONSTRAINT check_gender CHECK (gender IN ('M', 'F')),
	accountType number(2) not null, --1 : 관리자, 2 : 사업자, 3 : 일반회원 
	CONSTRAINT check_type CHECK (accountType IN (1, 2, 3)),
	birthday DATE
);

drop table tripaccount