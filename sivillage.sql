/*
    ȸ������(����)
*/
create table si_users (
    seq         number primary key,
    email       varchar2(50),
    id          varchar2(30) ,
    password    varchar2(30),                                  
    name        varchar2(20),
    tel         varchar2(30),
    bday        varchar2(50),
    address     varchar2(50),
    agree       varchar2(80),
    joinDate    Date            DEFAULT sysdate,
    role        varchar2(5)     default 'guest'
);
--������ ����--
insert into si_users(seq, id, password, name,tel,role) values((select nvl(max(seq),0)+1 from si_users),'admin','admin','������',01012341234,'admin');
/*
    ���ǰԽ���
*/
create table si_board(
    seq             number                primary key,
    type            varchar2(20),
    choice          varchar2(30),
    title           varchar2(200),
    content         varchar2(2000),
    user_name       varchar2(30),
    user_email      varchar2(30),
    first_tel       varchar2(30),
    second_tel      varchar2(30),

    regdate         date            default sysdate,
    cnt             number          default 0,

    -- �亯�� �Խ��� 
    ref             number,
    re_step         number,
    re_level        number
);

--���̺� ����
select * from si_users;
select * from si_board;


-- ���̺� ����
drop table si_users;
drop table si_board;

-- Ŀ��
commit;