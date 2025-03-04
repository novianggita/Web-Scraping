-- Check the data
select * from accomodation_traveloka at2 
limit 10;

-- Number of accommodations based on their types
select type, count(type) as total
from accomodation_traveloka at2 
group by type
order by total desc;

-- Top 10 areas with the most accommodations
select address, count(address) as total_accomodation
from accomodation_traveloka at2 
group by address
order by total_accomodation desc
limit 10;

-- Display hotels in Mataram area with business facilities, sorted by the lowest price
select type, name, address, facilities, price
from accomodation_traveloka at2 
where type = 'Hotels' and
      address like '%Mataram%' and
      facilities like '%Business facilities%'
order by price asc;

-- Display accommodations around Senggigi area with a maximum price of Rp300,000 per night and with a rating (sorted from the highest)
select type, name, address, price, rating
from accomodation_traveloka at2 
where address like '%Senggigi%' and price <= 300000 and rating != 0
order by rating desc;

-- Average accommodation price in each area, sorted from the highest
select address, avg(price) as average_price
from accomodation_traveloka at2 
group by address 
order by average_price desc;

-- Accommodations with more than 1000 reviews, sorted by the highest rating
select type, name, address, total_review, rating
from accomodation_traveloka at2 
where total_review > 1000
order by rating desc;






