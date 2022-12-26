/*
    회원정보(가입)
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
--관리자 계정--
insert into si_users(seq, id, password, name,tel,role) values((select nvl(max(seq),0)+1 from si_users),'admin','admin','관리자',01012341234,'admin');
/*
    문의게시판
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

    -- 답변형 게시판 
    ref             number,
    re_step         number,
    re_level        number
);

--테이블 보기
select * from si_users;
select * from si_board;


-- 테이블 삭제
drop table si_users;
drop table si_board;

-- 커밋
commit;