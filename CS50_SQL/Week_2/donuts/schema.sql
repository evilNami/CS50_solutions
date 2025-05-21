create table if not exists "ingredients"(
    "id" int,
    "name" text not null unique,
    "price_per_unit" numeric not null,
    primary key("id")
);

create table if not exists "donuts"(
    "id" int,
    "name" text not null unique,
    "gluten_free" text not null check("gluten_free" in ('yes' , 'not')),
    "price_per_donut" numeric,
    primary key("id")
);

create table if not exists "donutIngredients"(
    "donut_id" int,
    "ingredient_id" int,
    primary key("donut_id" , "ingredient_id"),
    foreign key("donut_id") references donuts("id"),
    foreign key("ingredient_id") references ingredients("id")
);

create table if not exists "customers"(
    "id" int,
    "first_name" text not null,
    "last_name" text not null,
    primary key("id")
);

create table if not exists "orders"(
    "id" int,
    "order_number" int not null,
    "customer_id" int,
    primary key("id"),
    foreign key("customer_id") references customers("id")
);

create table if not exists "orderDetail"(
    "order_id" int,
    "donut_id" int,
    "quantity" int not null,
    primary key("order_id" , "donut_id"),
    foreign key("order_id") references orders("id"),
    foreign key("donut_id") references donuts("id")
);
