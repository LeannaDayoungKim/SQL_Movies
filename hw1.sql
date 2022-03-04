CREATE TABLE Classes(
    -> class VARCHAR(20) not null,
    -> type CHAR(2),
    -> country VARCHAR(20),
    -> numGuns INT(2),
    -> bore INT(2),
    -> displacement INT(5),
    -> PRIMARY KEY(class) );
create table Battles(
    -> name varchar(20) not null,
    -> beginDate date,
    -> endDate date,
    -> primary key(name) );
create table Outcomes(
    -> ship varchar(20) not null,
    -> battle varchar(20),
    -> result varchar(10) not null,
    -> primary key(ship, battle),
    -> foreign key (ship) references Ships(name),
    -> foreign key (battle) references Battles(name));
 create table Ships(
    -> name varchar(20) not null,
    -> class varchar(20),
    -> launched int(4),
    -> primary key(name),
    -> FOREIGN KEY(class) references Classes (class));
describe Classes;
describe Battles;
describe Outcomes;
describe Ships;