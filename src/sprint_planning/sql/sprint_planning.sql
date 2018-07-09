-- :name create-users-table
-- :command :execute
-- :result :raw
-- doc Create users table
create table users(
id uuid primary DEFAULT uuid_generate_v4(),
email text,
password text,
inserted_at timestamp without time zone not null,
updated_at timestamp without time zone not null
);

-- :name insert-users
-- :doc Insert a single user
insert into users(email,pasword,inserted_at, updated_at) values(:email, :password,
:inserted_at, :updated_at)

create table teams(
id uuid primary  DEFAULT uuid_generate_v4(),
name varchar(256),
description text,
members uuid[],
inserted_at timestamp without time zone not null,
updated_at timestamp without time zone not null
);

create table plannings(
id uuid primary  DEFAULT uuid_generate_v4(),
name varchar(256),
description text,
start_date TIMESTAMP NOT NULL,
end_date TIMESTAMP NOT NULL,
off_dates TIMESTAMP[],
time_offs jsonb, -- Should be in the format (date, no_of_hours, team_member_id)
inserted_at timestamp without time zone not null,
updated_at timestamp without time zone not null);

create table sprint(
id uuid primary DEFAULT uuid_generate_v4(),
start_date TIMESTAMP NOT NULL,
end_date TIMESTAMP NOT NULL,
inserted_at timestamp without time zone not null,
updated_at timestamp without time zone not null
);
