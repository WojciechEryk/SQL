Drop Table if exists activity;
CREATE TABLE Activity (
    `Idactivity` INT NOT NULL AUTO_INCREMENT,
    `Message` TEXT CHARACTER SET UTF8 COLLATE UTF8_POLISH_CI NOT NULL,
    `Querry` TEXT CHARACTER SET UTF8 COLLATE UTF8_POLISH_CI NOT NULL,
    PRIMARY KEY (`Idactivity`)
)  DEFAULT CHARSET=UTF8 COLLATE UTF8_BIN AUTO_INCREMENT=1;

delimiter |
Create Trigger wypozyczSamochod
After insert on wypozyczenia
FOR EACH ROW
BEGIN
insert into `activity`
set message= 
(select(Concat("wypozyczono auto: ",marka," ", model)) 
from auta where idAuta = new.idAuta);
END
|

insert into wypozyczenia 
set idklienta = 1, idauta=1, datawyp="2017-09-14", datazwrotu="2017-09-15", naleznosc=111;
|
select * from activity
