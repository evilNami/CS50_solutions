create table if not exists "users"(
    "id" int,
    "first_name" text not null,
    "last_name" text not null,
    "user_name" numeric not null unique,
    "password" numeric not null,
    primary key("id")
);

create table if not exists "schools"(
    "id" int,
    "name" text not null,
    "type" text not null,
    "location" text,
    "foundation_year" int,
    primary key("id")
);

create table if not exists "companies"(
    "id" int,
    "name" numeric not null unique,
    "industry" text not null,
    "location" text,
    primary key("id")
);

create table if not exists "connectionsWithPeople"(
    "id" int,
    "follower_id" int not null,
    "following_id" int not null check ("following_id" != "follower_id"),
    primary key("id"),
    foreign key("follower_id") references users("id"),
    foreign key("following_id") references users("id"),
    constraint unique_connection unique(follower_id , following_id)
);

create table if not exists "connectionsWithSchool"(
    "id" int,
    "user_id" int not null,
    "school_id" int not null,
    "start_date" datetime not null,
    "end_date" datetime check("end_date" != "start_date" and "end_date" > "start_date"),
    "degree_type" text not null,
    primary key("id"),
    foreign key("user_id") references users("id"),
    foreign key("school_id") references schools("id"),
    constraint unique_school unique(user_id , school_id)
);

create table if not exists "connectionsWithCompany"(
    "id" int,
    "user_id" int not null,
    "company_id" int not null,
    "start_date" datetime not null,
    "end_date" datetime check("end_date" != "start_date" and "end_date" > "start_date"),
    "position" text not null,
    primary key("id"),
    foreign key("user_id") references users("id"),
    foreign key("company_id") references companies("id"),
    constraint unique_company unique(user_id , company_id)
);
