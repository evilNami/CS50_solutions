
-- *** The Lost Letter ***

Select * from scans
where package_id = (
    Select id
from packages
where from_address_id =
    (select id from addresses
    where "address" = '900 Somerville Avenue')
and to_address_id = (
     select id from addresses
     where "address" like "2 Finn%")
     );

select * from addresses
where "address" like "2 Finn%";



-- *** The Devious Delivery ***

select * from addresses
where id = (
select address_id from scans
where package_id = (
select id from packages
where from_address_id IS NULL)
And action = 'Drop'
);


-- *** The Forgotten Gift ***
select driver_id from scans
where package_id = (
   select id from packages
   where to_address_id = (
    select id from addresses
    where address = '728 Maple Place')
and from_address_id = (
    select id from addresses
    where address = '109 Tileston Street')
    );*/

select * from drivers
where id = 17;
