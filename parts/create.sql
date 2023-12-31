/******************************************************************************/
/***         Generated by IBExpert 2021.3.29.1 14.06.2023 14:12:35          ***/
/******************************************************************************/

/******************************************************************************/
/***      Following SET SQL DIALECT is just for the Database Comparer       ***/
/******************************************************************************/
SET SQL DIALECT 3;



/******************************************************************************/
/***                               Generators                               ***/
/******************************************************************************/

CREATE GENERATOR PARTS_GENERATOR;

CREATE GENERATOR WORKSHOPS_GENERATOR;



/******************************************************************************/
/***                               Exceptions                               ***/
/******************************************************************************/

CREATE EXCEPTION MACHINE_EXISTS_ERROR 'Станок с таким названием уже существует.';

CREATE EXCEPTION MACHINE_PARTS_NOT_EMPTY_ERROR 'Станок не может быть удален, так как на нем выпускаются детали.';

CREATE EXCEPTION PART_EXISTS_ERROR 'Деталь с таким названием уже существует.';

CREATE EXCEPTION PART_MODIFICATION_EXISTS_ERROR 'Модификация данной детали с таким названием уже существует.';

CREATE EXCEPTION WORKSHOP_NOT_EMPTY_ERROR 'Цех не может быть удален, так как содержит станки.';



/******************************************************************************/
/***                           Stored procedures                            ***/
/******************************************************************************/



SET TERM ^ ;

CREATE PROCEDURE DELETE_MACHINE (
    MACHINE_NAME VARCHAR(20))
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE DELETE_PART (
    PART_NUMBER INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE DELETE_PART_MODIFICATION (
    MODIFICATION_NAME VARCHAR(20))
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE DELETE_WORKSHOP (
    WORKSHOP_ID INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE INSERT_MACHINE (
    MACHINE_NAME VARCHAR(20),
    PROCESSING_TIME INTEGER,
    WORKSHOP_ID INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE INSERT_PART (
    PART_NAME VARCHAR(20),
    MACHINE_NAME VARCHAR(20))
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE INSERT_PART_MODIFICATION (
    MODIFICATION_NAME VARCHAR(20),
    COMPLEXITY INTEGER,
    PART_NUMBER INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE INSERT_WORKSHOP (
    FOREMAN_LAST_NAME VARCHAR(20),
    FOREMAN_FIRST_NAME VARCHAR(20),
    FOREMAN_MIDDLE_NAME VARCHAR(20))
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE MODIFICATIONS_COMPLEXITY_RANGE (
    COMPLEXITY_MIN INTEGER,
    COMPLEXITY_MAX INTEGER)
RETURNS (
    PART_NAME VARCHAR(20),
    MODIFICATION_NAME VARCHAR(20),
    COMPLEXITY INTEGER)
AS
BEGIN
  SUSPEND;
END^





CREATE PROCEDURE PART_MODIFICATIONS_LIST (
    PART_NAME VARCHAR(20))
RETURNS (
    MODIFICATION_NAME VARCHAR(20),
    COMPLEXITY INTEGER)
AS
BEGIN
  SUSPEND;
END^





CREATE PROCEDURE PARTS_MODIFICATIONS_COUNT (
    COUNT_MIN INTEGER,
    COUNT_MAX INTEGER)
RETURNS (
    MACHINE_NAME VARCHAR(20),
    PART_NAME VARCHAR(20),
    TOTAL_PART_MODIFICATIONS INTEGER)
AS
BEGIN
  SUSPEND;
END^





CREATE PROCEDURE PARTS_PROCESSED_ON_WORKSHOP (
    WORKSHOP_ID VARCHAR(20))
RETURNS (
    PART_NAME VARCHAR(20),
    MACHINE_NAME VARCHAR(20),
    PROCESSING_TIME INTEGER)
AS
BEGIN
  SUSPEND;
END^





CREATE PROCEDURE UPDATE_MACHINE (
    MACHINE_NAME VARCHAR(20),
    PROCESSING_TIME INTEGER,
    WORKSHOP_ID INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE UPDATE_PART (
    PART_NUMBER INTEGER,
    PART_NAME VARCHAR(20),
    MACHINE_NAME VARCHAR(20))
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE UPDATE_PART_MODIFICATION (
    MODIFICATION_NAME VARCHAR(20),
    COMPLEXITY INTEGER,
    PART_NUMBER INTEGER)
AS
BEGIN
  EXIT;
END^





CREATE PROCEDURE UPDATE_WORKSHOP (
    WORKSHOP_ID INTEGER,
    FOREMAN_LAST_NAME VARCHAR(20),
    FOREMAN_FIRST_NAME VARCHAR(20),
    FOREMAN_MIDDLE_NAME VARCHAR(20))
AS
BEGIN
  EXIT;
END^






SET TERM ; ^



/******************************************************************************/
/***                                 Tables                                 ***/
/******************************************************************************/



CREATE TABLE MACHINES (
    MACHINE_NAME     VARCHAR(20) NOT NULL,
    PROCESSING_TIME  INTEGER NOT NULL,
    WORKSHOP_ID      INTEGER NOT NULL
);

CREATE TABLE PART_MODIFICATIONS (
    MODIFICATION_NAME  VARCHAR(20) NOT NULL,
    COMPLEXITY         INTEGER NOT NULL,
    PART_NUMBER        INTEGER NOT NULL
);

CREATE TABLE PARTS (
    PART_NUMBER   INTEGER NOT NULL,
    PART_NAME     VARCHAR(20) NOT NULL,
    MACHINE_NAME  VARCHAR(20) NOT NULL
);

CREATE TABLE WORKSHOPS (
    WORKSHOP_ID          INTEGER NOT NULL,
    FOREMAN_LAST_NAME    VARCHAR(20) NOT NULL,
    FOREMAN_FIRST_NAME   VARCHAR(20) NOT NULL,
    FOREMAN_MIDDLE_NAME  VARCHAR(20) NOT NULL,
    FOREMAN_FULL_NAME    COMPUTED BY (FOREMAN_LAST_NAME||' '||FOREMAN_FIRST_NAME||' '||FOREMAN_MIDDLE_NAME)
);



/******************************************************************************/
/***                                 Views                                  ***/
/******************************************************************************/


/* View: MIN_COMPLEXITY_MODIFICATIONS */
CREATE VIEW MIN_COMPLEXITY_MODIFICATIONS(
    WORKSHOP_FOREMAN_FULL_NAME,
    MACHINE_NAME,
    PART_NAME,
    MINIMAL_COMPLEXITY)
AS
select W.foreman_full_name, M.machine_name, D.part_name, min(DM.complexity)
  from part_modifications DM
    join parts D on DM.part_number=D.part_number
    join machines M on D.machine_name=M.machine_name
    join workshops W on M.workshop_id=W.workshop_id
  group by W.foreman_full_name, M.machine_name, D.part_name
;




/******************************************************************************/
/***                           Unique constraints                           ***/
/******************************************************************************/

ALTER TABLE PARTS ADD UNIQUE (PART_NAME);


/******************************************************************************/
/***                              Primary keys                              ***/
/******************************************************************************/

ALTER TABLE MACHINES ADD PRIMARY KEY (MACHINE_NAME);
ALTER TABLE PARTS ADD PRIMARY KEY (PART_NUMBER);
ALTER TABLE PART_MODIFICATIONS ADD PRIMARY KEY (MODIFICATION_NAME);
ALTER TABLE WORKSHOPS ADD PRIMARY KEY (WORKSHOP_ID);


/******************************************************************************/
/***                              Foreign keys                              ***/
/******************************************************************************/

ALTER TABLE MACHINES ADD FOREIGN KEY (WORKSHOP_ID) REFERENCES WORKSHOPS (WORKSHOP_ID) ON DELETE NO ACTION ON UPDATE CASCADE;
ALTER TABLE PARTS ADD FOREIGN KEY (MACHINE_NAME) REFERENCES MACHINES (MACHINE_NAME) ON DELETE NO ACTION ON UPDATE CASCADE;
ALTER TABLE PART_MODIFICATIONS ADD FOREIGN KEY (PART_NUMBER) REFERENCES PARTS (PART_NUMBER) ON DELETE CASCADE ON UPDATE CASCADE;


/******************************************************************************/
/***                           Stored procedures                            ***/
/******************************************************************************/



SET TERM ^ ;

ALTER PROCEDURE DELETE_MACHINE (
    MACHINE_NAME VARCHAR(20))
AS
declare variable C integer;
begin
  select count(*) from parts
    where upper(machine_name)=upper(:machine_name) into :c;

  if (:c=0) then
    delete from machines where upper(machine_name)=upper(:machine_name);
  else
    exception machine_parts_not_empty_error;
end^


ALTER PROCEDURE DELETE_PART (
    PART_NUMBER INTEGER)
AS
begin
  delete from parts where part_number=:part_number;
end^


ALTER PROCEDURE DELETE_PART_MODIFICATION (
    MODIFICATION_NAME VARCHAR(20))
AS
begin
  delete from part_modifications where upper(modification_name)=upper(:modification_name);
end^


ALTER PROCEDURE DELETE_WORKSHOP (
    WORKSHOP_ID INTEGER)
AS
declare variable c integer;
begin
  select count(*) from machines where workshop_id=:workshop_id into :c;

  if (:c=0) then
    delete from workshops where workshop_id=:workshop_id;
  else
    exception workshop_not_empty_error;
end^


ALTER PROCEDURE INSERT_MACHINE (
    MACHINE_NAME VARCHAR(20),
    PROCESSING_TIME INTEGER,
    WORKSHOP_ID INTEGER)
AS
declare variable C integer;
begin
  select count(*) from machines
    where upper(machine_name)=upper(:machine_name)
    into :c;

  if (:c=0) then
    insert into machines values (:machine_name, :processing_time, :workshop_id);
  else
    exception machine_exists_error;
end^


ALTER PROCEDURE INSERT_PART (
    PART_NAME VARCHAR(20),
    MACHINE_NAME VARCHAR(20))
AS
declare variable C integer;
begin
  select count(*) from parts
    where part_name=:part_name
    into :c;

  if (:c=0) then
    insert into parts values (gen_id(parts_generator,1),
                                :part_name, :machine_name);
  else
    exception part_exists_error;
end^


ALTER PROCEDURE INSERT_PART_MODIFICATION (
    MODIFICATION_NAME VARCHAR(20),
    COMPLEXITY INTEGER,
    PART_NUMBER INTEGER)
AS
declare variable C integer;
begin
  select count(*) from part_modifications
    where part_number=:part_number
      and upper(modification_name)=upper(:modification_name)
    into :c;

  if (:c=0) then
    insert into part_modifications values (:modification_name,
                                             :complexity, :part_number);
  else
    exception part_modification_exists_error;
end^


ALTER PROCEDURE INSERT_WORKSHOP (
    FOREMAN_LAST_NAME VARCHAR(20),
    FOREMAN_FIRST_NAME VARCHAR(20),
    FOREMAN_MIDDLE_NAME VARCHAR(20))
AS
begin
  insert into workshops values (gen_id(workshops_generator,1),
                                :foreman_last_name, :foreman_first_name, :foreman_middle_name);
end^


ALTER PROCEDURE MODIFICATIONS_COMPLEXITY_RANGE (
    COMPLEXITY_MIN INTEGER,
    COMPLEXITY_MAX INTEGER)
RETURNS (
    PART_NAME VARCHAR(20),
    MODIFICATION_NAME VARCHAR(20),
    COMPLEXITY INTEGER)
AS
begin
  for select D.part_name, MD.modification_name, MD.complexity
        from part_modifications MD
          join parts D on MD.part_number=D.part_number
        where MD.complexity between :complexity_min and :complexity_max
        into :part_name, :modification_name, :complexity do

  suspend;
end^


ALTER PROCEDURE PART_MODIFICATIONS_LIST (
    PART_NAME VARCHAR(20))
RETURNS (
    MODIFICATION_NAME VARCHAR(20),
    COMPLEXITY INTEGER)
AS
begin
  for select MD.modification_name, MD.complexity
        from part_modifications MD
          join parts D on MD.part_number=D.part_number
        where upper(D.part_name)=upper(:part_name)
        into :modification_name, :complexity do

  suspend;
end^


ALTER PROCEDURE PARTS_MODIFICATIONS_COUNT (
    COUNT_MIN INTEGER,
    COUNT_MAX INTEGER)
RETURNS (
    MACHINE_NAME VARCHAR(20),
    PART_NAME VARCHAR(20),
    TOTAL_PART_MODIFICATIONS INTEGER)
AS
begin
  for select M.machine_name, D.part_name, count(DM.modification_name)
        from part_modifications DM
          join parts D on DM.part_number=D.part_number
          join machines M on D.machine_name=M.machine_name
        group by M.machine_name ,D.part_name
        having count(DM.modification_name) between :count_min and :count_max
        order by M.machine_name ,D.part_name
        into :machine_name, :part_name, :total_part_modifications do

  suspend;
end^


ALTER PROCEDURE PARTS_PROCESSED_ON_WORKSHOP (
    WORKSHOP_ID VARCHAR(20))
RETURNS (
    PART_NAME VARCHAR(20),
    MACHINE_NAME VARCHAR(20),
    PROCESSING_TIME INTEGER)
AS
begin
  for select D.part_name, D.machine_name, MC.processing_time
        from parts D
          join machines MC on D.machine_name=MC.machine_name
        where upper(MC.workshop_id)=upper(:workshop_id)
        order by D.part_name, D.machine_name
        into :part_name, :machine_name, :processing_time do

  suspend;
end^


ALTER PROCEDURE UPDATE_MACHINE (
    MACHINE_NAME VARCHAR(20),
    PROCESSING_TIME INTEGER,
    WORKSHOP_ID INTEGER)
AS
declare variable C integer;
begin
  update machines set
    processing_time=:processing_time,
    workshop_id=:workshop_id
  where upper(machine_name)=upper(:machine_name);
end^


ALTER PROCEDURE UPDATE_PART (
    PART_NUMBER INTEGER,
    PART_NAME VARCHAR(20),
    MACHINE_NAME VARCHAR(20))
AS
declare variable C integer;
begin
  update parts set
    part_name=:part_name,
    machine_name=:machine_name
  where part_number=:part_number;

  select count(*) from parts
    where upper(part_name)=upper(:part_name)
    into :c;

  if (:c>1) then
    exception part_exists_error;
end^


ALTER PROCEDURE UPDATE_PART_MODIFICATION (
    MODIFICATION_NAME VARCHAR(20),
    COMPLEXITY INTEGER,
    PART_NUMBER INTEGER)
AS
declare variable C integer;
begin
  update part_modifications set
    complexity=:complexity,
    part_number=:part_number
  where modification_name=:modification_name;

  select count(*) from part_modifications
    where part_number=:part_number
    into :c;

  if (:c>1) then
    exception part_modification_exists_error;
end^


ALTER PROCEDURE UPDATE_WORKSHOP (
    WORKSHOP_ID INTEGER,
    FOREMAN_LAST_NAME VARCHAR(20),
    FOREMAN_FIRST_NAME VARCHAR(20),
    FOREMAN_MIDDLE_NAME VARCHAR(20))
AS
begin
  update workshops set
    foreman_last_name=:foreman_last_name,
    foreman_first_name=:foreman_first_name,
    foreman_middle_name=:foreman_middle_name
  where workshop_id=:workshop_id;
end^



SET TERM ; ^
