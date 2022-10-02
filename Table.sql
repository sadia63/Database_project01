 CREATE TABLE CUSTOMER(
CUSTOMER_ID VARCHAR(20) PRIMARY KEY,
CUSTOMER_NAME VARCHAR(30),
CUSTOMER_ADDRESS VARCHAR(40),
CUSTOMER_PHONE_NUMBER VARCHAR(10)
);

CREATE TABLE MENU(
COFFEE_CODE INTEGER PRIMARY KEY,
COFFEE_NAME VARCHAR(35),
PRICE DECIMAL(4,2)
);

CREATE TABLE ORDER_(
ORDER_ID VARCHAR(10) PRIMARY KEY,
ORDER_NUMBER INTEGER,
COFFEE_CODE INTEGER,
QUANTITY INTEGER,
CUSTOMER_ID VARCHAR(20),
FOREIGN KEY (COFFEE_CODE) REFERENCES MENU(COFFEE_CODE), FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID)
);


CREATE TABLE PAYMENT_METHOD(
CUSTOMER_ID VARCHER(20),
TRANSACTION_ID VARCHAR(30) PRIMARY KEY,
PAYMENT_TYPE VARCHAR(40),
PAYMENT_DATE DATE,
ORDER_ID VARCHAR(10),
FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMER(CUSTOMER_ID), FOREIGN KEY (ORDER_ID) REFERENCES ORDER (ORDER_ID)
);




