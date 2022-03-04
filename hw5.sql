mysql> select distinct country
    -> from Classes natural join Ships
    -> where numGuns>= all(select numGuns from Classes);
mysql> select distinct class
    -> from Classes natural join Ships
    -> where name in (select ship
    -> from Outcomes
    -> where result="damaged");
mysql> select distinct name
    -> from Ships
    -> where class in (select T.class
    -> from Classes as T
    -> where T.bore = 16);
mysql> select battle
    -> from Outcomes
    -> where ship in (select name
    -> from Ships
    -> where class="Kongo");
mysql> select name
    -> from (select name,numGuns,bore from ships natural join Classes) as X
    -> where numGuns = (select max(numGuns)
    -> from Ships natural join Classes
    -> where bore = X.bore);