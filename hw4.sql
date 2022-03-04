mysql> select distinct name
    -> from Ships natural join Classes
    -> where displacement>35000;
mysql> select name, displacement,numGuns
    -> from Ships natural join Classes
    -> where name in
    -> (select ship from Outcomes where battle = "Guadalcanal");
mysql> select class from Ships group by class having count(class)=1;
mysql> select distinct name
    -> from Ships
    -> where class="Renown" or name in (select distinct ship
    -> from Outcomes where battle="North Atlantic");
mysql> select distinct name
    -> from Ships natural join Classes
    -> order by displacement, name;
mysql> select distinct country
    -> from Classes
    -> where type="bb" and country in (select country
    -> from Classes where type="bc");
mysql> select T.ship
    -> from Outcomes as T
    -> where T.result="damaged" and T.ship in (select R.ship
    -> from Outcomes as R
    -> where not T.battle=R.battle);

mysql> select ship,date_format(beginDate,'%c-%Y')as beginDateMY,date_format(endDate,'%c-%Y')as endDateMY
    -> from Battles, Outcomes
    -> where Battles.name=Outcomes.battle and year(beginDate) between 1943 and 1944;
