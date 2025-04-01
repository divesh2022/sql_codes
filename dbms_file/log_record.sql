
create table log_record
(
    log_id int IDENTITY(1,1) primary key,
    log_time timestamp,
    log_message varchar(255),
    old_value varchar(255),
    new_value varchar(255),
    table_name varchar(255),
    column_name varchar(255),
    operation_type varchar(50)
);

