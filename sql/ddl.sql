drop all objects;

drop table if exists member;
create table member
(
    member_id bigint generated by default as identity,
    login_id varchar(30),
    password varchar(30),
    email varchar(40),
    qna varchar(20),
    name varchar(255),
    primary key(member_id),
    unique (login_id),
    unique (email)
);

drop table if exists message;
create table message
(
    msg_id bigint generated by default as identity,
    sender_id bigint,
    receiver_id bigint,
    send_time timestamp,
    content varchar(255),
    primary key(msg_id)
);

drop table if exists chat_room;
create table chat_room
(
    chat_room_id bigint generated by default as identity,
    chat_room_name varchar(15),
    chat_room_img varchar(255),
    primary key(chat_room_id)
);

drop table if exists participation_chat_room;
create table participation_chat_room
(
    chat_id bigint generated by default as identity,
    member_id bigint,
    chat_room_id bigint,
    chat_seq int,
    last_date timestamp,
    primary key(chat_id),
    foreign key(member_id) references member(member_id),
    foreign key(chat_room_id) references chat_room(chat_room_id)
);
