#SELECT * FROM bank_v2.pracownicy;
#SELECT * FROM bank_v2.stanowiska;
#SELECT * FROM bank_v2.dzialy;
#SELECT imie, nazwisko, pensja FROM bank_v2.pracownicy;
#SELECT imie, nazwisko, pensja, dodatki  FROM bank_v2.pracownicy;
#SELECT imie, nazwisko, pensja + dodatki as "wynagrodzenie calkowite" FROM bank_v2.pracownicy;
#SELECT imie, nazwisko, pensja/30 as "Dniówka", pensja/30*6 as "tygodniówka", pensja as "miesięczna", pensja *12 "roczna" FROM bank_v2.pracownicy order by pensja DESC;
#SELECT imie, nazwisko FROM bank_v2.pracownicy where nazwisko like "M%";
#SELECT imie, nazwisko FROM bank_v2.pracownicy,bank_v2.dzialy where bank_v2.dzialy.nazwa = "logistyka" or bank_v2.dzialy.nazwa = "informatyka";
#SELECT CONCAT_WS(' ', imie, nazwisko) AS "Imie Nazwisko", 
#(Select CONCAT_WS(' ', imie, nazwisko)FROM bank_v2.pracownicy where id_pracownika = 150) as "przelozony" 
#FROM bank_v2.pracownicy where id_przelozonego = 150;
