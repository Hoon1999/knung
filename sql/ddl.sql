create table member
(
    id bigint generated by default as identity,
    m_id varchar(30),
    pw varchar(30),
    email varchar(40),
    qna varchar(20),
    name varchar(255),
    primary key(id),
    unique (m_id),
    unique (email)
);

create table participatingChatRoom
(
    id bigint,
    chat_id bigint,
    last_date timestamp,
    primary key(id, chat_id)
);
create table chatRoom
(
    chat_id bigint generated by default as identity,
    name varchar(15),
    primary key(chat_id)
);

create table message
(
    msg_id bigint generated by default as identity,
    sender_id bigint,
    receiver_id bigint,
    date timestamp,
    content varchar(255),
    primary key(msg_id)
);