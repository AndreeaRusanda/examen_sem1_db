--- OPTIONALA SQL syntax for subqueries. 
--- Min 5 SQL select queries per tabel including: where, group by and having

--- tabela formular
	select oras_expeditor, count(*) as numar_expedieri 
	from formular 
	group by oras_expeditor;


--- tabela colet
	select * from colet 
	where ramburs > 0 
	order by pret_transport;


---tabela curier

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

--- tabela masina

--- tabela evidenta_combustibil