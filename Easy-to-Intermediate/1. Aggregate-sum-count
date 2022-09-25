
1. Assume that you are given the table below containing information on viewership by device type (where the four types are laptop, desktop, tablet, and phone). 
Define “mobile” as the sum of tablet and phone viewership numbers. Define “PC” as the sum of laptop and desktop viewership numbers.
Write a query to compare the viewership on PC versus mobile devices.

| Column_name    | type            | 
| -------------- | --------------- | 
| user_id        | integer         | 
| device_type    | string          | 
| view_type      | timestamp       | 

Output the total viewership for laptop and mobile devices in the format of "PC_views" and "mobile_views".

Solution-

select  
  sum(case when device_type in ('laptop','desktop') then 1 else 0 end) as PC_views
  , sum(case when device_type in ('mobile','tablet') then 1 else 0 end) as mobile_views
from viewership;


select  
  count(case when device_type in ('laptop','desktop') then 1 else null end) as PC_views
  , count(case when device_type in ('mobile','tablet') then 1 else null end) as mobile_views
from viewership;

Note that,
  When we use sum(), we use values '1' or '0' but when we use count(), we use '1' or 'null'. This is because count() can count 1s as well as 0s.
  
  
