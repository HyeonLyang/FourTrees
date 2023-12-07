-- ※ 만약 account나 restaurant 테이블이 있을 시 review,bookmark가
-- 외래키가 걸려 있으니 review,bookmark를 먼저 제거하고 
-- account와 restaurant를 제거해야 한다

-- account 테이블
----------------------------------------------------------------
drop sequence account_seq;
drop table account;

create SEQUENCE account_seq
    start with 1001
    increment by 1
    minvalue 1001
    maxvalue 9999
    nocache;    
    
create table account (
    idx         number           default account_seq.nextval,
    userid      varchar2(100)    not null,
    userpw      varchar2(100)    not null,
    nick        varchar2(100)    not null,
    email       varchar2(100)    not null,
    status      varchar2(100)    not null	default '게스트',
    birth       date             not null,
    phone       varchar2(100)    not null,
    foreigner   varchar2(100)    not null,
    gender      varchar2(10)     not null,     
    join_date   date             default sysdate,
    
    constraint Acc_idx_pk PRIMARY key (idx),
    
    -- 여기는 unique key (값을 하나만 가져야 하기 때문)
    constraint Acc_userid_uk unique (userid),
    constraint Acc_nick_uk unique (nick),
    constraint Acc_email_uk unique (email),
    constraint Acc_phone_uk unique (phone),
    
    -- 상태,내/외국인, 성별은 check in을 써서 오로지 이 두 값 외에 다른 값이 들어가면
    -- 제약조건 위배로 에러가 난다
    constraint Acc_status_ck check(status in ('관리자', '게스트')),
    constraint Acc_fore_ck check (foreigner in ('내국인', '외국인')),
    constraint Acc_gender_ck check(gender in ('남', '여'))
);
-------------------------------------------------------------------------

-- restaurant 테이블
------------------------------------------------------------------------
drop sequence res_seq;
drop table restaurant;

create SEQUENCE res_seq
    start with 1001
    increment by 1
    minvalue 1001
    maxvalue 9999
    nocache;

create table restaurant (
    idx             number          default res_seq.nextval,
    name            varchar2(100)   not null,
    address         clob            not null,
    res_phone       varchar2(30)    default '정보없음',
    category        varchar2(100)   not null,
    score           number          default 0,
    photo           clob,
    holiday         varchar2(30)    default '연중무휴',
    op_hour         varchar2(30)    not null,
    park_area       number,
    view_count      number          default 0,
    price           varchar2(100)   default 0,
    link            varchar2(200),    
    area_idx	    number,
    
    constraint res_idx_pk primary key(idx),

    constraint res_area_idx_fk FOREIGN key (area_idx) REFERENCES area(idx),

    -- 주차는 가능하면 1 불가능하면 2로 설정
    constraint res_park_ck check (park_area >=1 and  park_area <=2)  
);	
-------------------------------------------------------------------------

-- notice 테이블
-----------------------------------------------------------------------
drop sequence notice_idx;
drop sequence notice;

create SEQUENCE notice_idx
    start with 1
    increment by 1
    minvalue 1
    maxvalue 9999
    nocache;  

create table notice (
    idx     number          default notice_idx.nextval,
    title   varchar2(50)    not null,
    contents    clob        not null,
    write_date  date        default sysdate,
    face    clob            default null
);

insert into notice(title, contents)
    values('공지사항 테스트', '테스트 글입니다');
    
commit;
------------------------------------------------------------------------

-- review 테이블
----------------------------------------------------------------------

drop SEQUENCE review_seq;
drop table review;

create SEQUENCE review_seq
    start with 1001
    increment by 1
    minvalue 1001
    maxvalue 9999
    nocache;

create table review (
    idx             number          default review_seq.nextval,
    writer          VARCHAR2(30)    not null,
    content         clob,
    visit_date      date,
    write_date      date            default sysdate,
    score           number,
    good            number, 
    res_idx         number,
    img             VARCHAR2(100)   default 'no_image.jpg',
    
    constraint review_idx_pk primary key(idx),
    constraint review_writer_fk FOREIGN key (writer) REFERENCES account(nick),
    CONSTRAINT review_res_idx_fk FOREIGN key (res_idx) REFERENCES restaurant(idx),
    constraint review_good_ck check (good in (1,2))
);

-- bookmark 테이블
------------------------------------------------------------------------
drop SEQUENCE bookmark_seq;
drop table bookmark;

create SEQUENCE bookmark_seq
    start with 1001
    increment by 1
    minvalue 1001
    maxvalue 9999
    nocache;

create table bookmark (
    idx             number      default bookmark_seq.nextval,
    acc_idx         number      not null,
    res_idx         number      not null,
    mark_date       date        default sysdate,
    
    constraint bookmark_idx_pk primary key(idx),
    constraint bookmark_acc_idx_fk FOREIGN key (acc_idx) REFERENCES account(idx),
    constraint bookmark_res_idx_fk FOREIGN key (res_idx) REFERENCES restaurant(idx)
);
------------------------------------------------------------------

-- img 테이블
-------------------------------------------------------------------
drop SEQUENCE img_seq;
drop table img;

create SEQUENCE img_seq
    start with 1001
    increment by 1
    minvalue 1001
    maxvalue 9999
    nocache;

create table img (
    idx         number      default img_seq.nextval,
    res_idx     number      not null,
    img_path    clob        default 'img/이미지 없음.jpg',
    
    constraint img_idx_pk primary key (idx)
);
-------------------------------------------------------------------

drop sequence area_seq;
drop table area;

create sequence area_seq
    start with 101
    increment by 1
    minvalue 101
    maxvalue 999
    nocache;
    
create table area (
    idx     number          default area_seq.nextval,
    name    VARCHAR2(50)    not null,
    
    constraint area_idx_pk PRIMARY key (idx)
);    