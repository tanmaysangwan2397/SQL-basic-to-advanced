
1. Find the last time each bike was in use. Output both the bike number and the date-timestamp of the bike's last use (i.e., the date-time the bike was returned). 
Order the results by bikes that were most recently used.

| Column_name       |  type    |
|-------------------|----------|
| duration          | varchar  |
| duration_seconds  | int      |
| start_time        | datetime |
| start_station     | varchar  |
| start_terminal    | int      |
| end_time          | datetime |
| end_station       | varchar  |
| end_terminal      | int      |
| bike_number       | varchar  |
| rider_type        | varchar  |
| id                | int      |


Solution-

select  
    bike_number
    , max(end_time) as bike_last_used
from bike_db
group by bike_number
order by end_time desc;


