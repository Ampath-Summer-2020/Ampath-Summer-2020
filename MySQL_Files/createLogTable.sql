DROP TABLE log_alltables;

CREATE TABLE log_alltables
(
    id int AUTO_INCREMENT primary key,
    table_id int not null,
    user_name varchar(250),
    action_date datetime not null,
    action_description longtext,
    ticket_id int not null,
    status_id int not null,
    action varchar(50)
);