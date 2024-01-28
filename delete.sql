---SQL syntax for delete data. Min 5 per tabel

--- tabela formular
	delete from formular where oras_destinatar = 'Miriste'
	delete from formular where id = 60;
	delete from formular where nume_expeditor = 'Alexandru Marin';
	delete from formular where oras_expeditor = 'Darabani';
	delete from formular where greutate = 11;

--- tabela colet
	delete from colet where awb = 100001;
	delete from colet where pret_total = 175.00;
	delete from colet where plata = 'numerar' and pret_total = 250.00;
	delete from colet where ramburs > 250.00 and pret_transport = 35.00;
	delete from colet where pret_transport = 35.00 and plata = 'numerar';

---tabela curier
	delete from curier where id = 1;
	delete from curier where experienta_luni = 22 and id = 86;
	delete from curier where id = 2 and salariu = 3250;
	?
	?

--- tabela colet_preluat
	delete from colet_preluat where id = 1;
	delete from colet_preluat where strada = 'Strada Dunarea';
	delete from colet_preluat where curier_id = 49;
	delete from colet_preluat where oras_destinatar = 'Arad';
	delete from colet_preluat where status = 'preluat de curier' and strada = 'Strada Paris';

--- tabela colet-livrat
	delete from colet_livrat where id = 1;
	delete from colet_livrat where ramburs <= 100.00;
	delete from colet_livrat where status = 'Livrare esuata';
	delete from colet_livrat where data_preluare > '2023-10-10' AND status = 'Livrare finalizata';
	delete from colet_livrat where data_preluare between '2023-10-05' and '2023-10-10';

--- tabela rute
	delete from rute where id = 1;
	delete from rute where oras = 'Giroc';
	delete from rute where nume_ruta = 'Calea Urseni - Strada Tosca' and id = 70;
	delete from rute where oras <> 'Timisoara';
	delete from rute where nume_ruta = 'Strada Martirilor - Strada Magura';
	
--- tabela masina
	delete from masina where id = 1;
	
	delete from masina where id = 1 and model = 'Logan';
	delete from masina
	delete from
	delete from
	
--- tabela evidenta_combustibil
	delete from evidenta_combustibil where masina_id = 1;
	delete from
	delete from
	delete from
	delete from
	
