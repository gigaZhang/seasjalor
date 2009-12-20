-- ���� �û���ɫ��--
create table T_USER_ROLE
(
  ID   NUMBER not null,
  R_ID NUMBER,
  U_ID NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table T_USER_ROLE
  is '�û���ɫ��';
-- Add comments to the columns 
comment on column T_USER_ROLE.ID
  is '����';
comment on column T_USER_ROLE.R_ID
  is '��ɫID';
comment on column T_USER_ROLE.U_ID
  is '�û�ID';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_USER_ROLE
  add constraint K_RU primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table T_USER_ROLE
  add constraint FK_RU foreign key (R_ID)
  references T_ROLE (R_ID);
alter table T_USER_ROLE
  add constraint FK_U foreign key (U_ID)
  references T_USER (ID);
----------------------------------------------------------
--�����û���--
create table T_USER
(
  ID            NUMBER not null,
  T_NAME        VARCHAR2(50),
  T_ADDRESS     VARCHAR2(50),
  T_EMAIL       VARCHAR2(50),
  T_PASSWORD    VARCHAR2(50),
  T_LOGIN_NAME  VARCHAR2(50),
  T_CREATE_DATE DATE default SYSDATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table T_USER
  is '�û���';
-- Add comments to the columns 
comment on column T_USER.ID
  is '����';
comment on column T_USER.T_NAME
  is '�û���';
comment on column T_USER.T_ADDRESS
  is '��ַ';
comment on column T_USER.T_EMAIL
  is '�ʼ�';
comment on column T_USER.T_PASSWORD
  is '����';
comment on column T_USER.T_LOGIN_NAME
  is '��¼��';
comment on column T_USER.T_CREATE_DATE
  is '����ʱ��';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_USER
  add primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
-----------------------------------------------------------
-- ������ɫģ���--
create table T_ROLE_MODULE
(
  ID   NUMBER not null,
  R_ID NUMBER,
  M_ID NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table T_ROLE_MODULE
  is '��ɫȨ�ޱ�';
-- Add comments to the columns 
comment on column T_ROLE_MODULE.ID
  is '����';
comment on column T_ROLE_MODULE.R_ID
  is '��ɫID';
comment on column T_ROLE_MODULE.M_ID
  is 'ģ��ID';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_ROLE_MODULE
  add constraint P_RM primary key (ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
alter table T_ROLE_MODULE
  add constraint FK_MODULE foreign key (M_ID)
  references T_MODULE (T_ID);
alter table T_ROLE_MODULE
  add constraint FK_ROLE foreign key (R_ID)
  references T_ROLE (R_ID);
------------------------------------------------------------
-- ������ɫ��--
create table T_ROLE
(
  R_ID        NUMBER not null,
  R_NAME      VARCHAR2(50),
  CREATE_DATA DATE
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table T_ROLE
  is '��ɫ��';
-- Add comments to the columns 
comment on column T_ROLE.R_ID
  is '����';
comment on column T_ROLE.R_NAME
  is '��ɫ��';
comment on column T_ROLE.CREATE_DATA
  is '����ʱ��';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_ROLE
  add primary key (R_ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
---------------------------------------------------------------------
--����ģ���--
create table T_MODULE
(
  T_ID          NUMBER not null,
  T_MODULE_NAME VARCHAR2(50),
  CREATE_DATE   DATE,
  PARENT_ID     NUMBER
)
tablespace USERS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table T_MODULE
  is 'ģ���';
-- Add comments to the columns 
comment on column T_MODULE.T_MODULE_NAME
  is 'ģ����';
comment on column T_MODULE.CREATE_DATE
  is '����ʱ��';
comment on column T_MODULE.PARENT_ID
  is '���ڵ�ID';
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_MODULE
  add primary key (T_ID)
  using index 
  tablespace USERS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
