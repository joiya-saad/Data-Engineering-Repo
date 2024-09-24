#EXERCISE 1
CREATE TABLE employees 
(id INTEGER NOT NULL,
employee_name varchar(32) not null,
Primary Key(id));


#EXERCISE 2
# ANSWER IS : Tennessee
select state
from birdstrikes limit 144,1;


#EXERCISE 3
#ANSWER IS : 2000-04-18
select flight_date from birdstrikes
order by flight_date desc
limit 1;


#EXERCISE 4
#ANSWER IS : 5345
select distinct cost from birdstrikes
order by cost desc
limit 49,1;



#EXERCISE 5
# ANSWER IS Empty String ''
SELECT state
FROM birdstrikes 
WHERE state IS NOT NULL
And bird_size is not null
limit 1,1
;

#EXERCISE 6
# ANSWER IS : 8987
select DateDiff(NOW(),flight_date) as DaysSinceWeek7Flight
from birdstrikes
where state = 'Colorado'
and WEEKOFYEAR(flight_date) = 7;