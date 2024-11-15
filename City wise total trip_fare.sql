select  
ci.city_name, 
count(ft.trip_id) as total_trip,
sum(ft.fare_amount) as total_fare,
round(avg(ft.fare_amount), 1) as avg_fare,
round(avg(ft.distance_travelled_km),1) as avg_distance
from
fact_trips as ft join dim_city as ci on ft.city_id=ci.city_id
group by ci.city_name
order by total_fare desc;
