---SQL syntax for update data. Min 10 per tabel

--- tabela formular
	update formular set oras_expeditor = 'Cluj-Napoca' where id = 1;
	update formular set telefon_expeditor = '0777666555' where id = 5;
	update formular set data_expediere = '2024-02-01' where id = 6;
	update formular set greutate = greutate + 1 where oras_expeditor = 'Ciacova';
	update formular set telefon_destinatar = '0788999777' where telefon_expeditor = '0711221122';
	update formular set nume_expeditor = 'George Mihai' where greutate > 10;
	update formular set telefon_destinatar = '0799888666' where oras_expeditor = 'Arad';
	update formular set oras_destinatar = 'Miriste' where telefon_expeditor = '0777344888';
	update formular set nume_expeditor = 'Cosma Ioana' where greutate < 2;
	update formular set oras_expeditor = 'Constanta' where data_expediere >= '2024-01-15';

--- tabela colet
	update colet set awb = 100100 where formular_id = 1;
	update colet set ramburs = 250.00 where pret_transport = 30.00;
	update colet set pret_transport = 40.00 where awb = 100005;
	update colet set pret_total = 210.00 where plata = 'card';
	update colet set plata = 'online' where formular_id = 12;
	update colet set awb = 100200 where pret_total = 335.00;
	update colet set pret_transport = 45.00 where ramburs > 100.00;
	update colet set pret_transport = 10.00 where formular_id = 28;
	update colet set plata = 'card' where pret_total = 151.00 and plata = 'numerar';
	update colet set awb = 100500 where ramburs = 300.00 and plata = 'numerar';

---tabela curier
	update curier set salariu = 3100 where id = 1;
	update curier set salariu = 3250 where nume = 'Maria Ionescu';
	update curier set experienta_luni = 7 where salariu = 2750;
	update curier set salariu = 2800 where experienta_luni < 12;
	update curier set nume = 'Zbarcea Sorin' where salariu = 50000
	update curier set salariu = 3300 where nume like 'St%';
	update curier set experienta_luni = 25 where nume = 'Seling Paula';
	update curier set salariu = 3450 where experienta_luni between 36 and 48;
	update curier set nume = 'Frumosu Emil' where colet_id = 39;
	update curier set salariu = 3150 where id between 10 and 14;
	
--- tabela colet-preluat
	update colet_preluat set status = 'livrat' where id = 1;
	update colet_preluat set oras_destinatar = 'Arad' where id between 2 and 4;
	update colet_preluat set oras_destinatar = 'Mosnia Veche' where curier_id = 53;
	update colet_preluat set strada = 'Strada Libertatii' where id = 5;
	update colet_preluat set status = 'returnat la expeditor' where curier_id = 51;
	update colet_preluat set strada = 'Strada Noua' where oras_destinatar = 'Timisoara';
	update colet_preluat set strada = 'Strada Secundara' where status = 'in livrare';
	update colet_preluat set status = 'anulat' where curier_id > 90;
	update colet_preluat set curier_id = 65 where status = 'pregatit pentru livrare';
	update colet_preluat set status = 'in curs de livrare' where status = 'pregatit pentru livrare';

--- tabela colet_livrat
	update colet_livrat set status = 'Livrare reusita' where id = 13;
	update colet_livrat set ramburs = 200.00 where id = 14;
	update colet_livrat set data_preluare = '2023-10-06' where id = 15;
	update colet_livrat set status = 'Livrare reusita' where ramburs > 250.00;
	update colet_livrat set ramburs = 300.00 where status = 'livrare reusita';
	update colet_livrat set status = 'Livrare finalizata' where status = 'Livrare reusita' and ramburs <= 150.00;
	update colet_livrat set ramburs = 250.00 where data_preluare between '2023-10-05' and '2023-10-10';
	update colet_livrat set data_livrare = '2023-10-12' where data_preluare between '2023-10-05' and '2023-10-10';
	update colet_livrat set status = 'Livrare anulata', ramburs = 0.00 where data_preluare < '2023-10-05';
	update colet_livrat set status = 'Livrare esuata', ramburs = 0.00 where ramburs <= 100.00 and data_preluare > '2023-10-15';

--- tabela rute
	update rute set nr_km = 16.0 where id = 1;
	update rute set oras = 'Giroc' where id = 2;
	update rute set nr_km = 20.5 where nr_km > 18;
	update rute set nume_ruta = 'Strada Abrud - Bd. Mihai Viteazu' where id = 50;
	update rute set nr_km = 18.0 where nume_ruta like '%Bulevardul%';
	update rute set nr_km = 16.5 where nr_km > 15.0 and oras = 'Timisoara';
	update rute set nume_ruta = 'Ruta noua' where id = 48;
	update rute set id = 70 where nume_ruta = 'Calea Urseni - Strada Tosca';
	update rute set nume_ruta = 'Strada Sperantei - Strada Victoriei' where curier_id = 60;
	update rute set oras = 'TIMISOARA' where id > 48;
	
--- tabela masina
	update masina set an_fabricatie = 2022 where id = 2;
	update masina set culoare = 'Albastru' where nr_inmatriculare = 'TM04RKL';
	update masina set model = 'Civic' where id = 50;
	update masina set marca = 'Audi', an_fabricatie = 2021 where id = 3;
	update masina set culoare = 'Argintiu' where id = 20;
	update masina set nr_inmatriculare = 'TM46MVW' where curier_id = 58;
	update masina set an_fabricatie = 2019 where nr_inmatriculare = 'CS95PAS';
	update masina set culoare = 'Roz' where model = 'i30';
	update masina set model = 'Astra', marca = 'Laa' where nr_inmatriculare = 'HD08COS';
	update masina set nr_inmatriculare = 'TM03VIS' where culoare = 'Roz';

--- tabela evidenta_combustibil

