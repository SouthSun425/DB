/*마당서점 도서의 총수*/
SELECT count(*)
FROM Book;
/*마당서점에 도서를 출고하는 출판사의 총수*/
select count(distinct publisher) from book;
/*모든 고객의 이름, 주소*/
select name, address from 
/*2020년 7월4일~7월7일 사이에 주문받은 도서의 주문번호*//*마당 서점 도서의 총수*/
select count(*) from book;

/*마당서점에 도서를 출고하는 출판사의 총수*/
select count(distinct publisher) from book;

/*모든 고객의 이름, 주소*/
select name, address from customer;

/*2020년 7월4일~7월7일 사이에 주문받은 도서의 주문번호*/
select * from orders where orderdate between to_date('2020-07-04','YYYY-MM-DD') and to_date('2020-07-07','YYYY-MM-DD');

/*2020년 7월4일~7월9일 사이에 주문받은 도서를 제외한 도서의 주문번호*/
select * from orders where orderdate not between to_date('2020-07-04','YYYY-MM-DD') and to_date('2020-07-09','YYYY-MM-DD');

/*성이 '김'씨인 고객의 이름과 주소*/
select name, address from customer where name like '김%';

/*성이 '김'씨이고 이름이 '이'로 끝나는 고객의 이름과 주소*/
select name, address from customer where name like '김%아';

/*2020년 7월4일~7월9일 사이에 주문받은 도서를 제외한 도서의 주문번호*/
/*성이 '김'씨인 고객의 이름과 주소*/
select name,address from customer where name like
/*성이 '김'씨이고 이름이 '이'로 끝나는 고객의 이름과 주소*/