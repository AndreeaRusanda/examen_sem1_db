---SQL syntax for create tables
CREATE TABLE IF NOT EXISTS formular(
	id serial primary key NOT NULL,
	nume_expeditor varchar (100) NOT NULL,
	telefon_expeditor char (10) NOT NULL,
	oras_expeditor varchar (50) NOT NULL,
	oras_destinatar varchar (50) NOT NULL,
	telefon_destinatar char (10) NOT NULL,
	data_expediere date NOT NULL,
	greutate int NOT NULL
);

CREATE TABLE IF NOT EXISTS colet(
	id serial primary key NOT NULL,
	formular_id integer NOT NULL,
	awb int unique NOT NULL,
	ramburs numeric,
	pret_transport numeric,
	pret_total numeric,
	plata varchar (50) NOT NULL,
	foreign key(formular_id) references formular(id)
);

CREATE TABLE IF NOT EXISTS curier(
	id serial primary key NOT NULL,
	colet_id integer NOT NULL,
	nume varchar (50) NOT NULL,
	experienta_luni int,
	salariu int,
	foreign key(colet_id) references colet(id)
);

CREATE TABLE IF NOT EXISTS colet_preluat(
	id serial primary key NOT NULL,
	curier_id integer NOT NULL,
	oras_destinatar varchar (50) NOT NULL,
	strada varchar (50) NOT NULL,
	status varchar (50) NOT NULL,
	foreign key(curier_id) references curier(id)
);

CREATE TABLE IF NOT EXISTS colet_livrat(
	id serial primary key NOT NULL,
	colet_preluat_id integer NOT NULL,
	data_preluare date NOT NULL,
	data_livrare date NOT NULL,
	ramburs numeric,
	status varchar (50) NOT NULL,
	foreign key(colet_preluat_id) references colet_preluat(id)
);

CREATE TABLE IF NOT EXISTS rute(
	id serial primary key NOT NULL,
	curier_id integer NOT NULL,
	nume_ruta varchar (50) unique NOT NULL,
	nr_km numeric,
	oras varchar (50) NOT NULL,
	foreign key(curier_id) references curier(id)
);

CREATE TABLE IF NOT EXISTS masina(
    id serial PRIMARY KEY NOT NULL,
	curier_id integer NOT NULL,
    marca VARCHAR(50) NOT NULL,
    model VARCHAR(50),
    an_fabricatie INT,
    culoare VARCHAR(50),
	nr_inmatriculare char (7) unique NOT NULL,
	foreign key(curier_id) references curier(id)
);

CREATE TABLE IF NOT EXISTS evidenta_combustibil(
	id serial primary key NOT NULL,
	masina_id integer NOT NULL,
	km_parcursi numeric NOT NULL,
	combustibil varchar (50),
	foreign key(masina_id) references masina(id)
);

