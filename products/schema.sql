/******************************************************************************/
/***          Generated by IBExpert 2021.3.29.1 23.06.2023 7:40:07          ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/***                               Generators                               ***/
/******************************************************************************/

CREATE GENERATOR OUTLET_GENERATOR;

CREATE GENERATOR PRODUCT_GENERATOR;

CREATE GENERATOR WAREHOUSE_GENERATOR;



/******************************************************************************/
/***                               Exceptions                               ***/
/******************************************************************************/

CREATE EXCEPTION OUTLET_EXISTS_ERROR 'Торговая точка по такому адресу уже существует.';

CREATE EXCEPTION OUTLET_NOT_EMPTY_ERROR 'Торговая точка не может быть удалена, так как содержит товары.';

CREATE EXCEPTION PRODUCT_EXISTS_ERROR 'Товар с таким наименованием уже существует.';

CREATE EXCEPTION PRODUCT_NOT_ENOUGH_ERROR 'Товара не достаточно в наличии.';

CREATE EXCEPTION PRODUCT_QUANTITY_NOT_NULL_ERROR 'Количество товара не является нулевым.';

CREATE EXCEPTION WAREHOUSE_EXISTS_ERROR 'Склад по такому адресу уже существует.';

CREATE EXCEPTION WAREHOUSE_NOT_EMPTY_ERROR 'Склад не может быть удален, так как содержит товары.';



/******************************************************************************/
/***                           Stored procedures                            ***/
/******************************************************************************/



SET TERM ^ ;

CREATE PROCEDURE DELETE_OUTLET (
    OUTLET_ID INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE DELETE_OUTLET_PRODUCT (
    OUTLET_PRODUCT_BARCODE INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE DELETE_PRODUCT (
    PRODUCT_ID INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE DELETE_WAREHOUSE (
    WAREHOUSE_ID INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE DELETE_WAREHOUSE_PRODUCT (
    WAREHOUSE_PRODUCT_BARCODE INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE INSERT_OUTLET (
    OUTLET_NAME VARCHAR(25),
    OUTLET_CITY VARCHAR(25),
    OUTLET_STREET VARCHAR(25),
    OUTLET_HOUSE VARCHAR(25))
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE INSERT_OUTLET_PRODUCT (
    OUTLET_PRODUCT_BARCODE INTEGER,
    PRODUCT_QUANTITY INTEGER,
    PRICE NUMERIC(9,2),
    PRODUCT_ID INTEGER,
    OUTLET_ID INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE INSERT_PRODUCT (
    PRODUCT_NAME VARCHAR(25),
    PRODUCT_QUANTITY INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE INSERT_WAREHOUSE (
    WAREHOUSE_CITY VARCHAR(25),
    WAREHOUSE_STREET VARCHAR(25),
    WAREHOUSE_HOUSE VARCHAR(25),
    STOREKEEPER_LAST_NAME VARCHAR(25),
    STOREKEEPER_FIRST_NAME VARCHAR(25),
    STOREKEEPER_MIDDLE_NAME VARCHAR(25))
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE INSERT_WAREHOUSE_PRODUCT (
    WAREHOUSE_PRODUCT_BARCODE INTEGER,
    PRODUCT_QUANTITY INTEGER,
    PRICE NUMERIC(9,2),
    PRODUCT_ID INTEGER,
    WAREHOUSE_ID INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE OUTLET_PRODUCTS_LIST (
    OUTLET_NAME VARCHAR(25))
RETURNS (
    NAME VARCHAR(25),
    QUANTITY INTEGER,
    PRICE NUMERIC(9,2))
AS
BEGIN
  SUSPEND;
END^





CREATE PROCEDURE OUTLET_PRODUCTS_PRICE_RANGE (
    OUTLET_NAME VARCHAR(25),
    PRICE_MIN NUMERIC(9,2),
    PRICE_MAX NUMERIC(9,2))
RETURNS (
    ADDRESS VARCHAR(75),
    NAME VARCHAR(25),
    QUANTITY INTEGER,
    PRICE NUMERIC(9,2))
AS
BEGIN
  SUSPEND;
END^





CREATE PROCEDURE PRODUCTS_AVAILABLE (
    PRODUCT_NAME VARCHAR(25))
RETURNS (
    PLACE_NAME VARCHAR(25),
    ADDRESS VARCHAR(75),
    QUANTITY INTEGER,
    PRICE NUMERIC(9,2))
AS
BEGIN
  SUSPEND;
END^





CREATE PROCEDURE UPDATE_OUTLET (
    OUTLET_ID INTEGER,
    OUTLET_NAME VARCHAR(25),
    OUTLET_CITY VARCHAR(25),
    OUTLET_STREET VARCHAR(25),
    OUTLET_HOUSE VARCHAR(25))
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE UPDATE_OUTLET_PRODUCT (
    OUTLET_PRODUCT_BARCODE INTEGER,
    PRODUCT_QUANTITY INTEGER,
    PRICE NUMERIC(9,2),
    PRODUCT_ID INTEGER,
    OUTLET_ID INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE UPDATE_PRODUCT (
    PRODUCT_ID INTEGER,
    PRODUCT_NAME VARCHAR(25),
    PRODUCT_QUANTITY INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE UPDATE_WAREHOUSE (
    WAREHOUSE_ID INTEGER,
    WAREHOUSE_CITY VARCHAR(25),
    WAREHOUSE_STREET VARCHAR(25),
    WAREHOUSE_HOUSE VARCHAR(25),
    STOREKEEPER_LAST_NAME VARCHAR(25),
    STOREKEEPER_FIRST_NAME VARCHAR(25),
    STOREKEEPER_MIDDLE_NAME VARCHAR(25))
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE UPDATE_WAREHOUSE_PRODUCT (
    WAREHOUSE_PRODUCT_BARCODE INTEGER,
    PRODUCT_QUANTITY INTEGER,
    PRICE NUMERIC(9,2),
    PRODUCT_ID INTEGER,
    WAREHOUSE_ID INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE WAREHOUSE_PRODUCTS_LIST (
    WAREHOUSE_ID INTEGER)
RETURNS (
    NAME VARCHAR(25),
    QUANTITY INTEGER,
    PRICE NUMERIC(9,2))
AS
BEGIN
  SUSPEND;
END^





CREATE PROCEDURE WAREHOUSE_PRODUCTS_PRICE_RANGE (
    WAREHOUSE_ID INTEGER,
    PRICE_MIN NUMERIC(9,2),
    PRICE_MAX NUMERIC(9,2))
RETURNS (
    ADDRESS VARCHAR(75),
    NAME VARCHAR(25),
    QUANTITY INTEGER,
    PRICE NUMERIC(9,2))
AS
BEGIN
  SUSPEND;
END^






SET TERM ; ^



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE OUTLET_PRODUCTS (
    OUTLET_PRODUCT_BARCODE  INTEGER NOT NULL,
    PRODUCT_QUANTITY        INTEGER NOT NULL,
    PRICE                   NUMERIC(9,2) NOT NULL,
    PRODUCT_ID              INTEGER NOT NULL,
    OUTLET_ID               INTEGER NOT NULL,
    TOTAL_COST              COMPUTED BY (price*product_quantity)
);

CREATE TABLE OUTLETS (
    OUTLET_ID       INTEGER NOT NULL,
    OUTLET_NAME     VARCHAR(25) NOT NULL,
    OUTLET_CITY     VARCHAR(25) NOT NULL,
    OUTLET_STREET   VARCHAR(25) NOT NULL,
    OUTLET_HOUSE    VARCHAR(25) NOT NULL,
    OUTLET_ADDRESS  COMPUTED BY (OUTLET_CITY||' '||OUTLET_STREET||' '||OUTLET_HOUSE)
);

CREATE TABLE PRODUCTS (
    PRODUCT_ID        INTEGER NOT NULL,
    PRODUCT_NAME      VARCHAR(25) NOT NULL,
    PRODUCT_QUANTITY  INTEGER NOT NULL
);

CREATE TABLE WAREHOUSE_PRODUCTS (
    WAREHOUSE_PRODUCT_BARCODE  INTEGER NOT NULL,
    PRODUCT_QUANTITY           INTEGER NOT NULL,
    PRICE                      NUMERIC(9,2) NOT NULL,
    PRODUCT_ID                 INTEGER NOT NULL,
    WAREHOUSE_ID               INTEGER NOT NULL,
    TOTAL_COST                 COMPUTED BY (price*product_quantity)
);

CREATE TABLE WAREHOUSES (
    WAREHOUSE_ID             INTEGER NOT NULL,
    WAREHOUSE_CITY           VARCHAR(25) NOT NULL,
    WAREHOUSE_STREET         VARCHAR(25) NOT NULL,
    WAREHOUSE_HOUSE          VARCHAR(25) NOT NULL,
    WAREHOUSE_ADDRESS        COMPUTED BY (WAREHOUSE_CITY||' '||WAREHOUSE_STREET||' '||WAREHOUSE_HOUSE),
    STOREKEEPER_LAST_NAME    VARCHAR(25) NOT NULL,
    STOREKEEPER_FIRST_NAME   VARCHAR(25) NOT NULL,
    STOREKEEPER_MIDDLE_NAME  VARCHAR(25) NOT NULL,
    STOREKEEPER_FULL_NAME    COMPUTED BY (STOREKEEPER_LAST_NAME||' '||STOREKEEPER_FIRST_NAME||' '||STOREKEEPER_MIDDLE_NAME)
);



/******************************************************************************/
/***                                 Views                                  ***/
/******************************************************************************/


/* View: WAREHOUSES_PRODUCTS_LIST */
CREATE VIEW WAREHOUSES_PRODUCTS_LIST(
    WAREHOUSE,
    NAME,
    QUANTITY)
AS
select 'Склад '||cast(WP.warehouse_id as varchar(5)), P.product_name, WP.product_quantity
      from warehouse_products WP
      join products P on WP.product_id=P.product_id
      order by WP.warehouse_id, P.product_name
;



/* View: WAREHOUSES_TOTAL_COST */
CREATE VIEW WAREHOUSES_TOTAL_COST(
    ADDRESS,
    TOTAL_COST)
AS
select W.warehouse_address, sum(WP.total_cost)
  from warehouse_products WP
  join warehouses W on WP.warehouse_id=W.warehouse_id
  group by W.warehouse_address
;




/******************************************************************************/
/***                           Check constraints                            ***/
/******************************************************************************/

ALTER TABLE OUTLET_PRODUCTS ADD CHECK (PRODUCT_QUANTITY>=0);
ALTER TABLE OUTLET_PRODUCTS ADD check (PRICE>0);
ALTER TABLE WAREHOUSE_PRODUCTS ADD check (PRICE>0);
ALTER TABLE WAREHOUSE_PRODUCTS ADD CHECK (PRODUCT_QUANTITY>=0);
ALTER TABLE PRODUCTS ADD CHECK (PRODUCT_QUANTITY>=0);


/******************************************************************************/
/***                              Primary keys                              ***/
/******************************************************************************/

ALTER TABLE OUTLETS ADD PRIMARY KEY (OUTLET_ID);
ALTER TABLE OUTLET_PRODUCTS ADD PRIMARY KEY (OUTLET_PRODUCT_BARCODE);
ALTER TABLE PRODUCTS ADD PRIMARY KEY (PRODUCT_ID);
ALTER TABLE WAREHOUSES ADD PRIMARY KEY (WAREHOUSE_ID);
ALTER TABLE WAREHOUSE_PRODUCTS ADD PRIMARY KEY (WAREHOUSE_PRODUCT_BARCODE);


/******************************************************************************/
/***                              Foreign keys                              ***/
/******************************************************************************/

ALTER TABLE OUTLET_PRODUCTS ADD FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS (PRODUCT_ID) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE OUTLET_PRODUCTS ADD FOREIGN KEY (OUTLET_ID) REFERENCES OUTLETS (OUTLET_ID) ON DELETE NO ACTION ON UPDATE CASCADE;
ALTER TABLE WAREHOUSE_PRODUCTS ADD FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS (PRODUCT_ID) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE WAREHOUSE_PRODUCTS ADD FOREIGN KEY (WAREHOUSE_ID) REFERENCES WAREHOUSES (WAREHOUSE_ID) ON DELETE NO ACTION ON UPDATE CASCADE;


/******************************************************************************/
/***                                Indices                                 ***/
/******************************************************************************/

CREATE UNIQUE INDEX OUTLETS_INDEX ON OUTLETS (OUTLET_CITY, OUTLET_STREET, OUTLET_HOUSE);
CREATE UNIQUE INDEX WAREHOUSES_INDEX ON WAREHOUSES (WAREHOUSE_CITY, WAREHOUSE_STREET, WAREHOUSE_HOUSE);


/******************************************************************************/
/***                           Stored procedures                            ***/
/******************************************************************************/



SET TERM ^ ;

ALTER PROCEDURE DELETE_OUTLET (
    OUTLET_ID INTEGER)
AS
declare variable c integer;
begin
  select count(*) from outlet_products
    where outlet_id=:outlet_id into :c;

  if (:c=0) then
    delete from outlets where outlet_id=:outlet_id;
  else
    exception outlet_not_empty_error;
end^


ALTER PROCEDURE DELETE_OUTLET_PRODUCT (
    OUTLET_PRODUCT_BARCODE INTEGER)
AS
declare variable c integer;
begin
  select count(*) from outlet_products
    where outlet_product_barcode=:outlet_product_barcode and product_quantity>0 into :c;

  if (:c=0) then
    delete from outlet_products where outlet_product_barcode=:outlet_product_barcode;
  else
    exception product_quantity_not_null_error;
end^


ALTER PROCEDURE DELETE_PRODUCT (
    PRODUCT_ID INTEGER)
AS
declare variable c integer;
begin
  select count(*) from products
    where product_id=:product_id and product_quantity>0 into :c;

  if (:c=0) then
    delete from products where product_id=:product_id;
  else
    exception product_quantity_not_null_error;
end^


ALTER PROCEDURE DELETE_WAREHOUSE (
    WAREHOUSE_ID INTEGER)
AS
declare variable c integer;
begin
  select count(*) from warehouse_products
    where warehouse_id=:warehouse_id into :c;

  if (:c=0) then
    delete from warehouses where warehouse_id=:warehouse_id;
  else
    exception warehouse_not_empty_error;
end^


ALTER PROCEDURE DELETE_WAREHOUSE_PRODUCT (
    WAREHOUSE_PRODUCT_BARCODE INTEGER)
AS
declare variable c integer;
begin
  select count(*) from warehouse_products
    where warehouse_product_barcode=:warehouse_product_barcode and product_quantity>0 into :c;

  if (:c=0) then
    delete from warehouse_products where warehouse_product_barcode=:warehouse_product_barcode;
  else
    exception product_quantity_not_null_error;
end^


ALTER PROCEDURE INSERT_OUTLET (
    OUTLET_NAME VARCHAR(25),
    OUTLET_CITY VARCHAR(25),
    OUTLET_STREET VARCHAR(25),
    OUTLET_HOUSE VARCHAR(25))
AS
declare variable c integer;
begin
  select count(*) from outlets
    where outlet_city=:outlet_city and outlet_street=:outlet_street and outlet_house=:outlet_house into :c;

  if (:c=0) then
    insert into outlets values (gen_id(outlet_generator,1), :outlet_name,
                                :outlet_city, :outlet_street, :outlet_house);
  else
    exception outlet_exists_error;
end^


ALTER PROCEDURE INSERT_OUTLET_PRODUCT (
    OUTLET_PRODUCT_BARCODE INTEGER,
    PRODUCT_QUANTITY INTEGER,
    PRICE NUMERIC(9,2),
    PRODUCT_ID INTEGER,
    OUTLET_ID INTEGER)
AS
declare variable c integer;
begin
  select count(*) from products
    where product_id=:product_id and product_quantity<:product_quantity into :c;
  if (:c=0) then
    insert into outlet_products
      values (:outlet_product_barcode, :product_quantity, :price, :product_id, :outlet_id);
  else
    exception product_not_enough_error;
end^


ALTER PROCEDURE INSERT_PRODUCT (
    PRODUCT_NAME VARCHAR(25),
    PRODUCT_QUANTITY INTEGER)
AS
declare variable c integer;
begin
  select count(*) from products
    where product_name=:product_name into :c;
  if (:c=0) then
    insert into products values (gen_id(product_generator,1), :product_name, :product_quantity);
  else
    exception product_exists_error;
end^


ALTER PROCEDURE INSERT_WAREHOUSE (
    WAREHOUSE_CITY VARCHAR(25),
    WAREHOUSE_STREET VARCHAR(25),
    WAREHOUSE_HOUSE VARCHAR(25),
    STOREKEEPER_LAST_NAME VARCHAR(25),
    STOREKEEPER_FIRST_NAME VARCHAR(25),
    STOREKEEPER_MIDDLE_NAME VARCHAR(25))
AS
declare variable c integer;
begin
  select count(*) from warehouses
    where warehouse_city=:warehouse_city and warehouse_street=:warehouse_street and warehouse_house=:warehouse_house into :c;
  if (:c=0) then
    insert into warehouses values (gen_id(warehouse_generator,1),
                                  :warehouse_city, :warehouse_street, :warehouse_house,
                                  :storekeeper_last_name, :storekeeper_first_name, :storekeeper_middle_name);
  else
    exception warehouse_exists_error;
end^


ALTER PROCEDURE INSERT_WAREHOUSE_PRODUCT (
    WAREHOUSE_PRODUCT_BARCODE INTEGER,
    PRODUCT_QUANTITY INTEGER,
    PRICE NUMERIC(9,2),
    PRODUCT_ID INTEGER,
    WAREHOUSE_ID INTEGER)
AS
declare variable c integer;
begin
  select count(*) from products
    where product_id=:product_id and product_quantity<:product_quantity into :c;
  if (:c=0) then
    insert into warehouse_products
      values (:warehouse_product_barcode, :product_quantity, :price, :product_id, :warehouse_id);
  else
    exception product_not_enough_error;
end^


ALTER PROCEDURE OUTLET_PRODUCTS_LIST (
    OUTLET_NAME VARCHAR(25))
RETURNS (
    NAME VARCHAR(25),
    QUANTITY INTEGER,
    PRICE NUMERIC(9,2))
AS
begin
  for select P.product_name, OP.product_quantity, OP.price
      from outlet_products OP
      join outlets O on OP.outlet_id=O.outlet_id
      join products P on OP.product_id=P.product_id
      where upper(O.outlet_name)=upper(:outlet_name)
      order by P.product_name
      into :name, :quantity, :price do

  suspend;
end^


ALTER PROCEDURE OUTLET_PRODUCTS_PRICE_RANGE (
    OUTLET_NAME VARCHAR(25),
    PRICE_MIN NUMERIC(9,2),
    PRICE_MAX NUMERIC(9,2))
RETURNS (
    ADDRESS VARCHAR(75),
    NAME VARCHAR(25),
    QUANTITY INTEGER,
    PRICE NUMERIC(9,2))
AS
begin
  for select O.outlet_address, P.product_name, OP.product_quantity, OP.price
      from outlet_products OP
      join outlets O on OP.outlet_id=O.outlet_id
      join products P on OP.product_id=P.product_id
      where upper(O.outlet_name)=upper(:outlet_name)
        and OP.product_quantity>0
        and OP.price between :price_min and :price_max
      order by P.product_name
      into :address, :name, :quantity, :price do

  suspend;
end^


ALTER PROCEDURE PRODUCTS_AVAILABLE (
    PRODUCT_NAME VARCHAR(25))
RETURNS (
    PLACE_NAME VARCHAR(25),
    ADDRESS VARCHAR(75),
    QUANTITY INTEGER,
    PRICE NUMERIC(9,2))
AS
begin
  for select O.outlet_name, O.outlet_address, OP.product_quantity, OP.price
      from outlet_products OP
      join outlets O on OP.outlet_id=O.outlet_id
      join products P on OP.product_id=P.product_id
      where upper(P.product_name)=upper(:product_name)
        and OP.product_quantity>0
      union all
      select 'Склад '||cast(WP.warehouse_id as varchar(5)),
             W.warehouse_address, WP.product_quantity, WP.price
      from warehouse_products WP
      join warehouses W on WP.warehouse_id=W.warehouse_id
      join products P on WP.product_id=P.product_id
      where upper(P.product_name)=upper(:product_name)
        and WP.product_quantity>0
      into :place_name, :address, :quantity, :price do

  suspend;
end^


ALTER PROCEDURE UPDATE_OUTLET (
    OUTLET_ID INTEGER,
    OUTLET_NAME VARCHAR(25),
    OUTLET_CITY VARCHAR(25),
    OUTLET_STREET VARCHAR(25),
    OUTLET_HOUSE VARCHAR(25))
AS
declare variable c integer;
begin
  update outlets set
    outlet_id=:outlet_id,
    outlet_name=:outlet_name,
    outlet_city=:outlet_city,
    outlet_street=:outlet_street,
    outlet_house=:outlet_house
  where outlet_id=:outlet_id;

  select count(*) from outlets
    where outlet_city=:outlet_city and outlet_street=:outlet_street and outlet_house=:outlet_house into :c;

  if (:c>1) then
    exception outlet_exists_error;
end^


ALTER PROCEDURE UPDATE_OUTLET_PRODUCT (
    OUTLET_PRODUCT_BARCODE INTEGER,
    PRODUCT_QUANTITY INTEGER,
    PRICE NUMERIC(9,2),
    PRODUCT_ID INTEGER,
    OUTLET_ID INTEGER)
AS
declare variable c integer;
begin
  update outlet_products set
    outlet_product_barcode=:outlet_product_barcode,
    product_quantity=:product_quantity,
    price=:price,
    product_id=:product_id,
    outlet_id=:outlet_id
  where outlet_product_barcode=:outlet_product_barcode;

  select count(*) from products
    where product_id=:product_id and product_quantity<:product_quantity into :c;

  if (:c>0) then
    exception product_not_enough_error;
end^


ALTER PROCEDURE UPDATE_PRODUCT (
    PRODUCT_ID INTEGER,
    PRODUCT_NAME VARCHAR(25),
    PRODUCT_QUANTITY INTEGER)
AS
declare variable c integer;
begin
  update products set
    product_id=:product_id,
    product_name=:product_name,
    product_quantity=:product_quantity
  where product_id=:product_id;

  select count(*) from products
    where product_name=:product_name into :c;

  if (:c>1) then
    exception product_exists_error;
end^


ALTER PROCEDURE UPDATE_WAREHOUSE (
    WAREHOUSE_ID INTEGER,
    WAREHOUSE_CITY VARCHAR(25),
    WAREHOUSE_STREET VARCHAR(25),
    WAREHOUSE_HOUSE VARCHAR(25),
    STOREKEEPER_LAST_NAME VARCHAR(25),
    STOREKEEPER_FIRST_NAME VARCHAR(25),
    STOREKEEPER_MIDDLE_NAME VARCHAR(25))
AS
declare variable c integer;
begin
  update warehouses set
    warehouse_id=:warehouse_id,
    warehouse_city=:warehouse_city,
    warehouse_street=:warehouse_street,
    warehouse_house=:warehouse_house,
    storekeeper_last_name=:storekeeper_last_name,
    storekeeper_first_name=:storekeeper_first_name,
    storekeeper_middle_name=:storekeeper_middle_name
  where warehouse_id=:warehouse_id;

  select count(*) from warehouses
    where warehouse_city=:warehouse_city and warehouse_street=:warehouse_street and warehouse_house=:warehouse_house into :c;

  if (:c>1) then
    exception warehouse_exists_error;
end^


ALTER PROCEDURE UPDATE_WAREHOUSE_PRODUCT (
    WAREHOUSE_PRODUCT_BARCODE INTEGER,
    PRODUCT_QUANTITY INTEGER,
    PRICE NUMERIC(9,2),
    PRODUCT_ID INTEGER,
    WAREHOUSE_ID INTEGER)
AS
declare variable c integer;
begin
  update warehouse_products set
    warehouse_product_barcode=:warehouse_product_barcode,
    product_quantity=:product_quantity,
    price=:price,
    product_id=:product_id,
    warehouse_id=:warehouse_id
  where warehouse_product_barcode=:warehouse_product_barcode;

  select count(*) from products
    where product_id=:product_id and product_quantity<:product_quantity into :c;

  if (:c>0) then
    exception product_not_enough_error;
end^


ALTER PROCEDURE WAREHOUSE_PRODUCTS_LIST (
    WAREHOUSE_ID INTEGER)
RETURNS (
    NAME VARCHAR(25),
    QUANTITY INTEGER,
    PRICE NUMERIC(9,2))
AS
begin
  for select P.product_name, WP.product_quantity, WP.price
      from warehouse_products WP
      join products P on WP.product_id=P.product_id
      where WP.warehouse_id=:warehouse_id
      order by P.product_name
      into :name, :quantity, :price do

  suspend;
end^


ALTER PROCEDURE WAREHOUSE_PRODUCTS_PRICE_RANGE (
    WAREHOUSE_ID INTEGER,
    PRICE_MIN NUMERIC(9,2),
    PRICE_MAX NUMERIC(9,2))
RETURNS (
    ADDRESS VARCHAR(75),
    NAME VARCHAR(25),
    QUANTITY INTEGER,
    PRICE NUMERIC(9,2))
AS
begin
  for select W.warehouse_address,
             P.product_name, WP.product_quantity, WP.price
      from warehouse_products WP
      join products P on WP.product_id=P.product_id
      join warehouses W on WP.warehouse_id=W.warehouse_id
      where WP.warehouse_id=:warehouse_id
        and WP.product_quantity>0
        and WP.price between :price_min and :price_max
      order by P.product_name
      into :address, :name, :quantity, :price do

  suspend;
end^



SET TERM ; ^