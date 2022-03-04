mysql> select class,country
    -> from Classes
    -> where numGuns<10;
mysql> select T.class,T.numGuns,T.bore
    -> from
    -> (select *
    -> from Classes
    -> where bore<16 and (numGuns<9 or numGuns>9))as T
    -> order by T.displacement,T.bore,T.numGuns;
mysql> select distinct country
    -> from classes
    -> where type = "bc";
mysql> select distinct name as shipName
    -> from Ships
    -> where launched<1918;
mysql> select distinct ship,battle
    -> from Outcomes
    -> where result="sunk";
mysql> select distinct name
    -> from Ships
    -> where name=class;
mysql> select distinct name
    -> from Ships
    -> where name like 'R%';
mysql> select distinct name
    -> from Ships
    -> where name like '% % %';