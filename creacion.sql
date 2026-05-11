CREATE DATABASE laboratorioSQL;

CREATE TABLE IF NOT EXISTS Profesor(
	doc_prof INT NOT NULL, 
	nom_prof VARCHAR(30) NOT NULL,
	ape_prof VARCHAR(30) NOT NULL,  
	cate_prof INT, 
	sal_prof INT,
	PRIMARY KEY (doc_prof)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Curso(
	cod_curs INT NOT NULL AUTO_INCREMENT,
	nom_curs VARCHAR(100) NOT NULL,
	horas_cur INT,
	valor_cur INT,
	PRIMARY KEY (cod_curs)	
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Estudiante(
	doc_est VARCHAR(11) NOT NULL,
	nom_est VARCHAR(30) NOT NULL,
	ape_est VARCHAR(30),
	edad_est INT,
	PRIMARY KEY (doc_est)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Estudiantexcurso(
	fec_inic_estcur DATE(30),
	FOREIGN KEY (cod_cur_estcur(11)) REFERENCES Curso(cod_curs),
	FOREIGN KEY (doc_est_estcur(30)) REFERENCES Curso(doc_curs)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Cliente(
	id_cli VARCHAR(11) NOT NULL,
	nom_cli VARCHAR(30) NOT NULL,
	ape_cli VARCHAR(30),
	dir_cli VARCHAR(100),
	dep_cli VARCHAR(20),
	mes_cum_cli VARCHAR(10),
	PRIMARY KEY (id_cli)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Articulo(
	id_art INT NOT NULL AUTO_INCREMENT,
	tit_art VARCHAR(100) NOT NULL,
	aut_art VARCHAR(100), 
	edi_art VARCHAR(300),
	prec_art INT
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Pedido(
	id_ped INT NOT NULL AUTO_INCREMENT, 
	fec_ped DATE,
	val_ped INT,
	FOREIGN KEY (id_cli_ped VARCHAR(11)) REFERENCES Cliente(id_cli)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Articuloxpedido(
	FOREIGN KEY(id_ped_artped(INT)) REFERENCES Pedido(id_ped),
	FOREIGN KEY(id_art_artped) REFERENCES Articulo(id_art),
	can_art_artped INT,
	val_ven_art_artped INT
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Compañia(
	comnit VARCHAR(11) NOT NULL,
	comnombre VARCHAR(30) NOT NULL,
	comañofun INT,
	comreplegal VARCHAR(100),
	PRIMARY KEY (comnit)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
	
CREATE TABLE IF NOT EXISTS TiposAutomotores(
	autotipo INT NOT NULL,
	PRIMARY KEY(autotipo)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Automotores(
	autoplaca VARCHAR(6) NOT NULL,
	Automarca VARCHAR(30) NOT NULL,
	Automodelo INT,
	Autonumpasajeros INT,
	Autocilindraje INT,
	Autonumchasis VARCHAR(20),
	foreign key(autotipo) references TiposAutomotores(autotipo)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Aseguramientos(
	asecodigo INT NOT NULL AUTO_INCREMENT,
	Asefechainicio DATE(30) NOT NULL,
	asefechaexpiracion DATE,
	asevalorasegurado INT,
	Aseestado VARCHAR,
	Asecosto INT,
	FOREIGN KEY (Aseplaca VARCHAR(20)) REFERENCES Automotores(autoplaca)
	PRIMARY KEY(asecodigo)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS Incidentes(
	incicodigo INT NOT NULL AUTO_INCREMENT,
	incifecha DATE,
	incilugar VARCHAR(40),
	incicantheridos INT,
	incicanfatalidades INT,
	incicanautosinvolucrados INT,
	FOREIGN KEY(inciplaca VARCHAR(6)) REFERENCES Automotores(autoplaca) 
	PRIMARY KEY(incicodigo)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
