/*���� 3-23*/
select name, saleprice from Customer, Orders where Customer.custid=Orders.custid;

/*���� 3-24*/
select name, SUM(saleprice) from customer, orders where customer.custid=order.custid group by customer.name order by customer.name;

/*������ ������ �� �ִ� �� ���̵� ã��*/
select custid from Orders;

/*�� ���̵� �ش��ϴ� �� �̸� ã��*/
select name from Customer where custid IN(1,2,3,4);

/*������ ������ ���� �ִ� ���� �̸�*/
select name from Customer where custid IN(select custid from Orders);

/*���ǻ纰�� ���ǻ��� ��� ���� ���ݺ��� ��� ������ ���Ͻÿ�*/
select b1.bookname from Book b1 where b1.price > (select avg(b2.price) from Book b2 where b2.publisher=b1.publisher);


/* 1-5 �������� ������ ������ ���ǻ� ��*/
SELECT count(DISTINCT publisher) FROM Customer, Orders, Book
WHERE (Customer.custid=Orders.custid) AND (Book.bookid=Orders.bookid) AND (Customer.name='������');

// 1-6 �������� ������ ������ �̸�, ����, ������ �ǸŰ����� ����
SELECT bookname, price, price-saleprice FROM Customer, Orders, Book
WHERE (Customer.custid=Orders.custid) AND (Book.bookid=Orders.bookid) AND (Customer.name='������');

// 1-7 �������� �������� ���� ������ �̸�
SELECT bookname FROM Book, Orders, Customer MINUS SELECT booknmae FROM Book, Orders, Customer
WHERE (Customer.custid=Orders.custid) AND (Book.bookid=Orders.bookid) AND (Customer.name='������');

// 2-9 �ֹ� �ݾ��� �Ѿװ� �ֹ��� ��� �ݾ�
SELECT sum(saleprice), avg(saleprice) FROM Orders;

// 2-10 ���� �̸��� ���� ���ž�
SELECT name, sum(saleprice) FROM Orders, Customer WHERE Orders.custid=Customer.custid GROUP BY name;

// 2-11 ���� �̸��� ���� ������ ���� ���
SELECT name, bookname FROM Book, Orders, Customer WHERE Orders.bookid=Book.bookid AND Orders.custid=Customer.custid;

// 2-12 ������ ����(Book ���̺�)�� �ǸŰ���(Orders ���̺�)�� ���̰� ���� ���� �ֹ�
SELECT * FROM Book, Orders WHERE Book.bookid=Orders.bookid AND price-saleprice=(SELECT max(price-saleprice) FROM Book, Orders WHERE Book.bookid=Orders.bookid);

// 2-13 ������ �Ǹž� ��պ��� �ڽ��� ���ž� ����� �� ���� ���� �̸�
SELECT name FROM Customer, Orders WHERE Customer.custid=Orders.custid GROUP BY name HAVING avg(saleprice) > (SELECT avg(saleprice) FROM Orders);