---SQL syntax for select data. Min 10 per tabel

--- tabela formular
	select * from formular;
	select nume_expeditor as "Nume", telefon_expeditor as "Tel. expeditor", oras_expeditor as "Oras expeditor", telefon_destinatar as "Tel. destinatar", oras_destinatar as "Oras destinatar", data_expediere as "Data expediere", greutate as "Greutate (kg)" from formular ;    
	select * from formular where greutate = 2;
	select * from formular where oras_expeditor = 'Constanta';
	select * from formular where telefon_expeditor like '0256%';
	select * from formular where nume_expeditor like '_on%';
	select * from formular where data_expediere = '2024-01-01';
	select * from formular where greutate between 3 and 7;
	select * from formular where oras_destinatar = 'Timisoara' and greutate > 5;
	select * from formular where 
	oras_expeditor = 'Bucuresti' 
	or 
	oras_expeditor= 'Arad' 
	or 
	oras_expeditor= 'Ciacova';

--- tabela colet
	select * from colet;
	select awb as "AWB", pret_total as "Pret", plata as "Motoda achitare" from colet;
	select * from colet where ramburs = 0.00;
	select * from colet where plata = 'card';
	select * from colet where pret_transport > 30;
	select avg(pret_transport), max(pret_total) from colet;
	select awb, pret_total from colet where ramburs = 0.00 and plata = 'card';
	select * from colet where plata = 'online' and pret_total > 150;
	select count(*) from colet where pret_total > 300;
	select * from colet order by pret_total desc;
	
--- tabela curier
	select * from curier 
	select nume as "Nume si prenume", experienta_luni as "Experienta (luni)", salariu as "Salariu net" from curier;
	select * from curier where salariu > 4000;
	select * from curier where experienta_luni = 12;
	select * from curier where nume like '%ar%';
	select * from curier where salariu between 3000 and 3500;
	select * from curier where colet_id > 20 and salariu < 3500;
	select * from curier where nume = 'Ivan Paula';
	select avg(salariu) as "Salariu mediu" from curier;
	order by experienta_luni desc;
	select nume,
	max(salariu) as from curier
	group by nume;

--- tabela colet-preluat
	select * from colet_preluat;
	select id as "ID", curier_id as "Nr. curier", oras_destinatar as "Oras", strada as "Str." from colet_preluat;
	select * from colet_preluat where status = 'in asteptare la depozit';
	select * from colet_preluat where status = 'preluat de curier' order by curier_id;
	select * from colet_preluat where curier_id > 70;
	select * from colet_preluat where strada = 'Strada Mures';
	select count(*) from colet_preluat where status = 'pregatit pentru livrare';
	select * from colet_preluat where status = 'in tranzit' order by strada;
	select * from colet_preluat where status like '%la depozit';
	select * from colet_preluat where strada like '%Mihai%';

--- tabela colet-livrat
	select * from colet_livrat;
	select id as "ID", colet_preluat_id as "ID colet preluat", data_preluare as "Data preluare", data_livrare as "Data livrare" from colet_livrat;
	select * from colet_livrat where id = 1;
	select * from colet_livrat where ramburs > 300.00;
	select * from colet_livrat where ramburs <= 150.00;
	select * from colet_livrat where status = 'Livrare reusita';
	select * from colet_livrat where data_preluare between '2023-10-05' and '2023-10-10';
	select * from colet_livrat order by ramburs desc;
	select sum(ramburs) from colet_livrat;
	select * from colet_livrat where ramburs > 200.00 or status = 'Livrare reusita' order by data_livrare asc;

--- tabela rute
	select * from rute;
	select id as "ID", curier_id as "Nr. curier", nume_ruta as "Nume ruta", oras as "Oras" from rute; 	
	select * from rute where curier_id = 51;
	select * from rute where nume_ruta LIKE 'Strada%';
	select * from rute where nr_km > 10;
	select * from rute where nume_ruta like '%Calea%' and nr_km > 15;
	select * from rute where nr_km between 5.0 and 10.0;
	select * from rute where nume_ruta like 'Calea%' and nr_km > 15.0;
	select * from rute where nr_km <= 3.0 and oras = 'Timisoara';
	select * from rute where id > 40 and nr_km > 3.0;

--- tabela masina
	select * from masina;
	select id as "ID", curier_id as "Numaru curier", marca as "Masina", nr_inmatriculare as "Numar de inmatriculare" from masina;
	select * from masina where culoare = 'Rosu';
	select * from masina where marca = 'Dacia' and nr_inmatriculare like 'TM%';
	select * from masina where an_fabricatie < 2016 or an_fabricatie > 2021;
	select * from masina where model = 'Golf' and (culoare = 'Alb' or culoare = 'Negru');
	select * from masina where curier_id in (55, 60);
	select * from masina where nr_inmatriculare = 'B021RAI';
	select * from masina where marca = 'Ford' and an_fabricatie >= 2018;
	select * from masina where (culoare = 'Rosu' or culoare = 'Verde') and an_fabricatie < 2018;

--- tabela evidenta_combustibil
	select * from evidenta_combustibil;
	select id as "ID", masina_id as "Nr. masina", combustibil as "Combustibil" from evidenta_combustibil;	
	select * from evidenta_combustibil where combustibil = 'diesel';
	select * from evidenta_combustibil where masina_id between 10 and 20;
	select sum(km_parcursi) from evidenta_combustibil;
	select * from evidenta_combustibil where masina_id = 1;
	select count(*) from evidenta_combustibil;
	select * from evidenta_combustibil where km_parcursi > 150;
	select * from evidenta_combustibil where km_parcursi >= 200 and combustibil = 'benzina';
	select * from evidenta_combustibil order by km_parcursi asc;
