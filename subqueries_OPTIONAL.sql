--- OPTIONALA SQL syntax for subqueries. 
--- Min 5 SQL select queries per tabel including: where, group by and having

--- tabela formular
	select oras_expeditor, count(*) as numar_expedieri 
	from formular 
	group by oras_expeditor;
	
	select count(*) as numar_formulare_grele
	from formular
	where greutate >= 5;

	select oras_expeditor, count(*) as numar_formulare_expediate
	from formular
	group by oras_expeditor
	having count(*) > 2;

	select oras_destinatar, count(*) as numar_formulare_destinate
	from formular
	group by oras_destinatar
	having count(*) >= 3;

	select greutate, count(*) as nr_total
	from formular
	group by greutate;

--- tabela colet
	select plata, avg(pret_total) AS pret_total_mediu
	from colet
	group by plata;

	select * from colet 
	where ramburs > 0 
	order by pret_transport;
	
	select pret_transport, count(*) as numar_inregistrari
	from colet
	group by pret_transport;

	select plata, count(*) as numar_inregistrari
	from colet
	group by plata
	having count(*) > 3;

	select plata, max(pret_total) as pret_total_maxim, min(pret_total) as pret_total_minim
	from colet
	group by plata;

---tabela curier
	select nume
	from curier
	where salariu = 3300
	group by nume

	select nume
	from curier
	where salariu <= 3000
	group by nume
	having min(experienta_luni) >= 12;

	select nume, avg(salariu) as salariu_mediu
	from curier
	where salariu <= 3150
	group by nume;
	
	select nume
	from curier
	where experienta_luni < 10
	group by nume
	having avg(salariu) > 2500;

	select experienta_luni, count(*) as total_experienta
	from curier
	group by experienta_luni;
	
--- tabela colet_preluat
	select curier_id, count(*) as total
	from colet_preluat
	group by curier_id;
	
	select status, count(*) as nr_status
	from colet_preluat
	group by status;

	select strada
	from colet_preluat
	where status = 'in asteptare la depozit'
	group by strada
	having count(*) > 5;
	
	select curier_id, count(*) as depot_arrivals
	from colet_preluat
	where status = 'ajuns la depozit'
	group by curier_id;
	
	select curier_id
	from colet_preluat
	group by curier_id
	having min(status) = 'preluat de curier' and max(status) = 'preluat de curier';

--- tabela colet-livrat
	select status, count(*) as nr_total_colete
	from colet_livrat 
	group by status;
	
	select data_livrare, avg(ramburs) as ramburs_mediu
	from colet_livrat
	group by data_livrare
	having avg(ramburs) > 100;
	
	select data_livrare, max(id) as colet_id_maxim
	from colet_livrat
	group by data_livrare;
	
	select status, min(id) as colet_id_minim
	from colet_livrat
	group by status;
	
	select data_livrare, count(*) as numar_colete
	from colet_livrat
	where ramburs = 0
	group by data_livrare;
	
	select data_livrare, max(ramburs) as ramburs_maxim
	from colet_livrat
	group by data_livrare
	having max(ramburs) > 250;

--- tabela rute
	select oras, sum(nr_km) as total_km_parcursi
	from rute
	group by oras;

	select nume_ruta, min(nr_km) as minim_km
	from rute
	where nume_ruta like '%Strada%'
	group by nume_ruta;

	select nume_ruta, min(nr_km) as minim_km
	from rute
	where length(nume_ruta) > 15
	group by nume_ruta;
	
	select nume_ruta, sum(nr_km) as total_km
	from rute
	group bynume_ruta
	order by total_km desc;

	select curier_id, count(*) as numar_rute
	from rute
	group by curier_id;

--- tabela masina
	select culoare, count(*) as numar_masini
	from masina
	group by culoare;

	select marca
	from masina
	where nr_inmatriculare like 'TM%'
	group by marca
	having count(*) >= 2;

	select model, culoare
	from masina
	group by model, culoare;

	select marca
	from masina
	where an_fabricatie in (2020, 2021)
	group by marca;

	select id, marca
	from masina
	where model = 'Golf'
	group by id, marca;

--- tabela evidenta_combustibil
	select combustibil, count(*) as numar_inregistrari
	from evidenta_combustibil
	group by combustibil;

	select masina_id, count(*) as numar_inregistrari
	from evidenta_combustibil
	group by masina_id;

	select masina_id, count(*) as numar_inregistrari
	from evidenta_combustibil
	where km_parcursi < 100
	group by masina_id;

	select masina_id, count(*) as numar_inregistrari
	from evidenta_combustibil
	where km_parcursi > 180 and combustibil = 'diesel'
	group by masina_id;

	select combustibil, count(*) as numar_inregistrari
	from evidenta_combustibil
	where km_parcursi >= 150
	group by combustibil;
