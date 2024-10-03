##############EXERCISE 1

Select *, case when (speed is null or speed < 100) then "Low Speed" else "High Speed" end as SpeedCategory
from birdstrikes.birdstrikes;

SELECT *, IF(speed IS NULL or speed < 100, 'Low Speed', 'High Speed') AS SpeedCategory
FROM birdstrikes.birdstrikes;


############EXERCISE 2
### ANSWER : 3
select count(distinct aircraft) as aircrafts
 FROM birdstrikes;
 
###########EXERCISE 3
####### ANSWER : 9

SELECT MIN(SPEED) AS MinSpeed
from birdstrikes
where Left(aircraft,1) = "H";


#######EXERCISE 4
#### ANSWER : TAXI
select phase_of_flight, count(*) as incidents
from birdstrikes
group by 1
order by 2 asc;


#######EXERCISE 5
###### ANSWER :  CLIMB 54673

select phase_of_flight, round(avg(cost))  as AvgCost 
from birdstrikes
group by 1
order by 2 desc;


#######EXERCISE 6
######## ANSWER: 
/*
Iowa -> 2863
Blank -> 1236
Ohio -> 564
DC -> 469
Utah -> 300
*/
select state, round(avg(speed))  as AvgSpeed
from birdstrikes
group by 1
having length(state) < 5
order by 2 desc;
