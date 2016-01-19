???-----------------------------------------------------
-- Export file for user KING01@LOCALHOST:1521/ORCL --
-- Created by frankie on 2016/1/19, 11:06:02 --------
-----------------------------------------------------

set define off
spool 123.log

prompt
prompt Creating table TBUG
prompt ===================
prompt
create table TBUG
(
  id             VARCHAR2(36) not null,
  createdatetime DATE,
  name           VARCHAR2(100),
  note           CLOB
)
tablespace KING
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
  );
alter table TBUG
  add primary key (ID)
  using index 
  tablespace KING
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );

prompt
prompt Creating table TMENU
prompt ====================
prompt
create table TMENU
(
  id      VARCHAR2(36) not null,
  iconcls VARCHAR2(100),
  seq     NUMBER(22),
  text    VARCHAR2(100),
  url     VARCHAR2(200),
  pid     VARCHAR2(36)
)
tablespace KING
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
  );
alter table TMENU
  add primary key (ID)
  using index 
  tablespace KING
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );
alter table TMENU
  add foreign key (ID)
  references TMENU (ID) on delete set null;

prompt
prompt Creating table TONLINE
prompt ======================
prompt
create table TONLINE
(
  id            VARCHAR2(36) not null,
  ip            VARCHAR2(50),
  logindatetime DATE,
  loginname     VARCHAR2(255)
)
tablespace KING
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
  );
alter table TONLINE
  add primary key (ID)
  using index 
  tablespace KING
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );

prompt
prompt Creating table TRESOURCE
prompt ========================
prompt
create table TRESOURCE
(
  id   VARCHAR2(36) not null,
  seq  NUMBER(22),
  text VARCHAR2(100),
  url  VARCHAR2(200),
  pid  VARCHAR2(36)
)
tablespace KING
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
  );
alter table TRESOURCE
  add primary key (ID)
  using index 
  tablespace KING
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );
alter table TRESOURCE
  add foreign key (ID)
  references TRESOURCE (ID) on delete set null;

prompt
prompt Creating table TROLE
prompt ====================
prompt
create table TROLE
(
  id   VARCHAR2(36) not null,
  text VARCHAR2(100)
)
tablespace KING
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TROLE
  add primary key (ID)
  using index 
  tablespace KING
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TROLE_TRESOURCE
prompt ==============================
prompt
create table TROLE_TRESOURCE
(
  id          VARCHAR2(36) not null,
  resource_id VARCHAR2(36),
  role_id     VARCHAR2(36)
)
tablespace KING
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
  );
alter table TROLE_TRESOURCE
  add primary key (ID)
  using index 
  tablespace KING
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
  );
alter table TROLE_TRESOURCE
  add foreign key (ID)
  references TROLE (ID) on delete set null;
alter table TROLE_TRESOURCE
  add foreign key (ID)
  references TRESOURCE (ID) on delete set null;

prompt
prompt Creating table TUSER
prompt ====================
prompt
create table TUSER
(
  id          VARCHAR2(36) not null,
  name        VARCHAR2(100),
  pwd         VARCHAR2(50),
  create_time TIMESTAMP(6),
  update_time TIMESTAMP(6)
)
tablespace KING
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TUSER
  add primary key (ID)
  using index 
  tablespace KING
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table TUSER_TROLE
prompt ==========================
prompt
create table TUSER_TROLE
(
  id      VARCHAR2(36) not null,
  role_id VARCHAR2(36),
  user_id VARCHAR2(36)
)
tablespace KING
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 128K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TUSER_TROLE
  add primary key (ID)
  using index 
  tablespace KING
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
alter table TUSER_TROLE
  add foreign key (USER_ID)
  references TUSER (ID) on delete set null;
alter table TUSER_TROLE
  add foreign key (ROLE_ID)
  references TROLE (ID) on delete set null;


spool off
