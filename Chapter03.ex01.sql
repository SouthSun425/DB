/* 195p 연습문제 */

/* 1-1 도서번호가 1인 도서의 이름 */
select bookname from book where bookid = 1;
/* 가격이 20,000원 이상인 도서의 이름 */
select bookname from book where price >= 20000;
/* 박지성의 총 구매액 */
select sum(saleprice) from orders where custid=1;
select sum(saleprice) from customer orders where customer.custid=orders.custid and customer.name like '박지성';    //(3-2) 박지성의 총 구매액2
select count(*) from orders where custid=1; //(4)

// 2번
select count(*) from book;  //(1)
select count(distinct publisher) from book; //(2)
select name, address from customer; //(3)
select * from orders where orderdate between to_date('2020-07-04','YYYY-MM-DD') and to_date('2020-07-07','YYYY-MM-DD'); //(4)
select * from orders where orderdate not between to_date('2014-07-04','YYYY-MM-DD') and to_date('2014-07-07','YYYY-MM-DD'); //(5)
select name, address from customer where name like '김%';    //(6)
select name, address from customer where name like '김%아';   //(7)