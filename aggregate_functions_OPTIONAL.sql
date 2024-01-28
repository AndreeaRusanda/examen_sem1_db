--- OPTIONALA SQL syntax for aggregate functions. 
---Min 5 SQL select queries per tabel including: where, group by and having

--- tabela formular
	select oras_expeditor, count(*) as numar_expedieri 
	from formular 
	group by oras_expeditor;

--- tabela colet

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
	select status, count(*) as nr_total
	from colet_livrat 
	group by status;


--- tabela rute

--- tabela masina

--- tabela evidenta_combustibil
