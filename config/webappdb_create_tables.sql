# Create database
create database webappdb;

# Select the webapp database to use
use webappdb;

# Create user account table
create table user_accounts (user_name varchar(30) not null primary key, user_pass varchar(30) not null);

# Create user application table
create table users ( id int(3) NOT NULL AUTO_INCREMENT, name varchar(120) NOT NULL, email varchar(220) NOT NULL, company varchar(120), PRIMARY KEY (id) );

# Create user account role table
create table user_account_roles (user_name varchar(30) not null, role_name varchar(30) not null, primary key (user_name, role_name));

# Insert a default user into the user account table
insert into user_accounts values ('sample@aws.replace','sample@aws.replace');

# Insert a default role associated with the user
insert into user_account_roles values ('sample@aws.replace', 'standard');

