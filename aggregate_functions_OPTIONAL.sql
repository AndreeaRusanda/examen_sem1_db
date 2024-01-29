--- OPTIONALA SQL syntax for aggregate functions. 
---Min 5 SQL select queries per tabel including: COUNT, SUM, AVG, MIN, MAX

--- tabela formular
	select count(*) from formular;
	select sum(greutate) from formular;
	select avg(greutate) from formular;
	select max(id) from formular;
	select min(data_expediere) from formular;

--- tabela colet
	select avg(pret_transport), max(pret_total) from colet;
	select count(*) from colet where pret_total > 300;
	select max(ramburs) from colet;
	select count(*) from colet where plata = 'card';
	select avg(pret_total) from colet;
	
---tabela curier
	select avg(salariu) from curier;
	select max(experienta_luni) from curier where id < 65;
	select count(*) from curier where salariu between 3000 and 4500;
	select min(id) from curier;
	select sum(salariu) from curier where experienta_luni >= 12;

--- tabela colet_preluat
	select count(*) as numar_colete fromcolet_preluat;
	select avg(curier_id) as media_curierilor from colet_preluat;
	select max(id) as colet_id_maxim from colet_preluat;
	select sum(id) as suma_id_uri from colet_preluat;
	select min(curier_id) from colet_preluat;

--- tabela colet_livrat
	select count(*) as numar_colete_livrate from colet_livrat;
	select sum(ramburs) as suma_rambursurilor from colet_livrat where status = 'Livrare reusita';
	select max(id) as colet_id_maxim from colet_livrat;
	select count(*) as numar_colete_livrare_nereusita from colet_livrat where status = 'livrare reusita';
	select min(colet_preluat_id) from colet_livrat;

--- tabela rute
	select min(id) from rute;
	select count(nr_km) from rute;
	select max(curier_id) from rute;
	select sum(nr_km) from rute where id < 10;
	select avg (nr_km) from rute where nume_ruta in('Bd. 3 August - Bd. Stefan cel Mare', 'Bd. Republicii - Strada Nera');

--- tabela masina
	select sum(an_fabricatie) from masina;
	select avg(an_fabricatie) from masina where marca = 'Volkswagen';
	select count(*) from masina where an_fabricatie > 2020;
	select count(*) from masina where an_fabricatie between 2018 and 2021;
	select max(id) from masina;
	
--- tabela evidenta_combustibil
	select count(*) from evidenta_combustibil;
	select count(*) from evidenta_combustibil where km_parcursi > 200;
	select avg(km_parcursi) from evidenta_combustibil where km_parcursi > 100 and combustibil = 'diesel';
	select min(km_parcursi) from evidenta_combustibil where combustibil = 'benzina';
	select max(km_parcursi) from evidenta_combustibil;
	