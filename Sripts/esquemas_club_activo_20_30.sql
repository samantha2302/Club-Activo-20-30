CREATE SCHEMA desarrollo;
CREATE SCHEMA prueba;
CREATE SCHEMA produccion;

-- TABLAS DEL ESQUEMA DESARROLLO --

CREATE TABLE desarrollo.club
( 
	id_club 			NUMERIC(15) NOT NULL,
	name_club 			VARCHAR(50) NOT NULL,
	phone_number_club 	NUMERIC(15) NOT NULL,
	mail_club 			VARCHAR(100) NOT NULL, 
	anniversary_club 	VARCHAR(10) NOT NULL,
	
	CONSTRAINT pk_club PRIMARY KEY(id_club)
);

CREATE TABLE desarrollo.member
(
	id_member      			NUMERIC(15)   NOT NULL,
    name_member  	   	 	VARCHAR(30)  NOT NULL,
	last_name_member		VARCHAR(30)  NOT NULL,
	phone_number_member		NUMERIC(15)  NOT NULL,
	age_member				NUMERIC(100) NOT NULL,
	status_member			VARCHAR(30)  NOT NULL,
	mail_member				VARCHAR(100)  NOT NULL,
	id_club 				NUMERIC(15)  NOT NULL,
	id_project 				NUMERIC(15)  NOT NULL,
	id_board_of_directors 	NUMERIC(15)  NOT NULL,
	
    CONSTRAINT pk_marca PRIMARY KEY (id_member)
);

CREATE TABLE desarrollo.membership_payment
(
    membership_payment_record     NUMERIC(10)  NOT NULL,
    status_membership_payment  	  VARCHAR(30)  NOT NULL,
	amount_membership_payment	  NUMERIC(10)  NOT NULL,
	date_membership_payment		  VARCHAR(10)  NOT NULL,
	id_member      				  NUMERIC(15)   NOT NULL,
	
    CONSTRAINT pk_membership_payment PRIMARY KEY (membership_payment_record)
);

CREATE TABLE desarrollo.project
(
	id_project 										NUMERIC(15)  NOT NULL,
	name_project 									VARCHAR(50)  NOT NULL,
	description_project 							VARCHAR(300) NOT NULL,
	number_of_hours_invested_per_partner_project 	NUMERIC(10)   NOT NULL,
	completion_date_of_the_project 					VARCHAR(10)  NOT NULL,
	number_of_children_benefited_by_project 		NUMERIC(10)  NOT NULL,
	number_of_adults_benefited_by_project 			NUMERIC(10)  NOT NULL,
	total_amount_of_sponsorship_for_project  		NUMERIC(10)  NOT NULL,
	
	CONSTRAINT pk_project PRIMARY KEY(id_project)
);


CREATE TABLE desarrollo.type_project 
(
	id_type_project   NUMERIC(10) 	NOT NULL,
	educational       BOOLEAN 	 	NOT NULL,
	ecological        BOOLEAN 	 	NOT NULL,
	recreation        BOOLEAN 	 	NOT NULL,
	health            BOOLEAN 	 	NOT NULL,
	other 			  BOOLEAN 	 	NOT NULL,
	id_project 		  NUMERIC(15)   NOT NULL,

	CONSTRAINT pk_type_project PRIMARY KEY(id_type_project)
);


CREATE TABLE desarrollo.category_project
(
	id_category_project           NUMERIC(10)  NOT NULL,
	social_service                BOOLEAN 	   NOT NULL,
	collection_category_project   BOOLEAN 	   NOT NULL,
	id_project 					  NUMERIC(15)  NOT NULL,
	
	CONSTRAINT pk_category_project PRIMARY KEY(id_category_project)
);


CREATE TABLE desarrollo.sponsor
(
	id_sponsor                   NUMERIC(20)  NOT NULL,
	name_sponsor                 VARCHAR(100) NOT NULL,
	mail_sponsor                 VARCHAR(25)  NOT NULL,
	status_sponsor               VARCHAR(10)  NOT NULL,
	phone_number_sponsor         NUMERIC(15)   NOT NULL,
	id_project 					 NUMERIC(15)  NOT NULL,

	CONSTRAINT pk_sponsor PRIMARY KEY(id_sponsor)
);


CREATE TABLE desarrollo.economic_entry
(
	transaction_number_economic_entry    NUMERIC(10)  NOT NULL,
	description_economic_entry           VARCHAR(100) NOT NULL,
	date_economic_entry 		         VARCHAR(15)  NOT NULL,
	amount_economic_entry 		         NUMERIC(30)  NOT NULL,
	id_sponsor                  		 NUMERIC(20)  NOT NULL,
	
	CONSTRAINT pk_economic_entry PRIMARY KEY(transaction_number_economic_entry)
);


CREATE TABLE desarrollo.other_donations  
(
	serial_number_other_donations    NUMERIC(10)  NOT NULL,
	date_other_donations             VARCHAR(10)  NOT NULL,
	description_other_donations      VARCHAR(100) NOT NULL,
	approximate_amount               NUMERIC(30)  NOT NULL,
	id_sponsor                   	 NUMERIC(20)  NOT NULL,

	CONSTRAINT pk_other_donations PRIMARY KEY(serial_number_other_donations)
);


CREATE TABLE desarrollo.beneficiary
(
	id_beneficiary            NUMERIC(20)  NOT NULL,
	name_beneficiary          VARCHAR(30)  NOT NULL,
	last_name_beneficiary     VARCHAR(50)  NOT NULL,
	phone_number_beneficiary  NUMERIC(15)  NOT NULL, 
	address                   VARCHAR(300) NOT NULL,
	mail_beneficiary          VARCHAR(50)  NOT NULL,
	id_project 				  NUMERIC(15)  NOT NULL,

	CONSTRAINT pk_beneficiary PRIMARY KEY(id_beneficiary)
); 


CREATE TABLE desarrollo.board_of_directors
(
	id_board_of_directors 		NUMERIC(15) NOT NULL,
	year_board_of_directors 	NUMERIC(5)  NOT NULL,
	president 					VARCHAR(50) NOT NULL,
	vice_president 				VARCHAR(50) NOT NULL,
	secretary 					VARCHAR(50) NOT NULL,
	treasurer 					VARCHAR(50) NOT NULL,
	fiscal 						VARCHAR(50) NOT NULL,
	vocal1 						VARCHAR(50) NOT NULL,
	vocal2 						VARCHAR(50) NOT NULL,
	director1 					VARCHAR(50) NOT NULL,
	director2 					VARCHAR(50) NOT NULL,
	sargeant_at_arms 			VARCHAR(50) NOT NULL,
	
	CONSTRAINT pk_board_of_directors PRIMARY KEY(id_board_of_directors)
);


CREATE TABLE desarrollo.club_meeting
(
	id_club_meeting 			NUMERIC(15) NOT NULL,
	date_club_meeting 			VARCHAR(10) NOT NULL,
	hour_club_meeting 			VARCHAR(10)  NOT NULL,
	type_club_meeting 			VARCHAR(40) NOT NULL,
	reunion_class 				VARCHAR(20) NOT NULL,
	attendance_club_meeting 	VARCHAR(10)  NOT NULL,
	id_member      				NUMERIC(15)  NOT NULL,
	
	CONSTRAINT pk_club_meeting PRIMARY KEY(id_club_meeting)
);


CREATE TABLE desarrollo.national_or_international_meeting
(
	id_national_or_international_meeting 			NUMERIC(15) NOT NULL,
	attendance_national_or_international_meeting 	VARCHAR(10)  NOT NULL,
	type_national_or_international_meeting 			VARCHAR(20) NOT NULL,
	hour_national_or_international_meeting 			VARCHAR(10)  NOT NULL,
	date_national_or_international_meeting 			VARCHAR(10) NOT NULL,
	id_board_of_directors 							NUMERIC(15) NOT NULL,
	
	CONSTRAINT pk_national_or_international_meeting PRIMARY KEY(id_national_or_international_meeting)
);


CREATE TABLE desarrollo.bill_payment
(
    registry_number_bill_payment    VARCHAR(10)  NOT NULL,
    date_bill_payment  	  			VARCHAR(10)  NOT NULL,
	amount_bill_payment				NUMERIC(10)  NOT NULL,
	trade_bill_payment				VARCHAR(100) NOT NULL,
	description_bill_payment		VARCHAR(200) NOT NULL,
	discount_bill_payment			NUMERIC(10)   NOT NULL,
	id_club 						NUMERIC(15)  NOT NULL,
	
    CONSTRAINT pk_bill_payment PRIMARY KEY (registry_number_bill_payment)
);


CREATE TABLE desarrollo.payment
(
    registry_number_payment     VARCHAR(10)   NOT NULL,
    date_payment  	  			VARCHAR(10)   NOT NULL,
	trade_payment	  			VARCHAR(100)  NOT NULL,
	amount_payment				NUMERIC(10)   NOT NULL,
	description_payment			VARCHAR(200)  NOT NULL,
	id_club 					NUMERIC(15)   NOT NULL,
	
    CONSTRAINT pk_payment PRIMARY KEY (registry_number_payment)
);


CREATE TABLE desarrollo.payment_to_national
(
    registry_number_payment_national    VARCHAR(10)  NOT NULL,
    date_payment_to_national  	  		VARCHAR(10)  NOT NULL,
	amount_payment_to_national			NUMERIC(10)  NOT NULL,
	status_payment_to_national			VARCHAR(15) NOT NULL,
	id_club 							NUMERIC(15)  NOT NULL,
	
    CONSTRAINT pk_payment_to_national PRIMARY KEY (registry_number_payment_national)
);


CREATE TABLE desarrollo.volunteer 
(
	id_volunteer 				NUMERIC(15) NOT NULL,
	name_volunteer 				VARCHAR(50) NOT NULL,
	last_name_volunteer 		VARCHAR(50) NOT NULL,
	phone_number_volunteer 		NUMERIC(15) NOT NULL,
	mail_volunteer 				VARCHAR(100) NOT NULL,
	id_club 					NUMERIC(15) NOT NULL,
	
	CONSTRAINT pk_volunteer PRIMARY KEY(id_volunteer)
);


CREATE TABLE desarrollo.social_media
(
    id_social_media       VARCHAR(20)  NOT NULL,
    social_network  	  VARCHAR(80)  NOT NULL,
	number_of_followers	  NUMERIC(10)  NOT NULL,
	id_club 			  NUMERIC(15)  NOT NULL,
	
    CONSTRAINT pk_social_media PRIMARY KEY (id_social_media)
);


CREATE TABLE desarrollo.event
(
	id_event 		NUMERIC(15) NOT NULL,
	date_event 		VARCHAR(10) NOT NULL,
	name_event 		VARCHAR(50) NOT NULL,
	event_type 		VARCHAR(25) NOT NULL,
	price_event 	NUMERIC(10) NOT NULL,
	
	CONSTRAINT pk_event PRIMARY KEY(id_event)
);


CREATE TABLE desarrollo.camaraderie
(
	id_camaraderie 						NUMERIC(15) NOT NULL,
	event_club_camaraderie 				VARCHAR(15) NOT NULL,
	event_day_camaraderie 				VARCHAR(10) NOT NULL,
	photos_ot_the_event_camaraderie 	NUMERIC(10) NOT NULL,
	id_event 							NUMERIC(15) NOT NULL,
	
	CONSTRAINT pk_camaraderia PRIMARY KEY(id_camaraderie)
);

CREATE TABLE desarrollo.attend_member_event(
	id_member  NUMERIC(15) NOT NULL,
	id_event   NUMERIC(15) NOT NULL,

	FOREIGN KEY (id_member) REFERENCES member (id_member),
	FOREIGN KEY (id_event) REFERENCES event (id_event)

);

--FOREIGN KEYS TABLES

--RELATION OF MEMBER WITH CLUB
ALTER TABLE desarrollo.member
  ADD CONSTRAINT fk_member_club
  FOREIGN KEY (id_club) REFERENCES club (id_club);

--RELATION OF MEMBER WITH PROJECT
ALTER TABLE desarrollo.member
  ADD CONSTRAINT fk_member_project
  FOREIGN KEY (id_project) REFERENCES project (id_project);

--RELATION OF MEMBER WITH BOARD OF DIRECTIONS  
ALTER TABLE desarrollo.member
  ADD CONSTRAINT fk_member_board_of_directors
  FOREIGN KEY (id_board_of_directors) REFERENCES board_of_directors (id_board_of_directors);

--RELATION OF MEMBERSHIP PAYMENT WITH MEMBER 
ALTER TABLE desarrollo.membership_payment
  ADD CONSTRAINT fk_membership_payment_member
  FOREIGN KEY (id_member) REFERENCES member (id_member);
  
--RELATION DE CATERORY PROJECT WITH PROJECT
ALTER TABLE desarrollo.category_project
  ADD CONSTRAINT fk_category_project_project
  FOREIGN KEY (id_project) REFERENCES project (id_project);

--RELATION OF TYPE PROJECT WITH PROJECT  
ALTER TABLE desarrollo.type_project
  ADD CONSTRAINT fk_type_project_project
  FOREIGN KEY (id_project) REFERENCES project(id_project);
  
--RELATION OF SPONSOR WITH PROJECT  
ALTER TABLE desarrollo.sponsor
  ADD CONSTRAINT fk_sponsor_project
  FOREIGN KEY (id_project) REFERENCES project(id_project);

--RELATION OF OTHER DONATIONS WITH SPONSOR   
ALTER TABLE desarrollo.other_donations
  ADD CONSTRAINT fk_other_donations_sponsor
  FOREIGN KEY (id_sponsor) REFERENCES sponsor(id_sponsor);

--RELATION OF ECONOMIC ENTRY WITH SPONSOR 
ALTER TABLE desarrollo.economic_entry
  ADD CONSTRAINT fk_economic_entry_sponsor
  FOREIGN KEY (id_sponsor) REFERENCES sponsor(id_sponsor);

--RELATION OF BENEFICIARY WITH PROJECT  
ALTER TABLE desarrollo.beneficiary
  ADD CONSTRAINT fk_beneficiary_project
  FOREIGN KEY (id_project) REFERENCES project(id_project);

--RELATION OF CLUB MEETING WITH MEMBER  
ALTER TABLE desarrollo.club_meeting
  ADD CONSTRAINT fk_club_meeting_member  
  FOREIGN KEY (id_member) REFERENCES member(id_member);

--RELATION OF NATIONAL OR INTERNATIONAL MEETING WITH BOAR OF DIRECTORS  
ALTER TABLE desarrollo.national_or_international_meeting 
  ADD CONSTRAINT fk_national_or_international_meeting_board_of_directors
  FOREIGN KEY (id_board_of_directors) REFERENCES board_of_directors(id_board_of_directors);

--RELATION OF BILL PAYMENT WITH CLUB  
ALTER TABLE desarrollo.bill_payment
  ADD CONSTRAINT fk_bill_payment_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF PAYMENT WITH CLUB  
ALTER TABLE desarrollo.payment
  ADD CONSTRAINT fk_payment_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF PAYMENT TO NATIONAL WITH CLUB  
ALTER TABLE desarrollo.payment_to_national
  ADD CONSTRAINT fk_payment_to_national_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF VOLUNTEER WITH CLUB   
ALTER TABLE desarrollo.volunteer
  ADD CONSTRAINT fk_volunteer_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF SOCIAL MEDIA WITH CLUB   
ALTER TABLE desarrollo.social_media
  ADD CONSTRAINT fk_social_media_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF CAMARADERIE WITH EVENT  
ALTER TABLE desarrollo.camaraderie
  ADD CONSTRAINT fk_camaraderie_event
  FOREIGN KEY (id_event) REFERENCES event(id_event);
  
 
-- DATOS --
--INSERT IN THE TABLE club
INSERT INTO desarrollo.club Values(3002045068,'San José',50671149075,'ca2030@racsa.co.cr','18/03/1956');
INSERT INTO desarrollo.club Values(3002078693,'Tres Ríos',50683185215,'info@activo2030tresrios.org','08/09/1979');
INSERT INTO desarrollo.club Values(3002754421,'Metrópoli',50686487615,'clubactivo2030metropoli@gmail.com','14/10/2017');
INSERT INTO desarrollo.club Values(3002800540,'Tilaran',50622332030,'clubactivo2030@gmail.com','02/03/1974');
INSERT INTO desarrollo.club Values(3002674149,'Limón',50683185215,'clubactivo2030limon@gmail.com','23/10/2012');

--INSERT IN THE TABLE board_of_directors
INSERT INTO desarrollo.board_of_directors VALUES(02,2018,'Rosales Sanchez','Helen Sandi','Hugo Mora','Donald Torres','Rosa Fernandez','Fernando Tencio',
	   								  'David Rodriguez','Moises Gamboa','Magdalena Carmona','Gledys Gutierrez');
INSERT INTO desarrollo.board_of_directors VALUES(64,2020,'Raymundo Castillo','Claudio Salas','Anabelle Quintanilla','Santiago Romay',
									  'Armando Moreira','Leticia Reyes','Federica Salis','Diniveth Vivas',
									  'Jader Ojeda','Kristell Duarte');
INSERT INTO desarrollo.board_of_directors VALUES(27,2006,'Roy Oviedo','Ruben Marin','Stephanie Quesada','Maria Alfaro',
									  'Alfonso Acuña','Sabrina Juarez','Rodolfo Jimenez','Jenny Lopez',
									  'Manuelita Gomez','Luis Bolaños');
INSERT INTO desarrollo.board_of_directors VALUES(04,2021,'Hazel Navarro','Miguel Salazar','Ana Carranza','Antonio Vazquez',
									  'Adriana Rojas','Cesar Solartes','Lucinia Salazar','Guillermo Guillen',
									  'Andrea Hidalgo','Javier Solano');
INSERT INTO desarrollo.board_of_directors VALUES(12,2019,'Jimena Osorio','Sabina Rodriguez','Ana Aragon',
									  'Maria Gamboa','Bruno Velazquez','Oscar Osorio','Eddie Duarte','Lisseth Vivaz',
									  'Xiomara Rojas','Mirieth Castro');
INSERT INTO desarrollo.board_of_directors VALUES(07,2019,'Mario Zuñiga','Pamela Centeno','Lia Murillo','Julian Cruz',
									  'Margareth Aguilar','Esteban Cordero','Catalina Lobo','Karina Valverde',
									  'Karina Urbina','Julio Robleto');
INSERT INTO desarrollo.board_of_directors VALUES(08,2020,'Jones Cruz','Jose Hidalgo','Eva Navarro','Resne Carrera',
									  'Mia Brenes','Rogelio Garcia','Fabio Salas','Fabricio Chacon',
									  'Gabriela Martinez','Fabian Raudez');
INSERT INTO desarrollo.board_of_directors VALUES(15,1971,'Cesar Solartes','Kristel Soto','Alajandra Barrantes','Liz Vega',
									  'Monserrat del Castillo','Porras','Segura','Carmen Sequeira',
									  'Pablo Obando','Nicolas Mena');
INSERT INTO desarrollo.board_of_directors VALUES(03,2020,'Gerardo Duran','Gonzalo Carvajal','Justin Solano','Patricia Artavia',
									  'Monica Venegas','Elizabeth Monge','Erick Orozco','Lara Benavidez',
									  'Leo Motoya','Nora Garita');
INSERT INTO desarrollo.board_of_directors VALUES(37,2016,'Luisa Guevara','Luz Carrillo','Raul Coto','Sarah Morera',
									  'Genesis Santana','Ulises Loria','Emma Cubillo','Mariana Leiva',
									  'Jorge Cubero','Isabel Ulloa');
INSERT INTO desarrollo.board_of_directors VALUES(24,2001,'Kaina Trejos','Manuel Masis','Lizbeth Saenz','Josue Saborio',
									  'Daniel Blanco','Alejandra Lizano','Antonio Moreno','Lucia Acosta',
									  'Wendy Aguirre','Fabiola Rios');
INSERT INTO desarrollo.board_of_directors VALUES(16,2011,'Miguel Medina','Geancarlo Zeledon','Rafael Conejo','Gledis Cardenas',
									  'Elisalieth Parra','Arturo Montes','Anleth Estrada','Patricia Barientos',
									  'Carlos Solera','Carmen Viales');
INSERT INTO desarrollo.board_of_directors VALUES(09,2007,'Ester Montiel','Gabriel Cabezas','Hugo Cardenas','Yindra Huertas',
									  'Sugelen Pineda','Gregorio Peralta','Laura Jarquin','Francela Luna',
									  'Calixto Figueros','Dayana Chaverri');
INSERT INTO desarrollo.board_of_directors VALUES(11,2013,'Rut Santamaria','Otiel Ocampo','Fabian Guadamuz','Meylin Montenegro',
									  'Cleotilde Mayorga','Nelson Barahona','Jose Jimenez','Leandro Astrada',
									  'Angelica Baltodano','Yoselin Medina');
INSERT INTO desarrollo.board_of_directors VALUES(13,2015,'Nohemi Blanco','Aaron Jimenez','John Guillen','Andrey Sandi',
									  'Keylin Contreras','Idania Aguero','Saul Villalobos','Ericka Pereira',
									  'Yendry Coto','Samuel Ugalde');

--INSERT IN THE TABLE project
INSERT INTO desarrollo.project VALUES(63,'Rueditas de amor','entregado sillas de ruedas y coches para niños y niñas que presentan necesidades especiales',
	   					   6,'12/06/2004',10,0,12725000);
INSERT INTO desarrollo.project VALUES(07,'Lecheton','Gran colecta nacional de leche, con la finalidad de donarlo
						   a hogares, asilos de ancianos,albergues y comedores infatiles de 
						   escasos recursos',20,'19/01/2010',3250,2075,625000);
INSERT INTO desarrollo.project VALUES(02,'Magico Sueño de Amor','Pretende cumplir sueños a niños que se encuentran con
						   enfermedades en Fase Terminal',10,'20/03/2007',25,0,365000);
INSERT INTO desarrollo.project VALUES(06,'Celebración día del niño','Se les hace a los niños una celebración para
						   felicitarlos',15,'09/09/2000',1627,0,5450000);
INSERT INTO desarrollo.project VALUES(18,'Entrega de Computadoras en Casa de Pan','Se dan computadoras portatiles y accesorios a niños',
						   4,'02/02/2018',10,0,1075285);
INSERT INTO desarrollo.project VALUES(36,'Equinoterapia','Se realiza una donación en conjunto con Plantas Eólicas SRL para 
						   el transporte de los niños con Autismo que reciben equinoterapia',5,'21/04/2008',21,0,
						   11500000);
INSERT INTO desarrollo.project VALUES(40,'Inicio de clases','Entrega de útiles escolares al inicio de la temporada 
						   escolar',4,'25/01/1989',125,0,8957000);
INSERT INTO desarrollo.project VALUES(264,'Enjoy','Para celebra el día de niño de una manera diferente llevando alegría en una dulce cajita, 
						   nuestra cajita Enjoy, en tiempos de COVID',5,'09/09/2019',2375,0,12584000);			
INSERT INTO desarrollo.project VALUES(09,'Peaje Voluntario','Recaudación de fondos para las actividades que se realizan 
						   durante el año, como las donaciones a centros y comedores infantiles',8,'07/05/2002',
						   456000,221000,3500000);
INSERT INTO desarrollo.project VALUES(52,'Cena Navideña','Preparar una cena navideña para niños de bajos recursos',
						   12,'25/12/2006',70,0,175000);	
INSERT INTO desarrollo.project VALUES(08,'Ven al cine conmigo','Visita a Cinemas con Niños de áreas rurales',
						   10,'14/11/2009',30,0,256000);
INSERT INTO desarrollo.project VALUES(72,'Construcción del Centro de Educación Comunitario','Construcción de un centro donde podamos apoyar a la niñez 
						  y a la juventud para contribuir a su desarrollo en la comunidad',7,'02/03/2015',52,13,54896400);
INSERT INTO desarrollo.project VALUES(14,'Eco Cabalgata','Se realizan actividades para recaudación de fondos para los grupos de adultos mayores',
							15,'17/09/2018',0,325,3075000);
INSERT INTO desarrollo.project VALUES(13,'Stand Up Comedy Show','Recaudacion de fondos para proyectos',4,'08/11/2015',552,253,2300400);
INSERT INTO desarrollo.project VALUES(45,'Sesiones de Zumba en Verano','Promover el ejercicio físico y a la vez recaudar fondos para proyectos',
						   3,'20/09/2019',125,356,1964142);

--INSERT IN THE TABLE member
INSERT INTO desarrollo.member VALUES(109511760,'Rosales','Sanchez Bonilla',50673456891,27,'Activo','rosalessb95@gmail.com',3002754421,07,02);
INSERT INTO desarrollo.member VALUES(206110897,'Claudio','Salas Contreras',50684629150,42,'Activo','clausalas879@gmail.com',3002045068,02,64);
INSERT INTO desarrollo.member VALUES(203360145,'Santiago','Romay Barbosa',50678496351,51,'Activo','romaybarsan@gmail.com',3002045068,02,64);
INSERT INTO desarrollo.member VALUES(00010076966,'Jenny','Lopez Morales',18095356500,35,'Activo','lopezmorales@gmail.com',3002078693,06,27);
INSERT INTO desarrollo.member VALUES(406998547,'Rodolfo','Jimenez Castillo',50682157046,31,'Activo','olfocast@gmail.com',3002078693,06,27);
INSERT INTO desarrollo.member VALUES(108967435,'Guillermo','Guillen Gomez',50665847637,48,'Activo','guigomez@gmail.com',3002754421,18,04);
INSERT INTO desarrollo.member VALUES(214690877,'Andrea','Hidalgo Guzman',50670315162,25,'Activo','guzhidal@gmail.com',3002754421,18,04);
INSERT INTO desarrollo.member VALUES(6084107319,'Jimena','Osorio Tenorio',50660054781,55,'Inactivo','menatenorio@hotmail.com',3002800540,36,12);
INSERT INTO desarrollo.member VALUES(365148956,'Sabina','Rodriguez Hernandez',50687569412,46,'Activo','rodrhernansab@gmail.com',3002800540,36,12);
INSERT INTO desarrollo.member VALUES(102890141,'Ana','Aragon Arauz',50672854123,53,'Inactivo','arauzgonana@ghotmail.com',3002800540,36,12);
INSERT INTO desarrollo.member VALUES(102364897,'Maria','Gamboa Mata',50689457123,42,'Inactivo','gambriama@gmail.com',3002800540,40,12);
INSERT INTO desarrollo.member VALUES(703486957,'Julio','Robleto Rodriguez',50684756123,35,'Activo','juliorodirguez@gmail.com',3002674149,264,07);
INSERT INTO desarrollo.member VALUES(636210569,'Jones','Cruz Diaz',50689513269,39,'Inactivo','jonescruz@gmail.com',3002674149,264,08);
INSERT INTO desarrollo.member VALUES(405741071,'Cesar','Solartes Salazar',50678924651,34,'Activo','sarlater@gmail.com',3002045068,09,15);
INSERT INTO desarrollo.member VALUES(512780517,'Justin','Solano Villalta',50661258476,49,'Activo','villaltin@gmail.com',3002754421,52,03);
INSERT INTO desarrollo.member VALUES(105976012,'Elizabeth','Monge Villagra',50685456210,26,'Activo','mongeliza@gmail.com',3002754421,63,03);
INSERT INTO desarrollo.member VALUES(306450211,'Genesis','Santana Arguedas',50682134715,37,'Activo','santanarguedas@hotmail.com',3002078693,08,37);

--INSERT IN THE TABLE beneficiary
INSERT INTO desarrollo.beneficiary VALUES(10227487,'Lucia', 'Montero', 86652998,'25m norte del BCR, Abangares, Guanacaste, Costa Rica', 'lucimontero@gmail.com' ,63);
INSERT INTO desarrollo.beneficiary VALUES(30105673,'Martin', 'Figueres', 50684685490,'100m oeste de la Iglesia, Belen, Heredia', 'martinarafi@gmail.com', 07);
INSERT INTO desarrollo.beneficiary VALUES(508970345,'Mariana', 'Perez', 50687654321,'150m norte de la Iglesia, Belen, Heredia, Costa Rica', 'marianaperez@gmail.com', 02);
INSERT INTO desarrollo.beneficiary VALUES(598712897,'Enrique', 'Cruz', 50689765645,'250m norte de Mundo Plastico, La Fortuna, San Carlos, Costa Rica', 'enricruz@gmail.com', 06);
INSERT INTO desarrollo.beneficiary VALUES(607890543,'Juana', 'Solano', 50689123456,'100m sur del BCR, La Fortuna, San Carlos, Costa Rica', 'juanasolano@gmail.com', 18);
INSERT INTO desarrollo.beneficiary VALUES(11643089,'Juan', 'Murillo', 50687897678,'50m de la iglesia, Los Angeles, San Carlos, Costa Rica', 'juanmurillo@gmail.com', 36);
INSERT INTO desarrollo.beneficiary VALUES(200889023,'Maria', 'Bonilla', 50684505050,'500 oeste del colegio, Coto Brus, Puntarenas, Costa Rica', 'mariabonilla@gmail.com', 08);
INSERT INTO desarrollo.beneficiary VALUES(345671529,'Luz', 'Carrillo', 50689864567,'10m del lavado de carros Garabito, Puntarenas, Costa Rica', 'luzcarrillo@gmail.com', 40);
INSERT INTO desarrollo.beneficiary VALUES(106218923,'Jesus', 'Loarte', 50688909089,'100m de la playa Rajada, La Cruz, Guanacaste, Costa Rica', 'jesusloarte@gmail.com', 264);
INSERT INTO desarrollo.beneficiary VALUES(27816245,'Julio', 'Cesar', 50687908932,'Frente a la escuelita, Los Chiles, Alajuela, Costa Rica', 'juliocesar@gmail.com', 09);
INSERT INTO desarrollo.beneficiary VALUES(761235789,'Julia', 'Vargas', 50689886543,'90m del cruce, Palmares, Alajuela, Costa Rica', 'juliavargas@gmail.com', 52);
INSERT INTO desarrollo.beneficiary VALUES(461276512,'Laura', 'Coto', 50676564636,'Frente a la clinica, Puriscal, San Jose, Costa Rica', 'lauracoto@gmail.com', 36);
INSERT INTO desarrollo.beneficiary VALUES(751277873,'Marco', 'Vargas', 50664567890,'Frente a la Iglesia Catolica, Puerto Jimenez, Puntarenas, Costa Rica', 'marcovargas@gmail.com', 08);
INSERT INTO desarrollo.beneficiary VALUES(267823190,'Cristina', 'Murillo', 50676898975,'A un costado de la Iglesia, Zarcero, Alajuela, Costa Rica', 'crismurillo@gmail.com', 40);
INSERT INTO desarrollo.beneficiary VALUES(190127873,'Pedro', 'Gonzalez', 50687896078,'Frente a la carniceria Maroto, Ciudad Quesada, Alajuela, Costa Rica', 'pedrogonzalez@gmail.com', 264);

--INSERT IN THE TABLE sponsor
INSERT INTO desarrollo.sponsor VALUES(206410512,'Melany Molina','molina@gmail.com','Activo',50689745123,63);
INSERT INTO desarrollo.sponsor VALUES(102380512,'Humberto Diaz','humberto@gmail.com','Activo',50676598472,07);
INSERT INTO desarrollo.sponsor VALUES(308110741,'Yamileth Gonzalez','gonzalez@gmail.com','Inactivo',50664512653,02);
INSERT INTO desarrollo.sponsor VALUES(708940561,'Fausto Gusman','gusman@gmail.com','Activo',50665894173,06);
INSERT INTO desarrollo.sponsor VALUES(263540178,'Guillermina Ruiz','guilleruiz@gmail.com','Activo',50665487906,18);
INSERT INTO desarrollo.sponsor VALUES(256740123,'Yirlany Sandoval','yirsan@gmail.com','Activo',50676894501,36);
INSERT INTO desarrollo.sponsor VALUES(102781748,'Alonso Ballestero','balles@gmail.com','Activo',50664859742,08);
INSERT INTO desarrollo.sponsor VALUES(210580356,'Santiago Porras','santi@gmail.com','Activo',50662514963,40);
INSERT INTO desarrollo.sponsor VALUES(601230547,'Allan Cruz','cruzallan@gmail.com','Activo',50684052176,264);
INSERT INTO desarrollo.sponsor VALUES(498710213,'Girasol Jara','soljara@gmail.com','Activo',50685269241,09);
INSERT INTO desarrollo.sponsor VALUES(395467896,'Fabricio Ponce','fabponce@gmail.com','Inactivo',50689714356,52);
INSERT INTO desarrollo.sponsor VALUES(205010426,'Filomena Hernandez','mena@gmail.com','Activo',50683571437,09);
INSERT INTO desarrollo.sponsor VALUES(107890531,'Joel Flores','joelf@gmail.com','Activo',50685963147,52);
INSERT INTO desarrollo.sponsor VALUES(564120371,'Celeste Rojas','celrojas@gmail.com','Inactivo',50682976124,08);
INSERT INTO desarrollo.sponsor VALUES(601910891,'Sandra Herrera','hersandra@gmail.com','Activo',50686374936,40);

--INSERT IN THE TABLE other_donations
INSERT INTO desarrollo.other_donations VALUES(1, '24/05/2009', 'Donacion de sillas en colegios de zonas rurales', 5000000, 206410512);
INSERT INTO desarrollo.other_donations VALUES(2, '18/01/2010', 'Donacion de libros a escuelas de bajos recursos', 10000000, 102380512);
INSERT INTO desarrollo.other_donations VALUES(3, '01/01/2015', 'Donacion de juguetes en Hogar Infantil Brotes de Olivo', 1500000, 308110741);
INSERT INTO desarrollo.other_donations VALUES(4, '09/12/2014', 'Donacion de estantes para orfanatos', 10000000, 708940561);
INSERT INTO desarrollo.other_donations VALUES(5, '14/09/2017', 'Donacion de sillas de ruedas en clinicas de zonas rurales', 150000000, 263540178);
INSERT INTO desarrollo.other_donations VALUES(6, '06/08/2015', 'Donacion de mesas en colegios rurales', 15000000, 256740123);
INSERT INTO desarrollo.other_donations VALUES(7, '23/04/2005', 'Donacion de sillas de ruedas en centros de rehabilitacion', 100000000,102781748);
INSERT INTO desarrollo.other_donations VALUES(8, '17/01/2018', 'Donacion de elementos para estimulacion en centros de rehabilitacion', 10000000,210580356);
INSERT INTO desarrollo.other_donations VALUES(9, '20/15/2013', 'Donacion de ropa en Fundacion Construyendo Sonrisas', 10000000, 601230547);
INSERT INTO desarrollo.other_donations VALUES(10,'12/12/2012', 'Donacion de juguetes en zonas indigenas', 10000000, 498710213);
INSERT INTO desarrollo.other_donations VALUES(15,'27/08/2019', 'Donacion de utiles escolares en zonas indigenas', 20000000, 395467896);
INSERT INTO desarrollo.other_donations VALUES(11,'18/07/2018', 'Donacion de computadoras en centros educativos de zonas rurales', 25000000, 205010426);
INSERT INTO desarrollo.other_donations VALUES(12,'03/03/2006', 'Donacion de pantallas en escuelas de bajos recursos', 10000000, 107890531);
INSERT INTO desarrollo.other_donations VALUES(13,'25/05/2019', 'Donacion de electrodomesticos en hogares de ancianos', 30000000, 564120371);
INSERT INTO desarrollo.other_donations VALUES(14,'30/11/2019', 'Donacion de camas y colchones en hospitales', 100000000, 601910891);

--INSERT IN THE TABLE economic_entry
INSERT INTO desarrollo.economic_entry VALUES(03,'Aporte para proyecto','02/08/2015',1458623,206410512);
INSERT INTO desarrollo.economic_entry VALUES(17,'Ayuda economica para el proyecto de construcción','01/05/2021',5236500,102380512);
INSERT INTO desarrollo.economic_entry VALUES(36,'Aporte economico para celebración de niños','08/09/2010',25000,308110741);
INSERT INTO desarrollo.economic_entry VALUES(49,'Aporte economico para proyecto equinoterapia','02/08/2015',1458623,708940561);
INSERT INTO desarrollo.economic_entry VALUES(53,'Aporte para proyecto equinoterapia','06/11/2014',1452000,263540178);
INSERT INTO desarrollo.economic_entry VALUES(95,'Aporte para proyecto','04/08/2011',1458623,256740123);
INSERT INTO desarrollo.economic_entry VALUES(1014,'Aporte economico para proyecto ven al cine conmigo','10/11/2009',1458623,102781748);
INSERT INTO desarrollo.economic_entry VALUES(289,'Aporte para Lecheton','03/03/2000',775000,210580356);
INSERT INTO desarrollo.economic_entry VALUES(78,'Aporte para proyecto enjoy','12/07/2005',1458623,601230547);
INSERT INTO desarrollo.economic_entry VALUES(24,'Aporte economico para proyecto rueditas de amor','12/06/2004',2000000,498710213);
INSERT INTO desarrollo.economic_entry VALUES(59,'Aporte economico para proyecto magico sueño de amor','20/03/2007',375000,395467896);
INSERT INTO desarrollo.economic_entry VALUES(41,'Aporte economico para bebidas para voluntarios del proyecto peaje voluntario','07/05/2002',75000,205010426);
INSERT INTO desarrollo.economic_entry VALUES(54,'Aporte para proyecto ven al cine conmigo','07/11/2009',150000,107890531);
INSERT INTO desarrollo.economic_entry VALUES(23,'Aporte economico para proyecto magico sueño de amor','02/03/2007',2500000,564120371);
INSERT INTO desarrollo.economic_entry VALUES(74,'Aporte economico para celebración de niños','02/09/2000',175000,601910891);

--INSERT IN THE TABLE bill_payment
INSERT INTO desarrollo.bill_payment VALUES(015684, '24/05/2019', 1000000, 'Agua', 'Pago del agua por mes', 3, 3002045068);
INSERT INTO desarrollo.bill_payment VALUES(015736, '12/11/2018', 700000, 'Luz', 'Pago de luz de un mes', 2, 3002078693);
INSERT INTO desarrollo.bill_payment VALUES(025894, '02/08/2020', 200000,'Agua', 'Pago de agua de tres meses', 5, 3002754421);
INSERT INTO desarrollo.bill_payment VALUES(028961, '23/07/2018', 120000, 'Internet', 'Pago de internet de un mes', 0, 3002800540);
INSERT INTO desarrollo.bill_payment VALUES(035687, '23/11/2017', 100000, 'Basura', 'Pago de basura de un mes', 0, 3002674149);
INSERT INTO desarrollo.bill_payment VALUES(031684, '14/03/2019', 110000, 'Luz', 'Pago de luz de 15 dias', 5, 3002045068);
INSERT INTO desarrollo.bill_payment VALUES(041520, '27/07/2021', 70000, 'Agua', 'Pago de agua de un mes', 0, 3002078693);
INSERT INTO desarrollo.bill_payment VALUES(046986, '15/02/2020', 120000, 'Basura', 'Pago de basuta de un mes', 0, 3002754421);
INSERT INTO desarrollo.bill_payment VALUES(057982, '04/09/2020', 500000, 'Luz', 'Pago de luz de un mes', 2, 3002800540);
INSERT INTO desarrollo.bill_payment VALUES(051998, '19/10/2017', 900000, 'Agua', 'Pago de agua de un mes', 3, 3002674149);
INSERT INTO desarrollo.bill_payment VALUES(069191, '05/09/2020', 350000, 'Internet', 'Pago de internet de un mes', 5, 3002045068);
INSERT INTO desarrollo.bill_payment VALUES(061565, '23/07/2022', 1000000, 'Telefono', 'Pago de telefono de dos meses', 10, 3002078693);
INSERT INTO desarrollo.bill_payment VALUES(071568, '02/07/2016', 100000, 'Internet', 'Pago de internet de un mes', 4, 3002754421);
INSERT INTO desarrollo.bill_payment VALUES(079891, '23/07/2015', 250000, 'Telefono', 'Pago de telefono de un mes', 2, 3002800540);
INSERT INTO desarrollo.bill_payment VALUES(082546, '23/01/2020', 120000, 'Internet', 'Pago de internet de un mes', 0, 3002674149);

--INSERT IN THE TABLE national_or_international_meeting
INSERT INTO desarrollo.national_or_international_meeting VALUES(01, '70', 'Presencial', '9:00 am', '24/05/2018', 02);
INSERT INTO desarrollo.national_or_international_meeting VALUES(08, '100', 'Virtual', '2:00 pm', '25/05/2020', 64);
INSERT INTO desarrollo.national_or_international_meeting VALUES(33, '95', 'Presencial', '3:00 pm', '05/06/2006', 27);
INSERT INTO desarrollo.national_or_international_meeting VALUES(24, '30', 'Virtual', '8:00 am', '13/06/2021', 04);
INSERT INTO desarrollo.national_or_international_meeting VALUES(44, '45', 'Virtual', '10:00 am', '20/11/2019', 12);
INSERT INTO desarrollo.national_or_international_meeting VALUES(06, '150', 'Presencial', '1:00 pm', '10/01/2019', 07);
INSERT INTO desarrollo.national_or_international_meeting VALUES(88, '20', 'Virtual', '8:00 am', '15/02/2020', 08);
INSERT INTO desarrollo.national_or_international_meeting VALUES(09, '90', 'Presencial', '6:00 pm', '25/05/2018', 02);
INSERT INTO desarrollo.national_or_international_meeting VALUES(25, '25', 'Presencial', '9:00 am', '15/11/1971', 15);
INSERT INTO desarrollo.national_or_international_meeting VALUES(65, '124', 'Virtual', '3:00 pm', '30/05/2020', 03);
INSERT INTO desarrollo.national_or_international_meeting VALUES(13, '85', 'Presencial', '3:00 pm', '23/06/2016', 37);
INSERT INTO desarrollo.national_or_international_meeting VALUES(05, '35', 'Presencial', '5:00 pm', '09/12/2001', 24);
INSERT INTO desarrollo.national_or_international_meeting VALUES(95, '75', 'Presencial', '1:00 pm', '11/11/2011', 16);
INSERT INTO desarrollo.national_or_international_meeting VALUES(49, '60', 'Presencial', '8:30 am', '10/09/2007', 09);
INSERT INTO desarrollo.national_or_international_meeting VALUES(71, '50', 'Virtual', '12:30 pm', '30/10/2013', 11);

--INSERT IN THE TABLE volunteer
INSERT INTO desarrollo.volunteer VALUES(306140265,'Alex','Monge',50687836253,'monalex@gmail.com',3002045068);
INSERT INTO desarrollo.volunteer VALUES(205890671,'Monica','Marenco',50662935486,'marencomonx@gmail.com',3002078693);
INSERT INTO desarrollo.volunteer VALUES(705810562,'Guillermo','Arias',50682547156,'qriasgui@gmail.com',3002754421);
INSERT INTO desarrollo.volunteer VALUES(205890672,'Marily','Monrrey',50662935486,'marencomonx@gmail.com',3002800540);
INSERT INTO desarrollo.volunteer VALUES(305940147,'Jenifer','Arauz',50683513962,'arauzjeni@gmail.com',3002674149);
INSERT INTO desarrollo.volunteer VALUES(201147863,'Jimena','Gomez',50675869104,'menago@gmail.com',3002674149);
INSERT INTO desarrollo.volunteer VALUES(405817241,'Belen','Gutierrez',50686915243,'gubelen@gmail.com',3002078693);
INSERT INTO desarrollo.volunteer VALUES(502110563,'Adonis','Flores',50686914520,'adonif@gmail.com',3002674149);
INSERT INTO desarrollo.volunteer VALUES(602347893,'Rosa','Blanco',50676928354,'roblanc@gmail.com',3002754421);
INSERT INTO desarrollo.volunteer VALUES(708640142,'Ester','Figueres',50667562849,'figuester@gmail.com',3002674149);
INSERT INTO desarrollo.volunteer VALUES(789647231,'Pablo','Valverde',50666958814,'valverdep@gmail.com',3002045068);
INSERT INTO desarrollo.volunteer VALUES(501236541,'Esmeralda','Sandoval',50672560389,'sandesme@gmail.com',3002800540);
INSERT INTO desarrollo.volunteer VALUES(2145709687,'Cesar','Hugalde',50672536891,'cesarh@gmail.com',3002078693);
INSERT INTO desarrollo.volunteer VALUES(4652189524,'Abraham','Solis',50686847112,'solisabram@gmail.com',3002045068);
INSERT INTO desarrollo.volunteer VALUES(608610798,'Mara','Jordan',50669547218,'jordanmara@gmail.com',3002674149);

--INSERT IN THE TABLE club_meeting
INSERT INTO desarrollo.club_meeting VALUES(25,'18/09/2022','5:00pm','Presencial','Socios','6',109511760);
INSERT INTO desarrollo.club_meeting VALUES(52,'19/01/2021','4:00pm','Presencial','Socios','7',206110897);
INSERT INTO desarrollo.club_meeting VALUES(02,'07/09/2004','5:00pm','Virtual','Junta Directiva','10',203360145);
INSERT INTO desarrollo.club_meeting VALUES(13,'06/07/2008','6:00pm','Presencial','Socios','12',00010076966);
INSERT INTO desarrollo.club_meeting VALUES(37,'11/06/2007','10:00am','Virtual','Socios','17',406998547);
INSERT INTO desarrollo.club_meeting VALUES(61,'17/08/2003','1:00pm','Virtual','Junta Directiva','10',108967435);
INSERT INTO desarrollo.club_meeting VALUES(81,'07/05/2009','5:00pm','Virtual','Socios','14',214690877);
INSERT INTO desarrollo.club_meeting VALUES(74,'06/04/2000','3:00pm','Presencial','Junta Directiva','6',6084107319);
INSERT INTO desarrollo.club_meeting VALUES(11,'07/03/2001','9:00am','Presencial','Socios','10',365148956);
INSERT INTO desarrollo.club_meeting VALUES(09,'03/02/2002','5:00pm','Virtual','Socios','20',102890141);
INSERT INTO desarrollo.club_meeting VALUES(07,'06/07/1999','6:00pm','Presencial','Junta Directiva','5',102364897);
INSERT INTO desarrollo.club_meeting VALUES(18,'08/04/2021','7:00pm','Presencial','Socios','7',703486957);
INSERT INTO desarrollo.club_meeting VALUES(06,'21/01/2020','11:00am','Virtual','Socios','12',636210569);
INSERT INTO desarrollo.club_meeting VALUES(03,'27/06/2018','2:00pm','Presencial','Junta Directiva','11',405741071);
INSERT INTO desarrollo.club_meeting VALUES(12,'30/09/2017','9:30am','Virtual','Socios','17',512780517);
INSERT INTO desarrollo.club_meeting VALUES(05,'29/03/2022','3:30pm','Presencial','Socios','25',105976012);
INSERT INTO desarrollo.club_meeting VALUES(10,'24/10/2022','6:30pm','Virtual','Socios','15',105976012);

--INSERT IN THE TABLE payment
INSERT INTO desarrollo.payment VALUES(01,'05/06/2019','AYA',45200,'Se cancelo el monto del agua',3002674149);				   
INSERT INTO desarrollo.payment VALUES(02,'16/04/2012','ICE',15600,'Se cancelo el monto del internet',3002045068);
INSERT INTO desarrollo.payment VALUES(03,'13/07/2006','AYA',35100,'Se cancelo el monto del agua',3002078693);
INSERT INTO desarrollo.payment VALUES(04,'21/08/2011','Librería',10500,'Se compro papeleria y utiles',3002754421);
INSERT INTO desarrollo.payment VALUES(05,'27/05/2015','ICE',17800,'Se cancelo el monto de la luz',3002800540);
INSERT INTO desarrollo.payment VALUES(06,'30/08/2009','Alquiler',75000,'Se cancelo el monto del alquiler',3002674149);
INSERT INTO desarrollo.payment VALUES(07,'20/11/2014','AYA',22500,'Se cancelo el monto del agua',3002754421);
INSERT INTO desarrollo.payment VALUES(08,'15/03/2010','AYA',15800,'Se cancelo el monto del agua',3002045068);
INSERT INTO desarrollo.payment VALUES(09,'21/08/2011','Librería',10500,'Se compro papeleria y utiles',3002800540);
INSERT INTO desarrollo.payment VALUES(10,'18/07/2018','ICE',13500,'Se cancelo el monto del internet',3002754421);
INSERT INTO desarrollo.payment VALUES(11,'01/03/2016','Alquiler',115000,'Se cancelo el monto del alquiler',3002674149);
INSERT INTO desarrollo.payment VALUES(12,'10/08/2004','AYA',12050,'Se cancelo el monto del agua',3002800540);
INSERT INTO desarrollo.payment VALUES(13,'23/05/2010','Librería',5680,'Se compro papeleria y utiles',3002078693);
INSERT INTO desarrollo.payment VALUES(14,'17/02/2000','ICE',5000,'Se cancelo el monto del internet',3002078693);
INSERT INTO desarrollo.payment VALUES(15,'26/05/2017','ICE',11000,'Se cancelo el monto del internet',3002754421);


--INSERT IN THE TABLE payment_to_national
INSERT INTO desarrollo.payment_to_national VALUES(01,'27/09/2022',17500,'Pendiente',3002674149);					   
INSERT INTO desarrollo.payment_to_national VALUES(02,'17/02/2001',16700,'Cancelado',3002045068);
INSERT INTO desarrollo.payment_to_national VALUES(03,'14/10/2017',25400,'Cancelado',3002078693);
INSERT INTO desarrollo.payment_to_national VALUES(04,'29/06/2015',23100,'Cancelado',3002754421);
INSERT INTO desarrollo.payment_to_national VALUES(05,'10/01/2018',14800,'Cancelado',3002800540);
INSERT INTO desarrollo.payment_to_national VALUES(06,'23/10/2022',11700,'Pendiente',3002045068);
INSERT INTO desarrollo.payment_to_national VALUES(07,'30/06/2019',25400,'Cancelado',3002674149);
INSERT INTO desarrollo.payment_to_national VALUES(08,'26/04/2014',32500,'Cancelado',3002800540);
INSERT INTO desarrollo.payment_to_national VALUES(09,'13/09/2013',7250,'Cancelado',3002078693);
INSERT INTO desarrollo.payment_to_national VALUES(10,'07/07/2015',17600,'Cancelado',3002674149);
INSERT INTO desarrollo.payment_to_national VALUES(11,'20/11/2022',21800,'Pendiente',3002754421);
INSERT INTO desarrollo.payment_to_national VALUES(12,'28/02/2021',9500,'Cancelado',3002674149);
INSERT INTO desarrollo.payment_to_national VALUES(13,'14/12/2022',13450,'Pendiente',3002800540);
INSERT INTO desarrollo.payment_to_national VALUES(14,'30/09/2018',14800,'Cancelado',3002754421);
INSERT INTO desarrollo.payment_to_national VALUES(15,'31/11/2016',22640,'Cancelado',3002674149);

--INSERT IN THE TABLE membership_payment
INSERT INTO desarrollo.membership_payment VALUES(01,'Cancelado', 5250, '03/06/2012',109511760);
INSERT INTO desarrollo.membership_payment VALUES(02,'Cancelado',6750,'13/07/2007',206110897);
INSERT INTO desarrollo.membership_payment VALUES(06,'Pendiente',10000,'19/04/2010',203360145);
INSERT INTO desarrollo.membership_payment VALUES(72,'Cancelado',6550,'07/12/2014',00010076966);
INSERT INTO desarrollo.membership_payment VALUES(41,'Cancelado',7250,'21/08/2016',406998547);
INSERT INTO desarrollo.membership_payment VALUES(58,'Pendiente',12250,'23/09/1999',108967435);
INSERT INTO desarrollo.membership_payment VALUES(63,'Cancelado',6325,'14/02/2015',214690877);
INSERT INTO desarrollo.membership_payment VALUES(51,'Cancelado',5000,'01/04/1996',6084107319);
INSERT INTO desarrollo.membership_payment VALUES(67,'Cancelado',7850,'17/01/2017',365148956);
INSERT INTO desarrollo.membership_payment VALUES(98,'Pendiente',15000,'06/12/2014',102890141);
INSERT INTO desarrollo.membership_payment VALUES(65,'Cancelado',3620,'24/11/2001',102364897);
INSERT INTO desarrollo.membership_payment VALUES(12,'Cancelado',5745,'09/10/1995',703486957);
INSERT INTO desarrollo.membership_payment VALUES(17,'Pendiente',11500,'07/12/2014',636210569);
INSERT INTO desarrollo.membership_payment VALUES(19,'Pendiente',8950,'21/08/2016',405741071);
INSERT INTO desarrollo.membership_payment VALUES(20,'Cancelado',13675,'07/12/2014',512780517);

--INSERT IN THE TABLE event
INSERT INTO desarrollo.event VALUES(1,'20/08/2020','Seminario','de clubes',5000);
INSERT INTO desarrollo.event VALUES(2,'20/08/2020','Conferencia','nacional',500000);
INSERT INTO desarrollo.event VALUES(3,'05/07/2021','Charlas','internacional',1000000);
INSERT INTO desarrollo.event VALUES(4,'17/07/2022','Convención','de clubes',700000);
INSERT INTO desarrollo.event VALUES(5,'20/05/2021','Rueda de prensa','nacional',850000);
INSERT INTO desarrollo.event VALUES(6,'20/03/2020','Junta general','internacional',300000);
INSERT INTO desarrollo.event VALUES(7,'20/02/2022','Feria','de clubes',1300000);
INSERT INTO desarrollo.event VALUES(8,'20/11/2021','Conferencia','nacional',170000);
INSERT INTO desarrollo.event VALUES(9,'20/10/2020','Reunion general','internacional',660000);
INSERT INTO desarrollo.event VALUES(10,'20/04/2020','Feria','de clubes',480000);
INSERT INTO desarrollo.event VALUES(11,'20/06/2022','Seminario','nacional',2000500);
INSERT INTO desarrollo.event VALUES(12,'20/03/2021','Cena de seminario','internacional',1300000);
INSERT INTO desarrollo.event VALUES(13,'20/05/2020','Reunion y seminario general','de clubes',900000);
INSERT INTO desarrollo.event VALUES(14,'20/12/2018','Junta directiva general','nacional',560000);				 
INSERT INTO desarrollo.event VALUES(15,'20/11/2021','Convención entre clubes','internacional',790000);

--INSERT IN THE TABLE social_media
INSERT INTO desarrollo.social_media VALUES(1, 'Facebook', 300000, 3002674149);
INSERT INTO desarrollo.social_media VALUES(11, 'Instagram', 3521010, 3002674149);
INSERT INTO desarrollo.social_media VALUES(111, 'Telegram', 200, 3002674149);
INSERT INTO desarrollo.social_media VALUES(1111, 'WhatsApp', 30, 3002674149);
INSERT INTO desarrollo.social_media VALUES(2, 'Facebook', 326, 3002045068);
INSERT INTO desarrollo.social_media VALUES(22, 'Instagram', 714, 3002045068);
INSERT INTO desarrollo.social_media VALUES(222, 'Telegram', 95, 3002045068);
INSERT INTO desarrollo.social_media VALUES(2222, 'WhatsApp', 25 , 3002045068);
INSERT INTO desarrollo.social_media VALUES(3, 'Instagram', 661, 3002078693);
INSERT INTO desarrollo.social_media VALUES(33, 'Facebook', 4025, 3002078693);
INSERT INTO desarrollo.social_media VALUES(333, 'Telegram', 325, 3002078693);
INSERT INTO desarrollo.social_media VALUES(3333, 'WhatsApp', 61, 3002078693);
INSERT INTO desarrollo.social_media VALUES(4, 'Facebook', 925, 3002754421);
INSERT INTO desarrollo.social_media VALUES(44, 'Instagram', 614, 3002754421);
INSERT INTO desarrollo.social_media VALUES(444, 'Telegram', 22, 3002754421);
INSERT INTO desarrollo.social_media VALUES(4444, 'WhatsApp', 32, 3002754421);
INSERT INTO desarrollo.social_media VALUES(5, 'Instagram', 725, 3002800540);
INSERT INTO desarrollo.social_media VALUES(55, 'Facebook', 1426, 3002800540);
INSERT INTO desarrollo.social_media VALUES(555, 'Telegram', 15, 3002800540);
INSERT INTO desarrollo.social_media VALUES(5555, 'WhatsApp', 23, 3002800540);

--INSERT IN THE TABLE camaraderie
INSERT INTO desarrollo.camaraderie VALUES(1, 'Metropoli', 'martes', 200, 1 );
INSERT INTO desarrollo.camaraderie VALUES(2, 'Metropoli', 'Martes', 200, 2 );
INSERT INTO desarrollo.camaraderie VALUES(3, 'San Jose', 'Domingo', 300, 3 );
INSERT INTO desarrollo.camaraderie VALUES(4, 'Tres Rios', 'Martes', 400, 4 );
INSERT INTO desarrollo.camaraderie VALUES(5, 'Limón', 'Jueves', 100, 5 );
INSERT INTO desarrollo.camaraderie VALUES(6, 'Tilaran', 'Domingo', 240, 6 );
INSERT INTO desarrollo.camaraderie VALUES(7, 'Limón', 'Martes', 350, 7 );
INSERT INTO desarrollo.camaraderie VALUES(8, 'Metropoli', 'Sabado', 178, 8 );
INSERT INTO desarrollo.camaraderie VALUES(9, 'Tres Rios', 'Lunes', 469, 9 );
INSERT INTO desarrollo.camaraderie VALUES(10, 'San Jose', 'Domingo', 345, 10 );
INSERT INTO desarrollo.camaraderie VALUES(11, 'Limón', 'Jueves', 289, 11 );
INSERT INTO desarrollo.camaraderie VALUES(12, 'San Jose', 'Martes', 89, 12 );
INSERT INTO desarrollo.camaraderie VALUES(13, 'Tilaran', 'Miercoles', 95, 13 );
INSERT INTO desarrollo.camaraderie VALUES(14, 'San Jose', 'Martes', 230, 14 );
INSERT INTO desarrollo.camaraderie VALUES(15, 'Metropoli', 'Sabado', 120, 15 );

--INSERT IN THE TABLE type_project  (ARREGLAR)
INSERT INTO desarrollo.type_project VALUES(01,FALSE,FALSE,FALSE,TRUE,FALSE,63);
INSERT INTO desarrollo.type_project VALUES(02,FALSE,FALSE,FALSE,FALSE,TRUE,07);
INSERT INTO desarrollo.type_project VALUES(03,FALSE,FALSE,TRUE,FALSE,FALSE,02);
INSERT INTO desarrollo.type_project VALUES(04,FALSE,FALSE,TRUE,FALSE,FALSE,06);
INSERT INTO desarrollo.type_project VALUES(05,TRUE,FALSE,FALSE,FALSE,FALSE,18);
INSERT INTO desarrollo.type_project VALUES(06,FALSE,FALSE,FALSE,TRUE,FALSE,36);
INSERT INTO desarrollo.type_project VALUES(07,FALSE,FALSE,TRUE,FALSE,FALSE,08);
INSERT INTO desarrollo.type_project VALUES(08,TRUE,FALSE,FALSE,FALSE,FALSE,40);
INSERT INTO desarrollo.type_project VALUES(09,FALSE,FALSE,TRUE,FALSE,FALSE,264);
INSERT INTO desarrollo.type_project VALUES(10,FALSE,FALSE,FALSE,FALSE,TRUE,09);
INSERT INTO desarrollo.type_project VALUES(11,FALSE,FALSE,FALSE,FALSE,TRUE,52);
INSERT INTO desarrollo.type_project VALUES(12,TRUE,FALSE,FALSE,FALSE,FALSE,72);
INSERT INTO desarrollo.type_project VALUES(13,FALSE,FALSE,TRUE,FALSE,FALSE,14);
INSERT INTO desarrollo.type_project VALUES(14,FALSE,FALSE,FALSE,FALSE,TRUE,13);
INSERT INTO desarrollo.type_project VALUES(15,FALSE,FALSE,FALSE,FALSE,TRUE,45);

--INSERT IN THE TABLE category_project (ARREGLAR)
INSERT INTO desarrollo.category_project VALUES(0123,TRUE,FALSE,63);
INSERT INTO desarrollo.category_project VALUES(0145,FALSE,TRUE,07);
INSERT INTO desarrollo.category_project VALUES(0163,TRUE,FALSE,02);
INSERT INTO desarrollo.category_project VALUES(0127,TRUE,FALSE,06);
INSERT INTO desarrollo.category_project VALUES(0187,TRUE,FALSE,18);
INSERT INTO desarrollo.category_project VALUES(0199,TRUE,FALSE,36);
INSERT INTO desarrollo.category_project VALUES(0153,TRUE,FALSE,08);
INSERT INTO desarrollo.category_project VALUES(0165,TRUE,FALSE,40);
INSERT INTO desarrollo.category_project VALUES(0167,TRUE,FALSE,264);
INSERT INTO desarrollo.category_project VALUES(0135,FALSE,TRUE,09);
INSERT INTO desarrollo.category_project VALUES(0198,TRUE,FALSE,52);
INSERT INTO desarrollo.category_project VALUES(0178,TRUE,FALSE,72);
INSERT INTO desarrollo.category_project VALUES(0134,FALSE,TRUE,14);
INSERT INTO desarrollo.category_project VALUES(0180,FALSE,TRUE,13);
INSERT INTO desarrollo.category_project VALUES(0156,FALSE,TRUE,45);

--INSERT IN THE TABLE INTERMEDIATE attend_member_event
INSERT INTO desarrollo.attend_member_event VALUES(206110897, 1);
INSERT INTO desarrollo.attend_member_event VALUES(203360145, 2);
INSERT INTO desarrollo.attend_member_event VALUES(00010076966, 3);
INSERT INTO desarrollo.attend_member_event VALUES(406998547, 4);
INSERT INTO desarrollo.attend_member_event VALUES(108967435, 5);
INSERT INTO desarrollo.attend_member_event VALUES(214690877, 6);
INSERT INTO desarrollo.attend_member_event VALUES(6084107319, 7);
INSERT INTO desarrollo.attend_member_event VALUES(365148956, 8);
INSERT INTO desarrollo.attend_member_event VALUES(102890141, 9);
INSERT INTO desarrollo.attend_member_event VALUES(102364897, 10);
INSERT INTO desarrollo.attend_member_event VALUES(703486957, 11);
INSERT INTO desarrollo.attend_member_event VALUES(636210569, 12);
INSERT INTO desarrollo.attend_member_event VALUES(405741071, 13);
INSERT INTO desarrollo.attend_member_event VALUES(512780517, 14);
INSERT INTO desarrollo.attend_member_event VALUES(105976012, 15);


----------------- TABLAS DEL ESQUEMA PRUEBA -----------------

CREATE TABLE prueba.club
( 
	id_club 			NUMERIC(15) NOT NULL,
	name_club 			VARCHAR(50) NOT NULL,
	phone_number_club 	NUMERIC(15) NOT NULL,
	mail_club 			VARCHAR(100) NOT NULL, 
	anniversary_club 	VARCHAR(10) NOT NULL,
	
	CONSTRAINT pk_club PRIMARY KEY(id_club)
);

CREATE TABLE prueba.member
(
	id_member      			NUMERIC(15)   NOT NULL,
    name_member  	   	 	VARCHAR(30)  NOT NULL,
	last_name_member		VARCHAR(30)  NOT NULL,
	phone_number_member		NUMERIC(15)  NOT NULL,
	age_member				NUMERIC(100) NOT NULL,
	status_member			VARCHAR(30)  NOT NULL,
	mail_member				VARCHAR(100)  NOT NULL,
	id_club 				NUMERIC(15)  NOT NULL,
	id_project 				NUMERIC(15)  NOT NULL,
	id_board_of_directors 	NUMERIC(15)  NOT NULL,
	
    CONSTRAINT pk_marca PRIMARY KEY (id_member)
);

CREATE TABLE prueba.membership_payment
(
    membership_payment_record     NUMERIC(10)  NOT NULL,
    status_membership_payment  	  VARCHAR(30)  NOT NULL,
	amount_membership_payment	  NUMERIC(10)  NOT NULL,
	date_membership_payment		  VARCHAR(10)  NOT NULL,
	id_member      				  NUMERIC(15)   NOT NULL,
	
    CONSTRAINT pk_membership_payment PRIMARY KEY (membership_payment_record)
);

CREATE TABLE prueba.project
(
	id_project 										NUMERIC(15)  NOT NULL,
	name_project 									VARCHAR(50)  NOT NULL,
	description_project 							VARCHAR(300) NOT NULL,
	number_of_hours_invested_per_partner_project 	NUMERIC(10)   NOT NULL,
	completion_date_of_the_project 					VARCHAR(10)  NOT NULL,
	number_of_children_benefited_by_project 		NUMERIC(10)  NOT NULL,
	number_of_adults_benefited_by_project 			NUMERIC(10)  NOT NULL,
	total_amount_of_sponsorship_for_project  		NUMERIC(10)  NOT NULL,
	
	CONSTRAINT pk_project PRIMARY KEY(id_project)
);


CREATE TABLE prueba.type_project 
(
	id_type_project   NUMERIC(10) 	NOT NULL,
	educational       BOOLEAN 	 	NOT NULL,
	ecological        BOOLEAN 	 	NOT NULL,
	recreation        BOOLEAN 	 	NOT NULL,
	health            BOOLEAN 	 	NOT NULL,
	other 			  BOOLEAN 	 	NOT NULL,
	id_project 		  NUMERIC(15)   NOT NULL,

	CONSTRAINT pk_type_project PRIMARY KEY(id_type_project)
);


CREATE TABLE prueba.category_project
(
	id_category_project           NUMERIC(10)  NOT NULL,
	social_service                BOOLEAN 	   NOT NULL,
	collection_category_project   BOOLEAN 	   NOT NULL,
	id_project 					  NUMERIC(15)  NOT NULL,
	
	CONSTRAINT pk_category_project PRIMARY KEY(id_category_project)
);


CREATE TABLE prueba.sponsor
(
	id_sponsor                   NUMERIC(20)  NOT NULL,
	name_sponsor                 VARCHAR(100) NOT NULL,
	mail_sponsor                 VARCHAR(25)  NOT NULL,
	status_sponsor               VARCHAR(10)  NOT NULL,
	phone_number_sponsor         NUMERIC(15)   NOT NULL,
	id_project 					 NUMERIC(15)  NOT NULL,

	CONSTRAINT pk_sponsor PRIMARY KEY(id_sponsor)
);


CREATE TABLE prueba.economic_entry
(
	transaction_number_economic_entry    NUMERIC(10)  NOT NULL,
	description_economic_entry           VARCHAR(100) NOT NULL,
	date_economic_entry 		         VARCHAR(15)  NOT NULL,
	amount_economic_entry 		         NUMERIC(30)  NOT NULL,
	id_sponsor                  		 NUMERIC(20)  NOT NULL,
	
	CONSTRAINT pk_economic_entry PRIMARY KEY(transaction_number_economic_entry)
);


CREATE TABLE prueba.other_donations  
(
	serial_number_other_donations    NUMERIC(10)  NOT NULL,
	date_other_donations             VARCHAR(10)  NOT NULL,
	description_other_donations      VARCHAR(100) NOT NULL,
	approximate_amount               NUMERIC(30)  NOT NULL,
	id_sponsor                   	 NUMERIC(20)  NOT NULL,

	CONSTRAINT pk_other_donations PRIMARY KEY(serial_number_other_donations)
);


CREATE TABLE prueba.beneficiary
(
	id_beneficiary            NUMERIC(20)  NOT NULL,
	name_beneficiary          VARCHAR(30)  NOT NULL,
	last_name_beneficiary     VARCHAR(50)  NOT NULL,
	phone_number_beneficiary  NUMERIC(15)  NOT NULL, 
	address                   VARCHAR(300) NOT NULL,
	mail_beneficiary          VARCHAR(50)  NOT NULL,
	id_project 				  NUMERIC(15)  NOT NULL,

	CONSTRAINT pk_beneficiary PRIMARY KEY(id_beneficiary)
); 


CREATE TABLE prueba.board_of_directors
(
	id_board_of_directors 		NUMERIC(15) NOT NULL,
	year_board_of_directors 	NUMERIC(5)  NOT NULL,
	president 					VARCHAR(50) NOT NULL,
	vice_president 				VARCHAR(50) NOT NULL,
	secretary 					VARCHAR(50) NOT NULL,
	treasurer 					VARCHAR(50) NOT NULL,
	fiscal 						VARCHAR(50) NOT NULL,
	vocal1 						VARCHAR(50) NOT NULL,
	vocal2 						VARCHAR(50) NOT NULL,
	director1 					VARCHAR(50) NOT NULL,
	director2 					VARCHAR(50) NOT NULL,
	sargeant_at_arms 			VARCHAR(50) NOT NULL,
	
	CONSTRAINT pk_board_of_directors PRIMARY KEY(id_board_of_directors)
);


CREATE TABLE prueba.club_meeting
(
	id_club_meeting 			NUMERIC(15) NOT NULL,
	date_club_meeting 			VARCHAR(10) NOT NULL,
	hour_club_meeting 			VARCHAR(10)  NOT NULL,
	type_club_meeting 			VARCHAR(40) NOT NULL,
	reunion_class 				VARCHAR(20) NOT NULL,
	attendance_club_meeting 	VARCHAR(10)  NOT NULL,
	id_member      				NUMERIC(15)  NOT NULL,
	
	CONSTRAINT pk_club_meeting PRIMARY KEY(id_club_meeting)
);


CREATE TABLE prueba.national_or_international_meeting
(
	id_national_or_international_meeting 			NUMERIC(15) NOT NULL,
	attendance_national_or_international_meeting 	VARCHAR(10)  NOT NULL,
	type_national_or_international_meeting 			VARCHAR(20) NOT NULL,
	hour_national_or_international_meeting 			VARCHAR(10)  NOT NULL,
	date_national_or_international_meeting 			VARCHAR(10) NOT NULL,
	id_board_of_directors 							NUMERIC(15) NOT NULL,
	
	CONSTRAINT pk_national_or_international_meeting PRIMARY KEY(id_national_or_international_meeting)
);


CREATE TABLE prueba.bill_payment
(
    registry_number_bill_payment    VARCHAR(10)  NOT NULL,
    date_bill_payment  	  			VARCHAR(10)  NOT NULL,
	amount_bill_payment				NUMERIC(10)  NOT NULL,
	trade_bill_payment				VARCHAR(100) NOT NULL,
	description_bill_payment		VARCHAR(200) NOT NULL,
	discount_bill_payment			NUMERIC(10)   NOT NULL,
	id_club 						NUMERIC(15)  NOT NULL,
	
    CONSTRAINT pk_bill_payment PRIMARY KEY (registry_number_bill_payment)
);


CREATE TABLE prueba.payment
(
    registry_number_payment     VARCHAR(10)   NOT NULL,
    date_payment  	  			VARCHAR(10)   NOT NULL,
	trade_payment	  			VARCHAR(100)  NOT NULL,
	amount_payment				NUMERIC(10)   NOT NULL,
	description_payment			VARCHAR(200)  NOT NULL,
	id_club 					NUMERIC(15)   NOT NULL,
	
    CONSTRAINT pk_payment PRIMARY KEY (registry_number_payment)
);


CREATE TABLE prueba.payment_to_national
(
    registry_number_payment_national    VARCHAR(10)  NOT NULL,
    date_payment_to_national  	  		VARCHAR(10)  NOT NULL,
	amount_payment_to_national			NUMERIC(10)  NOT NULL,
	status_payment_to_national			VARCHAR(15) NOT NULL,
	id_club 							NUMERIC(15)  NOT NULL,
	
    CONSTRAINT pk_payment_to_national PRIMARY KEY (registry_number_payment_national)
);


CREATE TABLE prueba.volunteer 
(
	id_volunteer 				NUMERIC(15) NOT NULL,
	name_volunteer 				VARCHAR(50) NOT NULL,
	last_name_volunteer 		VARCHAR(50) NOT NULL,
	phone_number_volunteer 		NUMERIC(15) NOT NULL,
	mail_volunteer 				VARCHAR(100) NOT NULL,
	id_club 					NUMERIC(15) NOT NULL,
	
	CONSTRAINT pk_volunteer PRIMARY KEY(id_volunteer)
);


CREATE TABLE prueba.social_media
(
    id_social_media       VARCHAR(20)  NOT NULL,
    social_network  	  VARCHAR(80)  NOT NULL,
	number_of_followers	  NUMERIC(10)  NOT NULL,
	id_club 			  NUMERIC(15)  NOT NULL,
	
    CONSTRAINT pk_social_media PRIMARY KEY (id_social_media)
);


CREATE TABLE prueba.event
(
	id_event 		NUMERIC(15) NOT NULL,
	date_event 		VARCHAR(10) NOT NULL,
	name_event 		VARCHAR(50) NOT NULL,
	event_type 		VARCHAR(25) NOT NULL,
	price_event 	NUMERIC(10) NOT NULL,
	
	CONSTRAINT pk_event PRIMARY KEY(id_event)
);


CREATE TABLE prueba.camaraderie
(
	id_camaraderie 						NUMERIC(15) NOT NULL,
	event_club_camaraderie 				VARCHAR(15) NOT NULL,
	event_day_camaraderie 				VARCHAR(10) NOT NULL,
	photos_ot_the_event_camaraderie 	NUMERIC(10) NOT NULL,
	id_event 							NUMERIC(15) NOT NULL,
	
	CONSTRAINT pk_camaraderia PRIMARY KEY(id_camaraderie)
);

CREATE TABLE prueba.attend_member_event(
	id_member  NUMERIC(15) NOT NULL,
	id_event   NUMERIC(15) NOT NULL,

	FOREIGN KEY (id_member) REFERENCES member (id_member),
	FOREIGN KEY (id_event) REFERENCES event (id_event)

);

--FOREIGN KEYS TABLES

--RELATION OF MEMBER WITH CLUB
ALTER TABLE prueba.member
  ADD CONSTRAINT fk_member_club
  FOREIGN KEY (id_club) REFERENCES club (id_club);

--RELATION OF MEMBER WITH PROJECT
ALTER TABLE prueba.member
  ADD CONSTRAINT fk_member_project
  FOREIGN KEY (id_project) REFERENCES project (id_project);

--RELATION OF MEMBER WITH BOARD OF DIRECTIONS  
ALTER TABLE prueba.member
  ADD CONSTRAINT fk_member_board_of_directors
  FOREIGN KEY (id_board_of_directors) REFERENCES board_of_directors (id_board_of_directors);

--RELATION OF MEMBERSHIP PAYMENT WITH MEMBER 
ALTER TABLE prueba.membership_payment
  ADD CONSTRAINT fk_membership_payment_member
  FOREIGN KEY (id_member) REFERENCES member (id_member);
  
--RELATION DE CATERORY PROJECT WITH PROJECT
ALTER TABLE prueba.category_project
  ADD CONSTRAINT fk_category_project_project
  FOREIGN KEY (id_project) REFERENCES project (id_project);

--RELATION OF TYPE PROJECT WITH PROJECT  
ALTER TABLE prueba.type_project
  ADD CONSTRAINT fk_type_project_project
  FOREIGN KEY (id_project) REFERENCES project(id_project);
  
--RELATION OF SPONSOR WITH PROJECT  
ALTER TABLE prueba.sponsor
  ADD CONSTRAINT fk_sponsor_project
  FOREIGN KEY (id_project) REFERENCES project(id_project);

--RELATION OF OTHER DONATIONS WITH SPONSOR   
ALTER TABLE prueba.other_donations
  ADD CONSTRAINT fk_other_donations_sponsor
  FOREIGN KEY (id_sponsor) REFERENCES sponsor(id_sponsor);

--RELATION OF ECONOMIC ENTRY WITH SPONSOR 
ALTER TABLE prueba.economic_entry
  ADD CONSTRAINT fk_economic_entry_sponsor
  FOREIGN KEY (id_sponsor) REFERENCES sponsor(id_sponsor);

--RELATION OF BENEFICIARY WITH PROJECT  
ALTER TABLE prueba.beneficiary
  ADD CONSTRAINT fk_beneficiary_project
  FOREIGN KEY (id_project) REFERENCES project(id_project);

--RELATION OF CLUB MEETING WITH MEMBER  
ALTER TABLE prueba.club_meeting
  ADD CONSTRAINT fk_club_meeting_member  
  FOREIGN KEY (id_member) REFERENCES member(id_member);

--RELATION OF NATIONAL OR INTERNATIONAL MEETING WITH BOAR OF DIRECTORS  
ALTER TABLE prueba.national_or_international_meeting 
  ADD CONSTRAINT fk_national_or_international_meeting_board_of_directors
  FOREIGN KEY (id_board_of_directors) REFERENCES board_of_directors(id_board_of_directors);

--RELATION OF BILL PAYMENT WITH CLUB  
ALTER TABLE prueba.bill_payment
  ADD CONSTRAINT fk_bill_payment_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF PAYMENT WITH CLUB  
ALTER TABLE prueba.payment
  ADD CONSTRAINT fk_payment_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF PAYMENT TO NATIONAL WITH CLUB  
ALTER TABLE prueba.payment_to_national
  ADD CONSTRAINT fk_payment_to_national_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF VOLUNTEER WITH CLUB   
ALTER TABLE prueba.volunteer
  ADD CONSTRAINT fk_volunteer_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF SOCIAL MEDIA WITH CLUB   
ALTER TABLE prueba.social_media
  ADD CONSTRAINT fk_social_media_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF CAMARADERIE WITH EVENT  
ALTER TABLE prueba.camaraderie
  ADD CONSTRAINT fk_camaraderie_event
  FOREIGN KEY (id_event) REFERENCES event(id_event);
  
  
-- DATOS --
--INSERT IN THE TABLE club
INSERT INTO prueba.club Values(3002045068,'San José',50671149075,'ca2030@racsa.co.cr','18/03/1956');
INSERT INTO prueba.club Values(3002078693,'Tres Ríos',50683185215,'info@activo2030tresrios.org','08/09/1979');
INSERT INTO prueba.club Values(3002754421,'Metrópoli',50686487615,'clubactivo2030metropoli@gmail.com','14/10/2017');
INSERT INTO prueba.club Values(3002800540,'Tilaran',50622332030,'clubactivo2030@gmail.com','02/03/1974');
INSERT INTO prueba.club Values(3002674149,'Limón',50683185215,'clubactivo2030limon@gmail.com','23/10/2012');

--INSERT IN THE TABLE board_of_directors
INSERT INTO prueba.board_of_directors VALUES(02,2018,'Rosales Sanchez','Helen Sandi','Hugo Mora','Donald Torres','Rosa Fernandez','Fernando Tencio',
	   								  'David Rodriguez','Moises Gamboa','Magdalena Carmona','Gledys Gutierrez');
INSERT INTO prueba.board_of_directors VALUES(64,2020,'Raymundo Castillo','Claudio Salas','Anabelle Quintanilla','Santiago Romay',
									  'Armando Moreira','Leticia Reyes','Federica Salis','Diniveth Vivas',
									  'Jader Ojeda','Kristell Duarte');
INSERT INTO prueba.board_of_directors VALUES(27,2006,'Roy Oviedo','Ruben Marin','Stephanie Quesada','Maria Alfaro',
									  'Alfonso Acuña','Sabrina Juarez','Rodolfo Jimenez','Jenny Lopez',
									  'Manuelita Gomez','Luis Bolaños');
INSERT INTO prueba.board_of_directors VALUES(04,2021,'Hazel Navarro','Miguel Salazar','Ana Carranza','Antonio Vazquez',
									  'Adriana Rojas','Cesar Solartes','Lucinia Salazar','Guillermo Guillen',
									  'Andrea Hidalgo','Javier Solano');
INSERT INTO prueba.board_of_directors VALUES(12,2019,'Jimena Osorio','Sabina Rodriguez','Ana Aragon',
									  'Maria Gamboa','Bruno Velazquez','Oscar Osorio','Eddie Duarte','Lisseth Vivaz',
									  'Xiomara Rojas','Mirieth Castro');
INSERT INTO prueba.board_of_directors VALUES(07,2019,'Mario Zuñiga','Pamela Centeno','Lia Murillo','Julian Cruz',
									  'Margareth Aguilar','Esteban Cordero','Catalina Lobo','Karina Valverde',
									  'Karina Urbina','Julio Robleto');
INSERT INTO prueba.board_of_directors VALUES(08,2020,'Jones Cruz','Jose Hidalgo','Eva Navarro','Resne Carrera',
									  'Mia Brenes','Rogelio Garcia','Fabio Salas','Fabricio Chacon',
									  'Gabriela Martinez','Fabian Raudez');
INSERT INTO prueba.board_of_directors VALUES(15,1971,'Cesar Solartes','Kristel Soto','Alajandra Barrantes','Liz Vega',
									  'Monserrat del Castillo','Porras','Segura','Carmen Sequeira',
									  'Pablo Obando','Nicolas Mena');
INSERT INTO prueba.board_of_directors VALUES(03,2020,'Gerardo Duran','Gonzalo Carvajal','Justin Solano','Patricia Artavia',
									  'Monica Venegas','Elizabeth Monge','Erick Orozco','Lara Benavidez',
									  'Leo Motoya','Nora Garita');
INSERT INTO prueba.board_of_directors VALUES(37,2016,'Luisa Guevara','Luz Carrillo','Raul Coto','Sarah Morera',
									  'Genesis Santana','Ulises Loria','Emma Cubillo','Mariana Leiva',
									  'Jorge Cubero','Isabel Ulloa');
INSERT INTO prueba.board_of_directors VALUES(24,2001,'Kaina Trejos','Manuel Masis','Lizbeth Saenz','Josue Saborio',
									  'Daniel Blanco','Alejandra Lizano','Antonio Moreno','Lucia Acosta',
									  'Wendy Aguirre','Fabiola Rios');
INSERT INTO prueba.board_of_directors VALUES(16,2011,'Miguel Medina','Geancarlo Zeledon','Rafael Conejo','Gledis Cardenas',
									  'Elisalieth Parra','Arturo Montes','Anleth Estrada','Patricia Barientos',
									  'Carlos Solera','Carmen Viales');
INSERT INTO prueba.board_of_directors VALUES(09,2007,'Ester Montiel','Gabriel Cabezas','Hugo Cardenas','Yindra Huertas',
									  'Sugelen Pineda','Gregorio Peralta','Laura Jarquin','Francela Luna',
									  'Calixto Figueros','Dayana Chaverri');
INSERT INTO prueba.board_of_directors VALUES(11,2013,'Rut Santamaria','Otiel Ocampo','Fabian Guadamuz','Meylin Montenegro',
									  'Cleotilde Mayorga','Nelson Barahona','Jose Jimenez','Leandro Astrada',
									  'Angelica Baltodano','Yoselin Medina');
INSERT INTO prueba.board_of_directors VALUES(13,2015,'Nohemi Blanco','Aaron Jimenez','John Guillen','Andrey Sandi',
									  'Keylin Contreras','Idania Aguero','Saul Villalobos','Ericka Pereira',
									  'Yendry Coto','Samuel Ugalde');

--INSERT IN THE TABLE project
INSERT INTO prueba.project VALUES(63,'Rueditas de amor','entregado sillas de ruedas y coches para niños y niñas que presentan necesidades especiales',
	   					   6,'12/06/2004',10,0,12725000);
INSERT INTO prueba.project VALUES(07,'Lecheton','Gran colecta nacional de leche, con la finalidad de donarlo
						   a hogares, asilos de ancianos,albergues y comedores infatiles de 
						   escasos recursos',20,'19/01/2010',3250,2075,625000);
INSERT INTO prueba.project VALUES(02,'Magico Sueño de Amor','Pretende cumplir sueños a niños que se encuentran con
						   enfermedades en Fase Terminal',10,'20/03/2007',25,0,365000);
INSERT INTO prueba.project VALUES(06,'Celebración día del niño','Se les hace a los niños una celebración para
						   felicitarlos',15,'09/09/2000',1627,0,5450000);
INSERT INTO prueba.project VALUES(18,'Entrega de Computadoras en Casa de Pan','Se dan computadoras portatiles y accesorios a niños',
						   4,'02/02/2018',10,0,1075285);
INSERT INTO prueba.project VALUES(36,'Equinoterapia','Se realiza una donación en conjunto con Plantas Eólicas SRL para 
						   el transporte de los niños con Autismo que reciben equinoterapia',5,'21/04/2008',21,0,
						   11500000);
INSERT INTO prueba.project VALUES(40,'Inicio de clases','Entrega de útiles escolares al inicio de la temporada 
						   escolar',4,'25/01/1989',125,0,8957000);
INSERT INTO prueba.project VALUES(264,'Enjoy','Para celebra el día de niño de una manera diferente llevando alegría en una dulce cajita, 
						   nuestra cajita Enjoy, en tiempos de COVID',5,'09/09/2019',2375,0,12584000);			
INSERT INTO prueba.project VALUES(09,'Peaje Voluntario','Recaudación de fondos para las actividades que se realizan 
						   durante el año, como las donaciones a centros y comedores infantiles',8,'07/05/2002',
						   456000,221000,3500000);
INSERT INTO prueba.project VALUES(52,'Cena Navideña','Preparar una cena navideña para niños de bajos recursos',
						   12,'25/12/2006',70,0,175000);	
INSERT INTO prueba.project VALUES(08,'Ven al cine conmigo','Visita a Cinemas con Niños de áreas rurales',
						   10,'14/11/2009',30,0,256000);
INSERT INTO prueba.project VALUES(72,'Construcción del Centro de Educación Comunitario','Construcción de un centro donde podamos apoyar a la niñez 
						  y a la juventud para contribuir a su desarrollo en la comunidad',7,'02/03/2015',52,13,54896400);
INSERT INTO prueba.project VALUES(14,'Eco Cabalgata','Se realizan actividades para recaudación de fondos para los grupos de adultos mayores',
							15,'17/09/2018',0,325,3075000);
INSERT INTO prueba.project VALUES(13,'Stand Up Comedy Show','Recaudacion de fondos para proyectos',4,'08/11/2015',552,253,2300400);
INSERT INTO prueba.project VALUES(45,'Sesiones de Zumba en Verano','Promover el ejercicio físico y a la vez recaudar fondos para proyectos',
						   3,'20/09/2019',125,356,1964142);

--INSERT IN THE TABLE member
INSERT INTO prueba.member VALUES(109511760,'Rosales','Sanchez Bonilla',50673456891,27,'Activo','rosalessb95@gmail.com',3002754421,07,02);
INSERT INTO prueba.member VALUES(206110897,'Claudio','Salas Contreras',50684629150,42,'Activo','clausalas879@gmail.com',3002045068,02,64);
INSERT INTO prueba.member VALUES(203360145,'Santiago','Romay Barbosa',50678496351,51,'Activo','romaybarsan@gmail.com',3002045068,02,64);
INSERT INTO prueba.member VALUES(00010076966,'Jenny','Lopez Morales',18095356500,35,'Activo','lopezmorales@gmail.com',3002078693,06,27);
INSERT INTO prueba.member VALUES(406998547,'Rodolfo','Jimenez Castillo',50682157046,31,'Activo','olfocast@gmail.com',3002078693,06,27);
INSERT INTO prueba.member VALUES(108967435,'Guillermo','Guillen Gomez',50665847637,48,'Activo','guigomez@gmail.com',3002754421,18,04);
INSERT INTO prueba.member VALUES(214690877,'Andrea','Hidalgo Guzman',50670315162,25,'Activo','guzhidal@gmail.com',3002754421,18,04);
INSERT INTO prueba.member VALUES(6084107319,'Jimena','Osorio Tenorio',50660054781,55,'Inactivo','menatenorio@hotmail.com',3002800540,36,12);
INSERT INTO prueba.member VALUES(365148956,'Sabina','Rodriguez Hernandez',50687569412,46,'Activo','rodrhernansab@gmail.com',3002800540,36,12);
INSERT INTO prueba.member VALUES(102890141,'Ana','Aragon Arauz',50672854123,53,'Inactivo','arauzgonana@ghotmail.com',3002800540,36,12);
INSERT INTO prueba.member VALUES(102364897,'Maria','Gamboa Mata',50689457123,42,'Inactivo','gambriama@gmail.com',3002800540,40,12);
INSERT INTO prueba.member VALUES(703486957,'Julio','Robleto Rodriguez',50684756123,35,'Activo','juliorodirguez@gmail.com',3002674149,264,07);
INSERT INTO prueba.member VALUES(636210569,'Jones','Cruz Diaz',50689513269,39,'Inactivo','jonescruz@gmail.com',3002674149,264,08);
INSERT INTO prueba.member VALUES(405741071,'Cesar','Solartes Salazar',50678924651,34,'Activo','sarlater@gmail.com',3002045068,09,15);
INSERT INTO prueba.member VALUES(512780517,'Justin','Solano Villalta',50661258476,49,'Activo','villaltin@gmail.com',3002754421,52,03);
INSERT INTO prueba.member VALUES(105976012,'Elizabeth','Monge Villagra',50685456210,26,'Activo','mongeliza@gmail.com',3002754421,63,03);
INSERT INTO prueba.member VALUES(306450211,'Genesis','Santana Arguedas',50682134715,37,'Activo','santanarguedas@hotmail.com',3002078693,08,37);

--INSERT IN THE TABLE beneficiary
INSERT INTO prueba.beneficiary VALUES(10227487,'Lucia', 'Montero', 86652998,'25m norte del BCR, Abangares, Guanacaste, Costa Rica', 'lucimontero@gmail.com' ,63);
INSERT INTO prueba.beneficiary VALUES(30105673,'Martin', 'Figueres', 50684685490,'100m oeste de la Iglesia, Belen, Heredia', 'martinarafi@gmail.com', 07);
INSERT INTO prueba.beneficiary VALUES(508970345,'Mariana', 'Perez', 50687654321,'150m norte de la Iglesia, Belen, Heredia, Costa Rica', 'marianaperez@gmail.com', 02);
INSERT INTO prueba.beneficiary VALUES(598712897,'Enrique', 'Cruz', 50689765645,'250m norte de Mundo Plastico, La Fortuna, San Carlos, Costa Rica', 'enricruz@gmail.com', 06);
INSERT INTO prueba.beneficiary VALUES(607890543,'Juana', 'Solano', 50689123456,'100m sur del BCR, La Fortuna, San Carlos, Costa Rica', 'juanasolano@gmail.com', 18);
INSERT INTO prueba.beneficiary VALUES(11643089,'Juan', 'Murillo', 50687897678,'50m de la iglesia, Los Angeles, San Carlos, Costa Rica', 'juanmurillo@gmail.com', 36);
INSERT INTO prueba.beneficiary VALUES(200889023,'Maria', 'Bonilla', 50684505050,'500 oeste del colegio, Coto Brus, Puntarenas, Costa Rica', 'mariabonilla@gmail.com', 08);
INSERT INTO prueba.beneficiary VALUES(345671529,'Luz', 'Carrillo', 50689864567,'10m del lavado de carros Garabito, Puntarenas, Costa Rica', 'luzcarrillo@gmail.com', 40);
INSERT INTO prueba.beneficiary VALUES(106218923,'Jesus', 'Loarte', 50688909089,'100m de la playa Rajada, La Cruz, Guanacaste, Costa Rica', 'jesusloarte@gmail.com', 264);
INSERT INTO prueba.beneficiary VALUES(27816245,'Julio', 'Cesar', 50687908932,'Frente a la escuelita, Los Chiles, Alajuela, Costa Rica', 'juliocesar@gmail.com', 09);
INSERT INTO prueba.beneficiary VALUES(761235789,'Julia', 'Vargas', 50689886543,'90m del cruce, Palmares, Alajuela, Costa Rica', 'juliavargas@gmail.com', 52);
INSERT INTO prueba.beneficiary VALUES(461276512,'Laura', 'Coto', 50676564636,'Frente a la clinica, Puriscal, San Jose, Costa Rica', 'lauracoto@gmail.com', 36);
INSERT INTO prueba.beneficiary VALUES(751277873,'Marco', 'Vargas', 50664567890,'Frente a la Iglesia Catolica, Puerto Jimenez, Puntarenas, Costa Rica', 'marcovargas@gmail.com', 08);
INSERT INTO prueba.beneficiary VALUES(267823190,'Cristina', 'Murillo', 50676898975,'A un costado de la Iglesia, Zarcero, Alajuela, Costa Rica', 'crismurillo@gmail.com', 40);
INSERT INTO prueba.beneficiary VALUES(190127873,'Pedro', 'Gonzalez', 50687896078,'Frente a la carniceria Maroto, Ciudad Quesada, Alajuela, Costa Rica', 'pedrogonzalez@gmail.com', 264);

--INSERT IN THE TABLE sponsor
INSERT INTO prueba.sponsor VALUES(206410512,'Melany Molina','molina@gmail.com','Activo',50689745123,63);
INSERT INTO prueba.sponsor VALUES(102380512,'Humberto Diaz','humberto@gmail.com','Activo',50676598472,07);
INSERT INTO prueba.sponsor VALUES(308110741,'Yamileth Gonzalez','gonzalez@gmail.com','Inactivo',50664512653,02);
INSERT INTO prueba.sponsor VALUES(708940561,'Fausto Gusman','gusman@gmail.com','Activo',50665894173,06);
INSERT INTO prueba.sponsor VALUES(263540178,'Guillermina Ruiz','guilleruiz@gmail.com','Activo',50665487906,18);
INSERT INTO prueba.sponsor VALUES(256740123,'Yirlany Sandoval','yirsan@gmail.com','Activo',50676894501,36);
INSERT INTO prueba.sponsor VALUES(102781748,'Alonso Ballestero','balles@gmail.com','Activo',50664859742,08);
INSERT INTO prueba.sponsor VALUES(210580356,'Santiago Porras','santi@gmail.com','Activo',50662514963,40);
INSERT INTO prueba.sponsor VALUES(601230547,'Allan Cruz','cruzallan@gmail.com','Activo',50684052176,264);
INSERT INTO prueba.sponsor VALUES(498710213,'Girasol Jara','soljara@gmail.com','Activo',50685269241,09);
INSERT INTO prueba.sponsor VALUES(395467896,'Fabricio Ponce','fabponce@gmail.com','Inactivo',50689714356,52);
INSERT INTO prueba.sponsor VALUES(205010426,'Filomena Hernandez','mena@gmail.com','Activo',50683571437,09);
INSERT INTO prueba.sponsor VALUES(107890531,'Joel Flores','joelf@gmail.com','Activo',50685963147,52);
INSERT INTO prueba.sponsor VALUES(564120371,'Celeste Rojas','celrojas@gmail.com','Inactivo',50682976124,08);
INSERT INTO prueba.sponsor VALUES(601910891,'Sandra Herrera','hersandra@gmail.com','Activo',50686374936,40);

--INSERT IN THE TABLE other_donations
INSERT INTO prueba.other_donations VALUES(1, '24/05/2009', 'Donacion de sillas en colegios de zonas rurales', 5000000, 206410512);
INSERT INTO prueba.other_donations VALUES(2, '18/01/2010', 'Donacion de libros a escuelas de bajos recursos', 10000000, 102380512);
INSERT INTO prueba.other_donations VALUES(3, '01/01/2015', 'Donacion de juguetes en Hogar Infantil Brotes de Olivo', 1500000, 308110741);
INSERT INTO prueba.other_donations VALUES(4, '09/12/2014', 'Donacion de estantes para orfanatos', 10000000, 708940561);
INSERT INTO prueba.other_donations VALUES(5, '14/09/2017', 'Donacion de sillas de ruedas en clinicas de zonas rurales', 150000000, 263540178);
INSERT INTO prueba.other_donations VALUES(6, '06/08/2015', 'Donacion de mesas en colegios rurales', 15000000, 256740123);
INSERT INTO prueba.other_donations VALUES(7, '23/04/2005', 'Donacion de sillas de ruedas en centros de rehabilitacion', 100000000,102781748);
INSERT INTO prueba.other_donations VALUES(8, '17/01/2018', 'Donacion de elementos para estimulacion en centros de rehabilitacion', 10000000,210580356);
INSERT INTO prueba.other_donations VALUES(9, '20/15/2013', 'Donacion de ropa en Fundacion Construyendo Sonrisas', 10000000, 601230547);
INSERT INTO prueba.other_donations VALUES(10,'12/12/2012', 'Donacion de juguetes en zonas indigenas', 10000000, 498710213);
INSERT INTO prueba.other_donations VALUES(15,'27/08/2019', 'Donacion de utiles escolares en zonas indigenas', 20000000, 395467896);
INSERT INTO prueba.other_donations VALUES(11,'18/07/2018', 'Donacion de computadoras en centros educativos de zonas rurales', 25000000, 205010426);
INSERT INTO prueba.other_donations VALUES(12,'03/03/2006', 'Donacion de pantallas en escuelas de bajos recursos', 10000000, 107890531);
INSERT INTO prueba.other_donations VALUES(13,'25/05/2019', 'Donacion de electrodomesticos en hogares de ancianos', 30000000, 564120371);
INSERT INTO prueba.other_donations VALUES(14,'30/11/2019', 'Donacion de camas y colchones en hospitales', 100000000, 601910891);

--INSERT IN THE TABLE economic_entry
INSERT INTO prueba.economic_entry VALUES(03,'Aporte para proyecto','02/08/2015',1458623,206410512);
INSERT INTO prueba.economic_entry VALUES(17,'Ayuda economica para el proyecto de construcción','01/05/2021',5236500,102380512);
INSERT INTO prueba.economic_entry VALUES(36,'Aporte economico para celebración de niños','08/09/2010',25000,308110741);
INSERT INTO prueba.economic_entry VALUES(49,'Aporte economico para proyecto equinoterapia','02/08/2015',1458623,708940561);
INSERT INTO prueba.economic_entry VALUES(53,'Aporte para proyecto equinoterapia','06/11/2014',1452000,263540178);
INSERT INTO prueba.economic_entry VALUES(95,'Aporte para proyecto','04/08/2011',1458623,256740123);
INSERT INTO prueba.economic_entry VALUES(1014,'Aporte economico para proyecto ven al cine conmigo','10/11/2009',1458623,102781748);
INSERT INTO prueba.economic_entry VALUES(289,'Aporte para Lecheton','03/03/2000',775000,210580356);
INSERT INTO prueba.economic_entry VALUES(78,'Aporte para proyecto enjoy','12/07/2005',1458623,601230547);
INSERT INTO prueba.economic_entry VALUES(24,'Aporte economico para proyecto rueditas de amor','12/06/2004',2000000,498710213);
INSERT INTO prueba.economic_entry VALUES(59,'Aporte economico para proyecto magico sueño de amor','20/03/2007',375000,395467896);
INSERT INTO prueba.economic_entry VALUES(41,'Aporte economico para bebidas para voluntarios del proyecto peaje voluntario','07/05/2002',75000,205010426);
INSERT INTO prueba.economic_entry VALUES(54,'Aporte para proyecto ven al cine conmigo','07/11/2009',150000,107890531);
INSERT INTO prueba.economic_entry VALUES(23,'Aporte economico para proyecto magico sueño de amor','02/03/2007',2500000,564120371);
INSERT INTO prueba.economic_entry VALUES(74,'Aporte economico para celebración de niños','02/09/2000',175000,601910891);

--INSERT IN THE TABLE bill_payment
INSERT INTO prueba.bill_payment VALUES(015684, '24/05/2019', 1000000, 'Agua', 'Pago del agua por mes', 3, 3002045068);
INSERT INTO prueba.bill_payment VALUES(015736, '12/11/2018', 700000, 'Luz', 'Pago de luz de un mes', 2, 3002078693);
INSERT INTO prueba.bill_payment VALUES(025894, '02/08/2020', 200000,'Agua', 'Pago de agua de tres meses', 5, 3002754421);
INSERT INTO prueba.bill_payment VALUES(028961, '23/07/2018', 120000, 'Internet', 'Pago de internet de un mes', 0, 3002800540);
INSERT INTO prueba.bill_payment VALUES(035687, '23/11/2017', 100000, 'Basura', 'Pago de basura de un mes', 0, 3002674149);
INSERT INTO prueba.bill_payment VALUES(031684, '14/03/2019', 110000, 'Luz', 'Pago de luz de 15 dias', 5, 3002045068);
INSERT INTO prueba.bill_payment VALUES(041520, '27/07/2021', 70000, 'Agua', 'Pago de agua de un mes', 0, 3002078693);
INSERT INTO prueba.bill_payment VALUES(046986, '15/02/2020', 120000, 'Basura', 'Pago de basuta de un mes', 0, 3002754421);
INSERT INTO prueba.bill_payment VALUES(057982, '04/09/2020', 500000, 'Luz', 'Pago de luz de un mes', 2, 3002800540);
INSERT INTO prueba.bill_payment VALUES(051998, '19/10/2017', 900000, 'Agua', 'Pago de agua de un mes', 3, 3002674149);
INSERT INTO prueba.bill_payment VALUES(069191, '05/09/2020', 350000, 'Internet', 'Pago de internet de un mes', 5, 3002045068);
INSERT INTO prueba.bill_payment VALUES(061565, '23/07/2022', 1000000, 'Telefono', 'Pago de telefono de dos meses', 10, 3002078693);
INSERT INTO prueba.bill_payment VALUES(071568, '02/07/2016', 100000, 'Internet', 'Pago de internet de un mes', 4, 3002754421);
INSERT INTO prueba.bill_payment VALUES(079891, '23/07/2015', 250000, 'Telefono', 'Pago de telefono de un mes', 2, 3002800540);
INSERT INTO prueba.bill_payment VALUES(082546, '23/01/2020', 120000, 'Internet', 'Pago de internet de un mes', 0, 3002674149);

--INSERT IN THE TABLE national_or_international_meeting
INSERT INTO prueba.national_or_international_meeting VALUES(01, '70', 'Presencial', '9:00 am', '24/05/2018', 02);
INSERT INTO prueba.national_or_international_meeting VALUES(08, '100', 'Virtual', '2:00 pm', '25/05/2020', 64);
INSERT INTO prueba.national_or_international_meeting VALUES(33, '95', 'Presencial', '3:00 pm', '05/06/2006', 27);
INSERT INTO prueba.national_or_international_meeting VALUES(24, '30', 'Virtual', '8:00 am', '13/06/2021', 04);
INSERT INTO prueba.national_or_international_meeting VALUES(44, '45', 'Virtual', '10:00 am', '20/11/2019', 12);
INSERT INTO prueba.national_or_international_meeting VALUES(06, '150', 'Presencial', '1:00 pm', '10/01/2019', 07);
INSERT INTO prueba.national_or_international_meeting VALUES(88, '20', 'Virtual', '8:00 am', '15/02/2020', 08);
INSERT INTO prueba.national_or_international_meeting VALUES(09, '90', 'Presencial', '6:00 pm', '25/05/2018', 02);
INSERT INTO prueba.national_or_international_meeting VALUES(25, '25', 'Presencial', '9:00 am', '15/11/1971', 15);
INSERT INTO prueba.national_or_international_meeting VALUES(65, '124', 'Virtual', '3:00 pm', '30/05/2020', 03);
INSERT INTO prueba.national_or_international_meeting VALUES(13, '85', 'Presencial', '3:00 pm', '23/06/2016', 37);
INSERT INTO prueba.national_or_international_meeting VALUES(05, '35', 'Presencial', '5:00 pm', '09/12/2001', 24);
INSERT INTO prueba.national_or_international_meeting VALUES(95, '75', 'Presencial', '1:00 pm', '11/11/2011', 16);
INSERT INTO prueba.national_or_international_meeting VALUES(49, '60', 'Presencial', '8:30 am', '10/09/2007', 09);
INSERT INTO prueba.national_or_international_meeting VALUES(71, '50', 'Virtual', '12:30 pm', '30/10/2013', 11);

--INSERT IN THE TABLE volunteer
INSERT INTO prueba.volunteer VALUES(306140265,'Alex','Monge',50687836253,'monalex@gmail.com',3002045068);
INSERT INTO prueba.volunteer VALUES(205890671,'Monica','Marenco',50662935486,'marencomonx@gmail.com',3002078693);
INSERT INTO prueba.volunteer VALUES(705810562,'Guillermo','Arias',50682547156,'qriasgui@gmail.com',3002754421);
INSERT INTO prueba.volunteer VALUES(205890672,'Marily','Monrrey',50662935486,'marencomonx@gmail.com',3002800540);
INSERT INTO prueba.volunteer VALUES(305940147,'Jenifer','Arauz',50683513962,'arauzjeni@gmail.com',3002674149);
INSERT INTO prueba.volunteer VALUES(201147863,'Jimena','Gomez',50675869104,'menago@gmail.com',3002674149);
INSERT INTO prueba.volunteer VALUES(405817241,'Belen','Gutierrez',50686915243,'gubelen@gmail.com',3002078693);
INSERT INTO prueba.volunteer VALUES(502110563,'Adonis','Flores',50686914520,'adonif@gmail.com',3002674149);
INSERT INTO prueba.volunteer VALUES(602347893,'Rosa','Blanco',50676928354,'roblanc@gmail.com',3002754421);
INSERT INTO prueba.volunteer VALUES(708640142,'Ester','Figueres',50667562849,'figuester@gmail.com',3002674149);
INSERT INTO prueba.volunteer VALUES(789647231,'Pablo','Valverde',50666958814,'valverdep@gmail.com',3002045068);
INSERT INTO prueba.volunteer VALUES(501236541,'Esmeralda','Sandoval',50672560389,'sandesme@gmail.com',3002800540);
INSERT INTO prueba.volunteer VALUES(2145709687,'Cesar','Hugalde',50672536891,'cesarh@gmail.com',3002078693);
INSERT INTO prueba.volunteer VALUES(4652189524,'Abraham','Solis',50686847112,'solisabram@gmail.com',3002045068);
INSERT INTO prueba.volunteer VALUES(608610798,'Mara','Jordan',50669547218,'jordanmara@gmail.com',3002674149);

--INSERT IN THE TABLE club_meeting
INSERT INTO prueba.club_meeting VALUES(25,'18/09/2022','5:00pm','Presencial','Socios','6',109511760);
INSERT INTO prueba.club_meeting VALUES(52,'19/01/2021','4:00pm','Presencial','Socios','7',206110897);
INSERT INTO prueba.club_meeting VALUES(02,'07/09/2004','5:00pm','Virtual','Junta Directiva','10',203360145);
INSERT INTO prueba.club_meeting VALUES(13,'06/07/2008','6:00pm','Presencial','Socios','12',00010076966);
INSERT INTO prueba.club_meeting VALUES(37,'11/06/2007','10:00am','Virtual','Socios','17',406998547);
INSERT INTO prueba.club_meeting VALUES(61,'17/08/2003','1:00pm','Virtual','Junta Directiva','10',108967435);
INSERT INTO prueba.club_meeting VALUES(81,'07/05/2009','5:00pm','Virtual','Socios','14',214690877);
INSERT INTO prueba.club_meeting VALUES(74,'06/04/2000','3:00pm','Presencial','Junta Directiva','6',6084107319);
INSERT INTO prueba.club_meeting VALUES(11,'07/03/2001','9:00am','Presencial','Socios','10',365148956);
INSERT INTO prueba.club_meeting VALUES(09,'03/02/2002','5:00pm','Virtual','Socios','20',102890141);
INSERT INTO prueba.club_meeting VALUES(07,'06/07/1999','6:00pm','Presencial','Junta Directiva','5',102364897);
INSERT INTO prueba.club_meeting VALUES(18,'08/04/2021','7:00pm','Presencial','Socios','7',703486957);
INSERT INTO prueba.club_meeting VALUES(06,'21/01/2020','11:00am','Virtual','Socios','12',636210569);
INSERT INTO prueba.club_meeting VALUES(03,'27/06/2018','2:00pm','Presencial','Junta Directiva','11',405741071);
INSERT INTO prueba.club_meeting VALUES(12,'30/09/2017','9:30am','Virtual','Socios','17',512780517);
INSERT INTO prueba.club_meeting VALUES(05,'29/03/2022','3:30pm','Presencial','Socios','25',105976012);
INSERT INTO prueba.club_meeting VALUES(10,'24/10/2022','6:30pm','Virtual','Socios','15',105976012);

--INSERT IN THE TABLE payment
INSERT INTO prueba.payment VALUES(01,'05/06/2019','AYA',45200,'Se cancelo el monto del agua',3002674149);				   
INSERT INTO prueba.payment VALUES(02,'16/04/2012','ICE',15600,'Se cancelo el monto del internet',3002045068);
INSERT INTO prueba.payment VALUES(03,'13/07/2006','AYA',35100,'Se cancelo el monto del agua',3002078693);
INSERT INTO prueba.payment VALUES(04,'21/08/2011','Librería',10500,'Se compro papeleria y utiles',3002754421);
INSERT INTO prueba.payment VALUES(05,'27/05/2015','ICE',17800,'Se cancelo el monto de la luz',3002800540);
INSERT INTO prueba.payment VALUES(06,'30/08/2009','Alquiler',75000,'Se cancelo el monto del alquiler',3002674149);
INSERT INTO prueba.payment VALUES(07,'20/11/2014','AYA',22500,'Se cancelo el monto del agua',3002754421);
INSERT INTO prueba.payment VALUES(08,'15/03/2010','AYA',15800,'Se cancelo el monto del agua',3002045068);
INSERT INTO prueba.payment VALUES(09,'21/08/2011','Librería',10500,'Se compro papeleria y utiles',3002800540);
INSERT INTO prueba.payment VALUES(10,'18/07/2018','ICE',13500,'Se cancelo el monto del internet',3002754421);
INSERT INTO prueba.payment VALUES(11,'01/03/2016','Alquiler',115000,'Se cancelo el monto del alquiler',3002674149);
INSERT INTO prueba.payment VALUES(12,'10/08/2004','AYA',12050,'Se cancelo el monto del agua',3002800540);
INSERT INTO prueba.payment VALUES(13,'23/05/2010','Librería',5680,'Se compro papeleria y utiles',3002078693);
INSERT INTO prueba.payment VALUES(14,'17/02/2000','ICE',5000,'Se cancelo el monto del internet',3002078693);
INSERT INTO prueba.payment VALUES(15,'26/05/2017','ICE',11000,'Se cancelo el monto del internet',3002754421);


--INSERT IN THE TABLE payment_to_national
INSERT INTO prueba.payment_to_national VALUES(01,'27/09/2022',17500,'Pendiente',3002674149);					   
INSERT INTO prueba.payment_to_national VALUES(02,'17/02/2001',16700,'Cancelado',3002045068);
INSERT INTO prueba.payment_to_national VALUES(03,'14/10/2017',25400,'Cancelado',3002078693);
INSERT INTO prueba.payment_to_national VALUES(04,'29/06/2015',23100,'Cancelado',3002754421);
INSERT INTO prueba.payment_to_national VALUES(05,'10/01/2018',14800,'Cancelado',3002800540);
INSERT INTO prueba.payment_to_national VALUES(06,'23/10/2022',11700,'Pendiente',3002045068);
INSERT INTO prueba.payment_to_national VALUES(07,'30/06/2019',25400,'Cancelado',3002674149);
INSERT INTO prueba.payment_to_national VALUES(08,'26/04/2014',32500,'Cancelado',3002800540);
INSERT INTO prueba.payment_to_national VALUES(09,'13/09/2013',7250,'Cancelado',3002078693);
INSERT INTO prueba.payment_to_national VALUES(10,'07/07/2015',17600,'Cancelado',3002674149);
INSERT INTO prueba.payment_to_national VALUES(11,'20/11/2022',21800,'Pendiente',3002754421);
INSERT INTO prueba.payment_to_national VALUES(12,'28/02/2021',9500,'Cancelado',3002674149);
INSERT INTO prueba.payment_to_national VALUES(13,'14/12/2022',13450,'Pendiente',3002800540);
INSERT INTO prueba.payment_to_national VALUES(14,'30/09/2018',14800,'Cancelado',3002754421);
INSERT INTO prueba.payment_to_national VALUES(15,'31/11/2016',22640,'Cancelado',3002674149);

--INSERT IN THE TABLE membership_payment
INSERT INTO prueba.membership_payment VALUES(01,'Cancelado', 5250, '03/06/2012',109511760);
INSERT INTO prueba.membership_payment VALUES(02,'Cancelado',6750,'13/07/2007',206110897);
INSERT INTO prueba.membership_payment VALUES(06,'Pendiente',10000,'19/04/2010',203360145);
INSERT INTO prueba.membership_payment VALUES(72,'Cancelado',6550,'07/12/2014',00010076966);
INSERT INTO prueba.membership_payment VALUES(41,'Cancelado',7250,'21/08/2016',406998547);
INSERT INTO prueba.membership_payment VALUES(58,'Pendiente',12250,'23/09/1999',108967435);
INSERT INTO prueba.membership_payment VALUES(63,'Cancelado',6325,'14/02/2015',214690877);
INSERT INTO prueba.membership_payment VALUES(51,'Cancelado',5000,'01/04/1996',6084107319);
INSERT INTO prueba.membership_payment VALUES(67,'Cancelado',7850,'17/01/2017',365148956);
INSERT INTO prueba.membership_payment VALUES(98,'Pendiente',15000,'06/12/2014',102890141);
INSERT INTO prueba.membership_payment VALUES(65,'Cancelado',3620,'24/11/2001',102364897);
INSERT INTO prueba.membership_payment VALUES(12,'Cancelado',5745,'09/10/1995',703486957);
INSERT INTO prueba.membership_payment VALUES(17,'Pendiente',11500,'07/12/2014',636210569);
INSERT INTO prueba.membership_payment VALUES(19,'Pendiente',8950,'21/08/2016',405741071);
INSERT INTO prueba.membership_payment VALUES(20,'Cancelado',13675,'07/12/2014',512780517);

--INSERT IN THE TABLE event
INSERT INTO prueba.event VALUES(1,'20/08/2020','Seminario','de clubes',5000);
INSERT INTO prueba.event VALUES(2,'20/08/2020','Conferencia','nacional',500000);
INSERT INTO prueba.event VALUES(3,'05/07/2021','Charlas','internacional',1000000);
INSERT INTO prueba.event VALUES(4,'17/07/2022','Convención','de clubes',700000);
INSERT INTO prueba.event VALUES(5,'20/05/2021','Rueda de prensa','nacional',850000);
INSERT INTO prueba.event VALUES(6,'20/03/2020','Junta general','internacional',300000);
INSERT INTO prueba.event VALUES(7,'20/02/2022','Feria','de clubes',1300000);
INSERT INTO prueba.event VALUES(8,'20/11/2021','Conferencia','nacional',170000);
INSERT INTO prueba.event VALUES(9,'20/10/2020','Reunion general','internacional',660000);
INSERT INTO prueba.event VALUES(10,'20/04/2020','Feria','de clubes',480000);
INSERT INTO prueba.event VALUES(11,'20/06/2022','Seminario','nacional',2000500);
INSERT INTO prueba.event VALUES(12,'20/03/2021','Cena de seminario','internacional',1300000);
INSERT INTO prueba.event VALUES(13,'20/05/2020','Reunion y seminario general','de clubes',900000);
INSERT INTO prueba.event VALUES(14,'20/12/2018','Junta directiva general','nacional',560000);				 
INSERT INTO prueba.event VALUES(15,'20/11/2021','Convención entre clubes','internacional',790000);

--INSERT IN THE TABLE social_media
INSERT INTO prueba.social_media VALUES(1, 'Facebook', 300000, 3002674149);
INSERT INTO prueba.social_media VALUES(11, 'Instagram', 3521010, 3002674149);
INSERT INTO prueba.social_media VALUES(111, 'Telegram', 200, 3002674149);
INSERT INTO prueba.social_media VALUES(1111, 'WhatsApp', 30, 3002674149);
INSERT INTO prueba.social_media VALUES(2, 'Facebook', 326, 3002045068);
INSERT INTO prueba.social_media VALUES(22, 'Instagram', 714, 3002045068);
INSERT INTO prueba.social_media VALUES(222, 'Telegram', 95, 3002045068);
INSERT INTO prueba.social_media VALUES(2222, 'WhatsApp', 25 , 3002045068);
INSERT INTO prueba.social_media VALUES(3, 'Instagram', 661, 3002078693);
INSERT INTO prueba.social_media VALUES(33, 'Facebook', 4025, 3002078693);
INSERT INTO prueba.social_media VALUES(333, 'Telegram', 325, 3002078693);
INSERT INTO prueba.social_media VALUES(3333, 'WhatsApp', 61, 3002078693);
INSERT INTO prueba.social_media VALUES(4, 'Facebook', 925, 3002754421);
INSERT INTO prueba.social_media VALUES(44, 'Instagram', 614, 3002754421);
INSERT INTO prueba.social_media VALUES(444, 'Telegram', 22, 3002754421);
INSERT INTO prueba.social_media VALUES(4444, 'WhatsApp', 32, 3002754421);
INSERT INTO prueba.social_media VALUES(5, 'Instagram', 725, 3002800540);
INSERT INTO prueba.social_media VALUES(55, 'Facebook', 1426, 3002800540);
INSERT INTO prueba.social_media VALUES(555, 'Telegram', 15, 3002800540);
INSERT INTO prueba.social_media VALUES(5555, 'WhatsApp', 23, 3002800540);

--INSERT IN THE TABLE camaraderie
INSERT INTO prueba.camaraderie VALUES(1, 'Metropoli', 'martes', 200, 1 );
INSERT INTO prueba.camaraderie VALUES(2, 'Metropoli', 'Martes', 200, 2 );
INSERT INTO prueba.camaraderie VALUES(3, 'San Jose', 'Domingo', 300, 3 );
INSERT INTO prueba.camaraderie VALUES(4, 'Tres Rios', 'Martes', 400, 4 );
INSERT INTO prueba.camaraderie VALUES(5, 'Limón', 'Jueves', 100, 5 );
INSERT INTO prueba.camaraderie VALUES(6, 'Tilaran', 'Domingo', 240, 6 );
INSERT INTO prueba.camaraderie VALUES(7, 'Limón', 'Martes', 350, 7 );
INSERT INTO prueba.camaraderie VALUES(8, 'Metropoli', 'Sabado', 178, 8 );
INSERT INTO prueba.camaraderie VALUES(9, 'Tres Rios', 'Lunes', 469, 9 );
INSERT INTO prueba.camaraderie VALUES(10, 'San Jose', 'Domingo', 345, 10 );
INSERT INTO prueba.camaraderie VALUES(11, 'Limón', 'Jueves', 289, 11 );
INSERT INTO prueba.camaraderie VALUES(12, 'San Jose', 'Martes', 89, 12 );
INSERT INTO prueba.camaraderie VALUES(13, 'Tilaran', 'Miercoles', 95, 13 );
INSERT INTO prueba.camaraderie VALUES(14, 'San Jose', 'Martes', 230, 14 );
INSERT INTO prueba.camaraderie VALUES(15, 'Metropoli', 'Sabado', 120, 15 );

--INSERT IN THE TABLE type_project  (ARREGLAR)
INSERT INTO prueba.type_project VALUES(01,FALSE,FALSE,FALSE,TRUE,FALSE,63);
INSERT INTO prueba.type_project VALUES(02,FALSE,FALSE,FALSE,FALSE,TRUE,07);
INSERT INTO prueba.type_project VALUES(03,FALSE,FALSE,TRUE,FALSE,FALSE,02);
INSERT INTO prueba.type_project VALUES(04,FALSE,FALSE,TRUE,FALSE,FALSE,06);
INSERT INTO prueba.type_project VALUES(05,TRUE,FALSE,FALSE,FALSE,FALSE,18);
INSERT INTO prueba.type_project VALUES(06,FALSE,FALSE,FALSE,TRUE,FALSE,36);
INSERT INTO prueba.type_project VALUES(07,FALSE,FALSE,TRUE,FALSE,FALSE,08);
INSERT INTO prueba.type_project VALUES(08,TRUE,FALSE,FALSE,FALSE,FALSE,40);
INSERT INTO prueba.type_project VALUES(09,FALSE,FALSE,TRUE,FALSE,FALSE,264);
INSERT INTO prueba.type_project VALUES(10,FALSE,FALSE,FALSE,FALSE,TRUE,09);
INSERT INTO prueba.type_project VALUES(11,FALSE,FALSE,FALSE,FALSE,TRUE,52);
INSERT INTO prueba.type_project VALUES(12,TRUE,FALSE,FALSE,FALSE,FALSE,72);
INSERT INTO prueba.type_project VALUES(13,FALSE,FALSE,TRUE,FALSE,FALSE,14);
INSERT INTO prueba.type_project VALUES(14,FALSE,FALSE,FALSE,FALSE,TRUE,13);
INSERT INTO prueba.type_project VALUES(15,FALSE,FALSE,FALSE,FALSE,TRUE,45);

--INSERT IN THE TABLE category_project (ARREGLAR)
INSERT INTO prueba.category_project VALUES(0123,TRUE,FALSE,63);
INSERT INTO prueba.category_project VALUES(0145,FALSE,TRUE,07);
INSERT INTO prueba.category_project VALUES(0163,TRUE,FALSE,02);
INSERT INTO prueba.category_project VALUES(0127,TRUE,FALSE,06);
INSERT INTO prueba.category_project VALUES(0187,TRUE,FALSE,18);
INSERT INTO prueba.category_project VALUES(0199,TRUE,FALSE,36);
INSERT INTO prueba.category_project VALUES(0153,TRUE,FALSE,08);
INSERT INTO prueba.category_project VALUES(0165,TRUE,FALSE,40);
INSERT INTO prueba.category_project VALUES(0167,TRUE,FALSE,264);
INSERT INTO prueba.category_project VALUES(0135,FALSE,TRUE,09);
INSERT INTO prueba.category_project VALUES(0198,TRUE,FALSE,52);
INSERT INTO prueba.category_project VALUES(0178,TRUE,FALSE,72);
INSERT INTO prueba.category_project VALUES(0134,FALSE,TRUE,14);
INSERT INTO prueba.category_project VALUES(0180,FALSE,TRUE,13);
INSERT INTO prueba.category_project VALUES(0156,FALSE,TRUE,45);

--INSERT IN THE TABLE INTERMEDIATE attend_member_event
INSERT INTO prueba.attend_member_event VALUES(206110897, 1);
INSERT INTO prueba.attend_member_event VALUES(203360145, 2);
INSERT INTO prueba.attend_member_event VALUES(00010076966, 3);
INSERT INTO prueba.attend_member_event VALUES(406998547, 4);
INSERT INTO prueba.attend_member_event VALUES(108967435, 5);
INSERT INTO prueba.attend_member_event VALUES(214690877, 6);
INSERT INTO prueba.attend_member_event VALUES(6084107319, 7);
INSERT INTO prueba.attend_member_event VALUES(365148956, 8);
INSERT INTO prueba.attend_member_event VALUES(102890141, 9);
INSERT INTO prueba.attend_member_event VALUES(102364897, 10);
INSERT INTO prueba.attend_member_event VALUES(703486957, 11);
INSERT INTO prueba.attend_member_event VALUES(636210569, 12);
INSERT INTO prueba.attend_member_event VALUES(405741071, 13);
INSERT INTO prueba.attend_member_event VALUES(512780517, 14);
INSERT INTO prueba.attend_member_event VALUES(105976012, 15);




-------------- TABLAS DEL ESQUEMA PRODUCCION ----------------

CREATE TABLE produccion.club
( 
	id_club 			NUMERIC(15) NOT NULL,
	name_club 			VARCHAR(50) NOT NULL,
	phone_number_club 	NUMERIC(15) NOT NULL,
	mail_club 			VARCHAR(100) NOT NULL, 
	anniversary_club 	VARCHAR(10) NOT NULL,
	
	CONSTRAINT pk_club PRIMARY KEY(id_club)
);

CREATE TABLE produccion.member
(
	id_member      			NUMERIC(15)   NOT NULL,
    name_member  	   	 	VARCHAR(30)  NOT NULL,
	last_name_member		VARCHAR(30)  NOT NULL,
	phone_number_member		NUMERIC(15)  NOT NULL,
	age_member				NUMERIC(100) NOT NULL,
	status_member			VARCHAR(30)  NOT NULL,
	mail_member				VARCHAR(100)  NOT NULL,
	id_club 				NUMERIC(15)  NOT NULL,
	id_project 				NUMERIC(15)  NOT NULL,
	id_board_of_directors 	NUMERIC(15)  NOT NULL,
	
    CONSTRAINT pk_marca PRIMARY KEY (id_member)
);

CREATE TABLE produccion.membership_payment
(
    membership_payment_record     NUMERIC(10)  NOT NULL,
    status_membership_payment  	  VARCHAR(30)  NOT NULL,
	amount_membership_payment	  NUMERIC(10)  NOT NULL,
	date_membership_payment		  VARCHAR(10)  NOT NULL,
	id_member      				  NUMERIC(15)   NOT NULL,
	
    CONSTRAINT pk_membership_payment PRIMARY KEY (membership_payment_record)
);

CREATE TABLE produccion.project
(
	id_project 										NUMERIC(15)  NOT NULL,
	name_project 									VARCHAR(50)  NOT NULL,
	description_project 							VARCHAR(300) NOT NULL,
	number_of_hours_invested_per_partner_project 	NUMERIC(10)   NOT NULL,
	completion_date_of_the_project 					VARCHAR(10)  NOT NULL,
	number_of_children_benefited_by_project 		NUMERIC(10)  NOT NULL,
	number_of_adults_benefited_by_project 			NUMERIC(10)  NOT NULL,
	total_amount_of_sponsorship_for_project  		NUMERIC(10)  NOT NULL,
	
	CONSTRAINT pk_project PRIMARY KEY(id_project)
);


CREATE TABLE produccion.type_project 
(
	id_type_project   NUMERIC(10) 	NOT NULL,
	educational       BOOLEAN 	 	NOT NULL,
	ecological        BOOLEAN 	 	NOT NULL,
	recreation        BOOLEAN 	 	NOT NULL,
	health            BOOLEAN 	 	NOT NULL,
	other 			  BOOLEAN 	 	NOT NULL,
	id_project 		  NUMERIC(15)   NOT NULL,

	CONSTRAINT pk_type_project PRIMARY KEY(id_type_project)
);


CREATE TABLE produccion.category_project
(
	id_category_project           NUMERIC(10)  NOT NULL,
	social_service                BOOLEAN 	   NOT NULL,
	collection_category_project   BOOLEAN 	   NOT NULL,
	id_project 					  NUMERIC(15)  NOT NULL,
	
	CONSTRAINT pk_category_project PRIMARY KEY(id_category_project)
);


CREATE TABLE produccion.sponsor
(
	id_sponsor                   NUMERIC(20)  NOT NULL,
	name_sponsor                 VARCHAR(100) NOT NULL,
	mail_sponsor                 VARCHAR(25)  NOT NULL,
	status_sponsor               VARCHAR(10)  NOT NULL,
	phone_number_sponsor         NUMERIC(15)   NOT NULL,
	id_project 					 NUMERIC(15)  NOT NULL,

	CONSTRAINT pk_sponsor PRIMARY KEY(id_sponsor)
);


CREATE TABLE produccion.economic_entry
(
	transaction_number_economic_entry    NUMERIC(10)  NOT NULL,
	description_economic_entry           VARCHAR(100) NOT NULL,
	date_economic_entry 		         VARCHAR(15)  NOT NULL,
	amount_economic_entry 		         NUMERIC(30)  NOT NULL,
	id_sponsor                  		 NUMERIC(20)  NOT NULL,
	
	CONSTRAINT pk_economic_entry PRIMARY KEY(transaction_number_economic_entry)
);


CREATE TABLE produccion.other_donations  
(
	serial_number_other_donations    NUMERIC(10)  NOT NULL,
	date_other_donations             VARCHAR(10)  NOT NULL,
	description_other_donations      VARCHAR(100) NOT NULL,
	approximate_amount               NUMERIC(30)  NOT NULL,
	id_sponsor                   	 NUMERIC(20)  NOT NULL,

	CONSTRAINT pk_other_donations PRIMARY KEY(serial_number_other_donations)
);


CREATE TABLE produccion.beneficiary
(
	id_beneficiary            NUMERIC(20)  NOT NULL,
	name_beneficiary          VARCHAR(30)  NOT NULL,
	last_name_beneficiary     VARCHAR(50)  NOT NULL,
	phone_number_beneficiary  NUMERIC(15)  NOT NULL, 
	address                   VARCHAR(300) NOT NULL,
	mail_beneficiary          VARCHAR(50)  NOT NULL,
	id_project 				  NUMERIC(15)  NOT NULL,

	CONSTRAINT pk_beneficiary PRIMARY KEY(id_beneficiary)
); 


CREATE TABLE produccion.board_of_directors
(
	id_board_of_directors 		NUMERIC(15) NOT NULL,
	year_board_of_directors 	NUMERIC(5)  NOT NULL,
	president 					VARCHAR(50) NOT NULL,
	vice_president 				VARCHAR(50) NOT NULL,
	secretary 					VARCHAR(50) NOT NULL,
	treasurer 					VARCHAR(50) NOT NULL,
	fiscal 						VARCHAR(50) NOT NULL,
	vocal1 						VARCHAR(50) NOT NULL,
	vocal2 						VARCHAR(50) NOT NULL,
	director1 					VARCHAR(50) NOT NULL,
	director2 					VARCHAR(50) NOT NULL,
	sargeant_at_arms 			VARCHAR(50) NOT NULL,
	
	CONSTRAINT pk_board_of_directors PRIMARY KEY(id_board_of_directors)
);


CREATE TABLE produccion.club_meeting
(
	id_club_meeting 			NUMERIC(15) NOT NULL,
	date_club_meeting 			VARCHAR(10) NOT NULL,
	hour_club_meeting 			VARCHAR(10)  NOT NULL,
	type_club_meeting 			VARCHAR(40) NOT NULL,
	reunion_class 				VARCHAR(20) NOT NULL,
	attendance_club_meeting 	VARCHAR(10)  NOT NULL,
	id_member      				NUMERIC(15)  NOT NULL,
	
	CONSTRAINT pk_club_meeting PRIMARY KEY(id_club_meeting)
);


CREATE TABLE produccion.national_or_international_meeting
(
	id_national_or_international_meeting 			NUMERIC(15) NOT NULL,
	attendance_national_or_international_meeting 	VARCHAR(10)  NOT NULL,
	type_national_or_international_meeting 			VARCHAR(20) NOT NULL,
	hour_national_or_international_meeting 			VARCHAR(10)  NOT NULL,
	date_national_or_international_meeting 			VARCHAR(10) NOT NULL,
	id_board_of_directors 							NUMERIC(15) NOT NULL,
	
	CONSTRAINT pk_national_or_international_meeting PRIMARY KEY(id_national_or_international_meeting)
);


CREATE TABLE produccion.bill_payment
(
    registry_number_bill_payment    VARCHAR(10)  NOT NULL,
    date_bill_payment  	  			VARCHAR(10)  NOT NULL,
	amount_bill_payment				NUMERIC(10)  NOT NULL,
	trade_bill_payment				VARCHAR(100) NOT NULL,
	description_bill_payment		VARCHAR(200) NOT NULL,
	discount_bill_payment			NUMERIC(10)   NOT NULL,
	id_club 						NUMERIC(15)  NOT NULL,
	
    CONSTRAINT pk_bill_payment PRIMARY KEY (registry_number_bill_payment)
);


CREATE TABLE produccion.payment
(
    registry_number_payment     VARCHAR(10)   NOT NULL,
    date_payment  	  			VARCHAR(10)   NOT NULL,
	trade_payment	  			VARCHAR(100)  NOT NULL,
	amount_payment				NUMERIC(10)   NOT NULL,
	description_payment			VARCHAR(200)  NOT NULL,
	id_club 					NUMERIC(15)   NOT NULL,
	
    CONSTRAINT pk_payment PRIMARY KEY (registry_number_payment)
);


CREATE TABLE produccion.payment_to_national
(
    registry_number_payment_national    VARCHAR(10)  NOT NULL,
    date_payment_to_national  	  		VARCHAR(10)  NOT NULL,
	amount_payment_to_national			NUMERIC(10)  NOT NULL,
	status_payment_to_national			VARCHAR(15) NOT NULL,
	id_club 							NUMERIC(15)  NOT NULL,
	
    CONSTRAINT pk_payment_to_national PRIMARY KEY (registry_number_payment_national)
);


CREATE TABLE produccion.volunteer 
(
	id_volunteer 				NUMERIC(15) NOT NULL,
	name_volunteer 				VARCHAR(50) NOT NULL,
	last_name_volunteer 		VARCHAR(50) NOT NULL,
	phone_number_volunteer 		NUMERIC(15) NOT NULL,
	mail_volunteer 				VARCHAR(100) NOT NULL,
	id_club 					NUMERIC(15) NOT NULL,
	
	CONSTRAINT pk_volunteer PRIMARY KEY(id_volunteer)
);


CREATE TABLE produccion.social_media
(
    id_social_media       VARCHAR(20)  NOT NULL,
    social_network  	  VARCHAR(80)  NOT NULL,
	number_of_followers	  NUMERIC(10)  NOT NULL,
	id_club 			  NUMERIC(15)  NOT NULL,
	
    CONSTRAINT pk_social_media PRIMARY KEY (id_social_media)
);


CREATE TABLE produccion.event
(
	id_event 		NUMERIC(15) NOT NULL,
	date_event 		VARCHAR(10) NOT NULL,
	name_event 		VARCHAR(50) NOT NULL,
	event_type 		VARCHAR(25) NOT NULL,
	price_event 	NUMERIC(10) NOT NULL,
	
	CONSTRAINT pk_event PRIMARY KEY(id_event)
);


CREATE TABLE produccion.camaraderie
(
	id_camaraderie 						NUMERIC(15) NOT NULL,
	event_club_camaraderie 				VARCHAR(15) NOT NULL,
	event_day_camaraderie 				VARCHAR(10) NOT NULL,
	photos_ot_the_event_camaraderie 	NUMERIC(10) NOT NULL,
	id_event 							NUMERIC(15) NOT NULL,
	
	CONSTRAINT pk_camaraderia PRIMARY KEY(id_camaraderie)
);

CREATE TABLE produccion.attend_member_event(
	id_member  NUMERIC(15) NOT NULL,
	id_event   NUMERIC(15) NOT NULL,

	FOREIGN KEY (id_member) REFERENCES member (id_member),
	FOREIGN KEY (id_event) REFERENCES event (id_event)

);

--FOREIGN KEYS TABLES

--RELATION OF MEMBER WITH CLUB
ALTER TABLE produccion.member
  ADD CONSTRAINT fk_member_club
  FOREIGN KEY (id_club) REFERENCES club (id_club);

--RELATION OF MEMBER WITH PROJECT
ALTER TABLE produccion.member
  ADD CONSTRAINT fk_member_project
  FOREIGN KEY (id_project) REFERENCES project (id_project);

--RELATION OF MEMBER WITH BOARD OF DIRECTIONS  
ALTER TABLE produccion.member
  ADD CONSTRAINT fk_member_board_of_directors
  FOREIGN KEY (id_board_of_directors) REFERENCES board_of_directors (id_board_of_directors);

--RELATION OF MEMBERSHIP PAYMENT WITH MEMBER 
ALTER TABLE produccion.membership_payment
  ADD CONSTRAINT fk_membership_payment_member
  FOREIGN KEY (id_member) REFERENCES member (id_member);
  
--RELATION DE CATERORY PROJECT WITH PROJECT
ALTER TABLE produccion.category_project
  ADD CONSTRAINT fk_category_project_project
  FOREIGN KEY (id_project) REFERENCES project (id_project);

--RELATION OF TYPE PROJECT WITH PROJECT  
ALTER TABLE produccion.type_project
  ADD CONSTRAINT fk_type_project_project
  FOREIGN KEY (id_project) REFERENCES project(id_project);
  
--RELATION OF SPONSOR WITH PROJECT  
ALTER TABLE produccion.sponsor
  ADD CONSTRAINT fk_sponsor_project
  FOREIGN KEY (id_project) REFERENCES project(id_project);

--RELATION OF OTHER DONATIONS WITH SPONSOR   
ALTER TABLE produccion.other_donations
  ADD CONSTRAINT fk_other_donations_sponsor
  FOREIGN KEY (id_sponsor) REFERENCES sponsor(id_sponsor);

--RELATION OF ECONOMIC ENTRY WITH SPONSOR 
ALTER TABLE produccion.economic_entry
  ADD CONSTRAINT fk_economic_entry_sponsor
  FOREIGN KEY (id_sponsor) REFERENCES sponsor(id_sponsor);

--RELATION OF BENEFICIARY WITH PROJECT  
ALTER TABLE produccion.beneficiary
  ADD CONSTRAINT fk_beneficiary_project
  FOREIGN KEY (id_project) REFERENCES project(id_project);

--RELATION OF CLUB MEETING WITH MEMBER  
ALTER TABLE produccion.club_meeting
  ADD CONSTRAINT fk_club_meeting_member  
  FOREIGN KEY (id_member) REFERENCES member(id_member);

--RELATION OF NATIONAL OR INTERNATIONAL MEETING WITH BOAR OF DIRECTORS  
ALTER TABLE produccion.national_or_international_meeting 
  ADD CONSTRAINT fk_national_or_international_meeting_board_of_directors
  FOREIGN KEY (id_board_of_directors) REFERENCES board_of_directors(id_board_of_directors);

--RELATION OF BILL PAYMENT WITH CLUB  
ALTER TABLE produccion.bill_payment
  ADD CONSTRAINT fk_bill_payment_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF PAYMENT WITH CLUB  
ALTER TABLE produccion.payment
  ADD CONSTRAINT fk_payment_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF PAYMENT TO NATIONAL WITH CLUB  
ALTER TABLE produccion.payment_to_national
  ADD CONSTRAINT fk_payment_to_national_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF VOLUNTEER WITH CLUB   
ALTER TABLE produccion.volunteer
  ADD CONSTRAINT fk_volunteer_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF SOCIAL MEDIA WITH CLUB   
ALTER TABLE produccion.social_media
  ADD CONSTRAINT fk_social_media_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF CAMARADERIE WITH EVENT  
ALTER TABLE produccion.camaraderie
  ADD CONSTRAINT fk_camaraderie_event
  FOREIGN KEY (id_event) REFERENCES event(id_event);


-- DATOS --

--INSERT IN THE TABLE club
INSERT INTO produccion.club Values(3002045068,'San José',50671149075,'ca2030@racsa.co.cr','18/03/1956');
INSERT INTO produccion.club Values(3002078693,'Tres Ríos',50683185215,'info@activo2030tresrios.org','08/09/1979');
INSERT INTO produccion.club Values(3002754421,'Metrópoli',50686487615,'clubactivo2030metropoli@gmail.com','14/10/2017');
INSERT INTO produccion.club Values(3002800540,'Tilaran',50622332030,'clubactivo2030@gmail.com','02/03/1974');
INSERT INTO produccion.club Values(3002674149,'Limón',50683185215,'clubactivo2030limon@gmail.com','23/10/2012');

--INSERT IN THE TABLE board_of_directors
INSERT INTO produccion.board_of_directors VALUES(02,2018,'Rosales Sanchez','Helen Sandi','Hugo Mora','Donald Torres','Rosa Fernandez','Fernando Tencio',
	   								  'David Rodriguez','Moises Gamboa','Magdalena Carmona','Gledys Gutierrez');
INSERT INTO produccion.board_of_directors VALUES(64,2020,'Raymundo Castillo','Claudio Salas','Anabelle Quintanilla','Santiago Romay',
									  'Armando Moreira','Leticia Reyes','Federica Salis','Diniveth Vivas',
									  'Jader Ojeda','Kristell Duarte');
INSERT INTO produccion.board_of_directors VALUES(27,2006,'Roy Oviedo','Ruben Marin','Stephanie Quesada','Maria Alfaro',
									  'Alfonso Acuña','Sabrina Juarez','Rodolfo Jimenez','Jenny Lopez',
									  'Manuelita Gomez','Luis Bolaños');
INSERT INTO produccion.board_of_directors VALUES(04,2021,'Hazel Navarro','Miguel Salazar','Ana Carranza','Antonio Vazquez',
									  'Adriana Rojas','Cesar Solartes','Lucinia Salazar','Guillermo Guillen',
									  'Andrea Hidalgo','Javier Solano');
INSERT INTO produccion.board_of_directors VALUES(12,2019,'Jimena Osorio','Sabina Rodriguez','Ana Aragon',
									  'Maria Gamboa','Bruno Velazquez','Oscar Osorio','Eddie Duarte','Lisseth Vivaz',
									  'Xiomara Rojas','Mirieth Castro');
INSERT INTO produccion.board_of_directors VALUES(07,2019,'Mario Zuñiga','Pamela Centeno','Lia Murillo','Julian Cruz',
									  'Margareth Aguilar','Esteban Cordero','Catalina Lobo','Karina Valverde',
									  'Karina Urbina','Julio Robleto');
INSERT INTO produccion.board_of_directors VALUES(08,2020,'Jones Cruz','Jose Hidalgo','Eva Navarro','Resne Carrera',
									  'Mia Brenes','Rogelio Garcia','Fabio Salas','Fabricio Chacon',
									  'Gabriela Martinez','Fabian Raudez');
INSERT INTO produccion.board_of_directors VALUES(15,1971,'Cesar Solartes','Kristel Soto','Alajandra Barrantes','Liz Vega',
									  'Monserrat del Castillo','Porras','Segura','Carmen Sequeira',
									  'Pablo Obando','Nicolas Mena');
INSERT INTO produccion.board_of_directors VALUES(03,2020,'Gerardo Duran','Gonzalo Carvajal','Justin Solano','Patricia Artavia',
									  'Monica Venegas','Elizabeth Monge','Erick Orozco','Lara Benavidez',
									  'Leo Motoya','Nora Garita');
INSERT INTO produccion.board_of_directors VALUES(37,2016,'Luisa Guevara','Luz Carrillo','Raul Coto','Sarah Morera',
									  'Genesis Santana','Ulises Loria','Emma Cubillo','Mariana Leiva',
									  'Jorge Cubero','Isabel Ulloa');
INSERT INTO produccion.board_of_directors VALUES(24,2001,'Kaina Trejos','Manuel Masis','Lizbeth Saenz','Josue Saborio',
									  'Daniel Blanco','Alejandra Lizano','Antonio Moreno','Lucia Acosta',
									  'Wendy Aguirre','Fabiola Rios');
INSERT INTO produccion.board_of_directors VALUES(16,2011,'Miguel Medina','Geancarlo Zeledon','Rafael Conejo','Gledis Cardenas',
									  'Elisalieth Parra','Arturo Montes','Anleth Estrada','Patricia Barientos',
									  'Carlos Solera','Carmen Viales');
INSERT INTO produccion.board_of_directors VALUES(09,2007,'Ester Montiel','Gabriel Cabezas','Hugo Cardenas','Yindra Huertas',
									  'Sugelen Pineda','Gregorio Peralta','Laura Jarquin','Francela Luna',
									  'Calixto Figueros','Dayana Chaverri');
INSERT INTO produccion.board_of_directors VALUES(11,2013,'Rut Santamaria','Otiel Ocampo','Fabian Guadamuz','Meylin Montenegro',
									  'Cleotilde Mayorga','Nelson Barahona','Jose Jimenez','Leandro Astrada',
									  'Angelica Baltodano','Yoselin Medina');
INSERT INTO produccion.board_of_directors VALUES(13,2015,'Nohemi Blanco','Aaron Jimenez','John Guillen','Andrey Sandi',
									  'Keylin Contreras','Idania Aguero','Saul Villalobos','Ericka Pereira',
									  'Yendry Coto','Samuel Ugalde');

--INSERT IN THE TABLE project
INSERT INTO produccion.project VALUES(63,'Rueditas de amor','entregado sillas de ruedas y coches para niños y niñas que presentan necesidades especiales',
	   					   6,'12/06/2004',10,0,12725000);
INSERT INTO produccion.project VALUES(07,'Lecheton','Gran colecta nacional de leche, con la finalidad de donarlo
						   a hogares, asilos de ancianos,albergues y comedores infatiles de 
						   escasos recursos',20,'19/01/2010',3250,2075,625000);
INSERT INTO produccion.project VALUES(02,'Magico Sueño de Amor','Pretende cumplir sueños a niños que se encuentran con
						   enfermedades en Fase Terminal',10,'20/03/2007',25,0,365000);
INSERT INTO produccion.project VALUES(06,'Celebración día del niño','Se les hace a los niños una celebración para
						   felicitarlos',15,'09/09/2000',1627,0,5450000);
INSERT INTO produccion.project VALUES(18,'Entrega de Computadoras en Casa de Pan','Se dan computadoras portatiles y accesorios a niños',
						   4,'02/02/2018',10,0,1075285);
INSERT INTO produccion.project VALUES(36,'Equinoterapia','Se realiza una donación en conjunto con Plantas Eólicas SRL para 
						   el transporte de los niños con Autismo que reciben equinoterapia',5,'21/04/2008',21,0,
						   11500000);
INSERT INTO produccion.project VALUES(40,'Inicio de clases','Entrega de útiles escolares al inicio de la temporada 
						   escolar',4,'25/01/1989',125,0,8957000);
INSERT INTO produccion.project VALUES(264,'Enjoy','Para celebra el día de niño de una manera diferente llevando alegría en una dulce cajita, 
						   nuestra cajita Enjoy, en tiempos de COVID',5,'09/09/2019',2375,0,12584000);			
INSERT INTO produccion.project VALUES(09,'Peaje Voluntario','Recaudación de fondos para las actividades que se realizan 
						   durante el año, como las donaciones a centros y comedores infantiles',8,'07/05/2002',
						   456000,221000,3500000);
INSERT INTO produccion.project VALUES(52,'Cena Navideña','Preparar una cena navideña para niños de bajos recursos',
						   12,'25/12/2006',70,0,175000);	
INSERT INTO produccion.project VALUES(08,'Ven al cine conmigo','Visita a Cinemas con Niños de áreas rurales',
						   10,'14/11/2009',30,0,256000);
INSERT INTO produccion.project VALUES(72,'Construcción del Centro de Educación Comunitario','Construcción de un centro donde podamos apoyar a la niñez 
						  y a la juventud para contribuir a su desarrollo en la comunidad',7,'02/03/2015',52,13,54896400);
INSERT INTO produccion.project VALUES(14,'Eco Cabalgata','Se realizan actividades para recaudación de fondos para los grupos de adultos mayores',
							15,'17/09/2018',0,325,3075000);
INSERT INTO produccion.project VALUES(13,'Stand Up Comedy Show','Recaudacion de fondos para proyectos',4,'08/11/2015',552,253,2300400);
INSERT INTO produccion.project VALUES(45,'Sesiones de Zumba en Verano','Promover el ejercicio físico y a la vez recaudar fondos para proyectos',
						   3,'20/09/2019',125,356,1964142);

--INSERT IN THE TABLE member
INSERT INTO produccion.member VALUES(109511760,'Rosales','Sanchez Bonilla',50673456891,27,'Activo','rosalessb95@gmail.com',3002754421,07,02);
INSERT INTO produccion.member VALUES(206110897,'Claudio','Salas Contreras',50684629150,42,'Activo','clausalas879@gmail.com',3002045068,02,64);
INSERT INTO produccion.member VALUES(203360145,'Santiago','Romay Barbosa',50678496351,51,'Activo','romaybarsan@gmail.com',3002045068,02,64);
INSERT INTO produccion.member VALUES(00010076966,'Jenny','Lopez Morales',18095356500,35,'Activo','lopezmorales@gmail.com',3002078693,06,27);
INSERT INTO produccion.member VALUES(406998547,'Rodolfo','Jimenez Castillo',50682157046,31,'Activo','olfocast@gmail.com',3002078693,06,27);
INSERT INTO produccion.member VALUES(108967435,'Guillermo','Guillen Gomez',50665847637,48,'Activo','guigomez@gmail.com',3002754421,18,04);
INSERT INTO produccion.member VALUES(214690877,'Andrea','Hidalgo Guzman',50670315162,25,'Activo','guzhidal@gmail.com',3002754421,18,04);
INSERT INTO produccion.member VALUES(6084107319,'Jimena','Osorio Tenorio',50660054781,55,'Inactivo','menatenorio@hotmail.com',3002800540,36,12);
INSERT INTO produccion.member VALUES(365148956,'Sabina','Rodriguez Hernandez',50687569412,46,'Activo','rodrhernansab@gmail.com',3002800540,36,12);
INSERT INTO produccion.member VALUES(102890141,'Ana','Aragon Arauz',50672854123,53,'Inactivo','arauzgonana@ghotmail.com',3002800540,36,12);
INSERT INTO produccion.member VALUES(102364897,'Maria','Gamboa Mata',50689457123,42,'Inactivo','gambriama@gmail.com',3002800540,40,12);
INSERT INTO produccion.member VALUES(703486957,'Julio','Robleto Rodriguez',50684756123,35,'Activo','juliorodirguez@gmail.com',3002674149,264,07);
INSERT INTO produccion.member VALUES(636210569,'Jones','Cruz Diaz',50689513269,39,'Inactivo','jonescruz@gmail.com',3002674149,264,08);
INSERT INTO produccion.member VALUES(405741071,'Cesar','Solartes Salazar',50678924651,34,'Activo','sarlater@gmail.com',3002045068,09,15);
INSERT INTO produccion.member VALUES(512780517,'Justin','Solano Villalta',50661258476,49,'Activo','villaltin@gmail.com',3002754421,52,03);
INSERT INTO produccion.member VALUES(105976012,'Elizabeth','Monge Villagra',50685456210,26,'Activo','mongeliza@gmail.com',3002754421,63,03);
INSERT INTO produccion.member VALUES(306450211,'Genesis','Santana Arguedas',50682134715,37,'Activo','santanarguedas@hotmail.com',3002078693,08,37);

--INSERT IN THE TABLE beneficiary
INSERT INTO produccion.beneficiary VALUES(10227487,'Lucia', 'Montero', 86652998,'25m norte del BCR, Abangares, Guanacaste, Costa Rica', 'lucimontero@gmail.com' ,63);
INSERT INTO produccion.beneficiary VALUES(30105673,'Martin', 'Figueres', 50684685490,'100m oeste de la Iglesia, Belen, Heredia', 'martinarafi@gmail.com', 07);
INSERT INTO produccion.beneficiary VALUES(508970345,'Mariana', 'Perez', 50687654321,'150m norte de la Iglesia, Belen, Heredia, Costa Rica', 'marianaperez@gmail.com', 02);
INSERT INTO produccion.beneficiary VALUES(598712897,'Enrique', 'Cruz', 50689765645,'250m norte de Mundo Plastico, La Fortuna, San Carlos, Costa Rica', 'enricruz@gmail.com', 06);
INSERT INTO produccion.beneficiary VALUES(607890543,'Juana', 'Solano', 50689123456,'100m sur del BCR, La Fortuna, San Carlos, Costa Rica', 'juanasolano@gmail.com', 18);
INSERT INTO produccion.beneficiary VALUES(11643089,'Juan', 'Murillo', 50687897678,'50m de la iglesia, Los Angeles, San Carlos, Costa Rica', 'juanmurillo@gmail.com', 36);
INSERT INTO produccion.beneficiary VALUES(200889023,'Maria', 'Bonilla', 50684505050,'500 oeste del colegio, Coto Brus, Puntarenas, Costa Rica', 'mariabonilla@gmail.com', 08);
INSERT INTO produccion.beneficiary VALUES(345671529,'Luz', 'Carrillo', 50689864567,'10m del lavado de carros Garabito, Puntarenas, Costa Rica', 'luzcarrillo@gmail.com', 40);
INSERT INTO produccion.beneficiary VALUES(106218923,'Jesus', 'Loarte', 50688909089,'100m de la playa Rajada, La Cruz, Guanacaste, Costa Rica', 'jesusloarte@gmail.com', 264);
INSERT INTO produccion.beneficiary VALUES(27816245,'Julio', 'Cesar', 50687908932,'Frente a la escuelita, Los Chiles, Alajuela, Costa Rica', 'juliocesar@gmail.com', 09);
INSERT INTO produccion.beneficiary VALUES(761235789,'Julia', 'Vargas', 50689886543,'90m del cruce, Palmares, Alajuela, Costa Rica', 'juliavargas@gmail.com', 52);
INSERT INTO produccion.beneficiary VALUES(461276512,'Laura', 'Coto', 50676564636,'Frente a la clinica, Puriscal, San Jose, Costa Rica', 'lauracoto@gmail.com', 36);
INSERT INTO produccion.beneficiary VALUES(751277873,'Marco', 'Vargas', 50664567890,'Frente a la Iglesia Catolica, Puerto Jimenez, Puntarenas, Costa Rica', 'marcovargas@gmail.com', 08);
INSERT INTO produccion.beneficiary VALUES(267823190,'Cristina', 'Murillo', 50676898975,'A un costado de la Iglesia, Zarcero, Alajuela, Costa Rica', 'crismurillo@gmail.com', 40);
INSERT INTO produccion.beneficiary VALUES(190127873,'Pedro', 'Gonzalez', 50687896078,'Frente a la carniceria Maroto, Ciudad Quesada, Alajuela, Costa Rica', 'pedrogonzalez@gmail.com', 264);

--INSERT IN THE TABLE sponsor
INSERT INTO produccion.sponsor VALUES(206410512,'Melany Molina','molina@gmail.com','Activo',50689745123,63);
INSERT INTO produccion.sponsor VALUES(102380512,'Humberto Diaz','humberto@gmail.com','Activo',50676598472,07);
INSERT INTO produccion.sponsor VALUES(308110741,'Yamileth Gonzalez','gonzalez@gmail.com','Inactivo',50664512653,02);
INSERT INTO produccion.sponsor VALUES(708940561,'Fausto Gusman','gusman@gmail.com','Activo',50665894173,06);
INSERT INTO produccion.sponsor VALUES(263540178,'Guillermina Ruiz','guilleruiz@gmail.com','Activo',50665487906,18);
INSERT INTO produccion.sponsor VALUES(256740123,'Yirlany Sandoval','yirsan@gmail.com','Activo',50676894501,36);
INSERT INTO produccion.sponsor VALUES(102781748,'Alonso Ballestero','balles@gmail.com','Activo',50664859742,08);
INSERT INTO produccion.sponsor VALUES(210580356,'Santiago Porras','santi@gmail.com','Activo',50662514963,40);
INSERT INTO produccion.sponsor VALUES(601230547,'Allan Cruz','cruzallan@gmail.com','Activo',50684052176,264);
INSERT INTO produccion.sponsor VALUES(498710213,'Girasol Jara','soljara@gmail.com','Activo',50685269241,09);
INSERT INTO produccion.sponsor VALUES(395467896,'Fabricio Ponce','fabponce@gmail.com','Inactivo',50689714356,52);
INSERT INTO produccion.sponsor VALUES(205010426,'Filomena Hernandez','mena@gmail.com','Activo',50683571437,09);
INSERT INTO produccion.sponsor VALUES(107890531,'Joel Flores','joelf@gmail.com','Activo',50685963147,52);
INSERT INTO produccion.sponsor VALUES(564120371,'Celeste Rojas','celrojas@gmail.com','Inactivo',50682976124,08);
INSERT INTO produccion.sponsor VALUES(601910891,'Sandra Herrera','hersandra@gmail.com','Activo',50686374936,40);

--INSERT IN THE TABLE other_donations
INSERT INTO produccion.other_donations VALUES(1, '24/05/2009', 'Donacion de sillas en colegios de zonas rurales', 5000000, 206410512);
INSERT INTO produccion.other_donations VALUES(2, '18/01/2010', 'Donacion de libros a escuelas de bajos recursos', 10000000, 102380512);
INSERT INTO produccion.other_donations VALUES(3, '01/01/2015', 'Donacion de juguetes en Hogar Infantil Brotes de Olivo', 1500000, 308110741);
INSERT INTO produccion.other_donations VALUES(4, '09/12/2014', 'Donacion de estantes para orfanatos', 10000000, 708940561);
INSERT INTO produccion.other_donations VALUES(5, '14/09/2017', 'Donacion de sillas de ruedas en clinicas de zonas rurales', 150000000, 263540178);
INSERT INTO produccion.other_donations VALUES(6, '06/08/2015', 'Donacion de mesas en colegios rurales', 15000000, 256740123);
INSERT INTO produccion.other_donations VALUES(7, '23/04/2005', 'Donacion de sillas de ruedas en centros de rehabilitacion', 100000000,102781748);
INSERT INTO produccion.other_donations VALUES(8, '17/01/2018', 'Donacion de elementos para estimulacion en centros de rehabilitacion', 10000000,210580356);
INSERT INTO produccion.other_donations VALUES(9, '20/15/2013', 'Donacion de ropa en Fundacion Construyendo Sonrisas', 10000000, 601230547);
INSERT INTO produccion.other_donations VALUES(10,'12/12/2012', 'Donacion de juguetes en zonas indigenas', 10000000, 498710213);
INSERT INTO produccion.other_donations VALUES(15,'27/08/2019', 'Donacion de utiles escolares en zonas indigenas', 20000000, 395467896);
INSERT INTO produccion.other_donations VALUES(11,'18/07/2018', 'Donacion de computadoras en centros educativos de zonas rurales', 25000000, 205010426);
INSERT INTO produccion.other_donations VALUES(12,'03/03/2006', 'Donacion de pantallas en escuelas de bajos recursos', 10000000, 107890531);
INSERT INTO produccion.other_donations VALUES(13,'25/05/2019', 'Donacion de electrodomesticos en hogares de ancianos', 30000000, 564120371);
INSERT INTO produccion.other_donations VALUES(14,'30/11/2019', 'Donacion de camas y colchones en hospitales', 100000000, 601910891);

--INSERT IN THE TABLE economic_entry
INSERT INTO produccion.economic_entry VALUES(03,'Aporte para proyecto','02/08/2015',1458623,206410512);
INSERT INTO produccion.economic_entry VALUES(17,'Ayuda economica para el proyecto de construcción','01/05/2021',5236500,102380512);
INSERT INTO produccion.economic_entry VALUES(36,'Aporte economico para celebración de niños','08/09/2010',25000,308110741);
INSERT INTO produccion.economic_entry VALUES(49,'Aporte economico para proyecto equinoterapia','02/08/2015',1458623,708940561);
INSERT INTO produccion.economic_entry VALUES(53,'Aporte para proyecto equinoterapia','06/11/2014',1452000,263540178);
INSERT INTO produccion.economic_entry VALUES(95,'Aporte para proyecto','04/08/2011',1458623,256740123);
INSERT INTO produccion.economic_entry VALUES(1014,'Aporte economico para proyecto ven al cine conmigo','10/11/2009',1458623,102781748);
INSERT INTO produccion.economic_entry VALUES(289,'Aporte para Lecheton','03/03/2000',775000,210580356);
INSERT INTO produccion.economic_entry VALUES(78,'Aporte para proyecto enjoy','12/07/2005',1458623,601230547);
INSERT INTO produccion.economic_entry VALUES(24,'Aporte economico para proyecto rueditas de amor','12/06/2004',2000000,498710213);
INSERT INTO produccion.economic_entry VALUES(59,'Aporte economico para proyecto magico sueño de amor','20/03/2007',375000,395467896);
INSERT INTO produccion.economic_entry VALUES(41,'Aporte economico para bebidas para voluntarios del proyecto peaje voluntario','07/05/2002',75000,205010426);
INSERT INTO produccion.economic_entry VALUES(54,'Aporte para proyecto ven al cine conmigo','07/11/2009',150000,107890531);
INSERT INTO produccion.economic_entry VALUES(23,'Aporte economico para proyecto magico sueño de amor','02/03/2007',2500000,564120371);
INSERT INTO produccion.economic_entry VALUES(74,'Aporte economico para celebración de niños','02/09/2000',175000,601910891);

--INSERT IN THE TABLE bill_payment
INSERT INTO produccion.bill_payment VALUES(015684, '24/05/2019', 1000000, 'Agua', 'Pago del agua por mes', 3, 3002045068);
INSERT INTO produccion.bill_payment VALUES(015736, '12/11/2018', 700000, 'Luz', 'Pago de luz de un mes', 2, 3002078693);
INSERT INTO produccion.bill_payment VALUES(025894, '02/08/2020', 200000,'Agua', 'Pago de agua de tres meses', 5, 3002754421);
INSERT INTO produccion.bill_payment VALUES(028961, '23/07/2018', 120000, 'Internet', 'Pago de internet de un mes', 0, 3002800540);
INSERT INTO produccion.bill_payment VALUES(035687, '23/11/2017', 100000, 'Basura', 'Pago de basura de un mes', 0, 3002674149);
INSERT INTO produccion.bill_payment VALUES(031684, '14/03/2019', 110000, 'Luz', 'Pago de luz de 15 dias', 5, 3002045068);
INSERT INTO produccion.bill_payment VALUES(041520, '27/07/2021', 70000, 'Agua', 'Pago de agua de un mes', 0, 3002078693);
INSERT INTO produccion.bill_payment VALUES(046986, '15/02/2020', 120000, 'Basura', 'Pago de basuta de un mes', 0, 3002754421);
INSERT INTO produccion.bill_payment VALUES(057982, '04/09/2020', 500000, 'Luz', 'Pago de luz de un mes', 2, 3002800540);
INSERT INTO produccion.bill_payment VALUES(051998, '19/10/2017', 900000, 'Agua', 'Pago de agua de un mes', 3, 3002674149);
INSERT INTO produccion.bill_payment VALUES(069191, '05/09/2020', 350000, 'Internet', 'Pago de internet de un mes', 5, 3002045068);
INSERT INTO produccion.bill_payment VALUES(061565, '23/07/2022', 1000000, 'Telefono', 'Pago de telefono de dos meses', 10, 3002078693);
INSERT INTO produccion.bill_payment VALUES(071568, '02/07/2016', 100000, 'Internet', 'Pago de internet de un mes', 4, 3002754421);
INSERT INTO produccion.bill_payment VALUES(079891, '23/07/2015', 250000, 'Telefono', 'Pago de telefono de un mes', 2, 3002800540);
INSERT INTO produccion.bill_payment VALUES(082546, '23/01/2020', 120000, 'Internet', 'Pago de internet de un mes', 0, 3002674149);

--INSERT IN THE TABLE national_or_international_meeting
INSERT INTO produccion.national_or_international_meeting VALUES(01, '70', 'Presencial', '9:00 am', '24/05/2018', 02);
INSERT INTO produccion.national_or_international_meeting VALUES(08, '100', 'Virtual', '2:00 pm', '25/05/2020', 64);
INSERT INTO produccion.national_or_international_meeting VALUES(33, '95', 'Presencial', '3:00 pm', '05/06/2006', 27);
INSERT INTO produccion.national_or_international_meeting VALUES(24, '30', 'Virtual', '8:00 am', '13/06/2021', 04);
INSERT INTO produccion.national_or_international_meeting VALUES(44, '45', 'Virtual', '10:00 am', '20/11/2019', 12);
INSERT INTO produccion.national_or_international_meeting VALUES(06, '150', 'Presencial', '1:00 pm', '10/01/2019', 07);
INSERT INTO produccion.national_or_international_meeting VALUES(88, '20', 'Virtual', '8:00 am', '15/02/2020', 08);
INSERT INTO produccion.national_or_international_meeting VALUES(09, '90', 'Presencial', '6:00 pm', '25/05/2018', 02);
INSERT INTO produccion.national_or_international_meeting VALUES(25, '25', 'Presencial', '9:00 am', '15/11/1971', 15);
INSERT INTO produccion.national_or_international_meeting VALUES(65, '124', 'Virtual', '3:00 pm', '30/05/2020', 03);
INSERT INTO produccion.national_or_international_meeting VALUES(13, '85', 'Presencial', '3:00 pm', '23/06/2016', 37);
INSERT INTO produccion.national_or_international_meeting VALUES(05, '35', 'Presencial', '5:00 pm', '09/12/2001', 24);
INSERT INTO produccion.national_or_international_meeting VALUES(95, '75', 'Presencial', '1:00 pm', '11/11/2011', 16);
INSERT INTO produccion.national_or_international_meeting VALUES(49, '60', 'Presencial', '8:30 am', '10/09/2007', 09);
INSERT INTO produccion.national_or_international_meeting VALUES(71, '50', 'Virtual', '12:30 pm', '30/10/2013', 11);

--INSERT IN THE TABLE volunteer
INSERT INTO produccion.volunteer VALUES(306140265,'Alex','Monge',50687836253,'monalex@gmail.com',3002045068);
INSERT INTO produccion.volunteer VALUES(205890671,'Monica','Marenco',50662935486,'marencomonx@gmail.com',3002078693);
INSERT INTO produccion.volunteer VALUES(705810562,'Guillermo','Arias',50682547156,'qriasgui@gmail.com',3002754421);
INSERT INTO produccion.volunteer VALUES(205890672,'Marily','Monrrey',50662935486,'marencomonx@gmail.com',3002800540);
INSERT INTO produccion.volunteer VALUES(305940147,'Jenifer','Arauz',50683513962,'arauzjeni@gmail.com',3002674149);
INSERT INTO produccion.volunteer VALUES(201147863,'Jimena','Gomez',50675869104,'menago@gmail.com',3002674149);
INSERT INTO produccion.volunteer VALUES(405817241,'Belen','Gutierrez',50686915243,'gubelen@gmail.com',3002078693);
INSERT INTO produccion.volunteer VALUES(502110563,'Adonis','Flores',50686914520,'adonif@gmail.com',3002674149);
INSERT INTO produccion.volunteer VALUES(602347893,'Rosa','Blanco',50676928354,'roblanc@gmail.com',3002754421);
INSERT INTO produccion.volunteer VALUES(708640142,'Ester','Figueres',50667562849,'figuester@gmail.com',3002674149);
INSERT INTO produccion.volunteer VALUES(789647231,'Pablo','Valverde',50666958814,'valverdep@gmail.com',3002045068);
INSERT INTO produccion.volunteer VALUES(501236541,'Esmeralda','Sandoval',50672560389,'sandesme@gmail.com',3002800540);
INSERT INTO produccion.volunteer VALUES(2145709687,'Cesar','Hugalde',50672536891,'cesarh@gmail.com',3002078693);
INSERT INTO produccion.volunteer VALUES(4652189524,'Abraham','Solis',50686847112,'solisabram@gmail.com',3002045068);
INSERT INTO produccion.volunteer VALUES(608610798,'Mara','Jordan',50669547218,'jordanmara@gmail.com',3002674149);

--INSERT IN THE TABLE club_meeting
INSERT INTO produccion.club_meeting VALUES(25,'18/09/2022','5:00pm','Presencial','Socios','6',109511760);
INSERT INTO produccion.club_meeting VALUES(52,'19/01/2021','4:00pm','Presencial','Socios','7',206110897);
INSERT INTO produccion.club_meeting VALUES(02,'07/09/2004','5:00pm','Virtual','Junta Directiva','10',203360145);
INSERT INTO produccion.club_meeting VALUES(13,'06/07/2008','6:00pm','Presencial','Socios','12',00010076966);
INSERT INTO produccion.club_meeting VALUES(37,'11/06/2007','10:00am','Virtual','Socios','17',406998547);
INSERT INTO produccion.club_meeting VALUES(61,'17/08/2003','1:00pm','Virtual','Junta Directiva','10',108967435);
INSERT INTO produccion.club_meeting VALUES(81,'07/05/2009','5:00pm','Virtual','Socios','14',214690877);
INSERT INTO produccion.club_meeting VALUES(74,'06/04/2000','3:00pm','Presencial','Junta Directiva','6',6084107319);
INSERT INTO produccion.club_meeting VALUES(11,'07/03/2001','9:00am','Presencial','Socios','10',365148956);
INSERT INTO produccion.club_meeting VALUES(09,'03/02/2002','5:00pm','Virtual','Socios','20',102890141);
INSERT INTO produccion.club_meeting VALUES(07,'06/07/1999','6:00pm','Presencial','Junta Directiva','5',102364897);
INSERT INTO produccion.club_meeting VALUES(18,'08/04/2021','7:00pm','Presencial','Socios','7',703486957);
INSERT INTO produccion.club_meeting VALUES(06,'21/01/2020','11:00am','Virtual','Socios','12',636210569);
INSERT INTO produccion.club_meeting VALUES(03,'27/06/2018','2:00pm','Presencial','Junta Directiva','11',405741071);
INSERT INTO produccion.club_meeting VALUES(12,'30/09/2017','9:30am','Virtual','Socios','17',512780517);
INSERT INTO produccion.club_meeting VALUES(05,'29/03/2022','3:30pm','Presencial','Socios','25',105976012);
INSERT INTO produccion.club_meeting VALUES(10,'24/10/2022','6:30pm','Virtual','Socios','15',105976012);

--INSERT IN THE TABLE payment
INSERT INTO produccion.payment VALUES(01,'05/06/2019','AYA',45200,'Se cancelo el monto del agua',3002674149);				   
INSERT INTO produccion.payment VALUES(02,'16/04/2012','ICE',15600,'Se cancelo el monto del internet',3002045068);
INSERT INTO produccion.payment VALUES(03,'13/07/2006','AYA',35100,'Se cancelo el monto del agua',3002078693);
INSERT INTO produccion.payment VALUES(04,'21/08/2011','Librería',10500,'Se compro papeleria y utiles',3002754421);
INSERT INTO produccion.payment VALUES(05,'27/05/2015','ICE',17800,'Se cancelo el monto de la luz',3002800540);
INSERT INTO produccion.payment VALUES(06,'30/08/2009','Alquiler',75000,'Se cancelo el monto del alquiler',3002674149);
INSERT INTO produccion.payment VALUES(07,'20/11/2014','AYA',22500,'Se cancelo el monto del agua',3002754421);
INSERT INTO produccion.payment VALUES(08,'15/03/2010','AYA',15800,'Se cancelo el monto del agua',3002045068);
INSERT INTO produccion.payment VALUES(09,'21/08/2011','Librería',10500,'Se compro papeleria y utiles',3002800540);
INSERT INTO produccion.payment VALUES(10,'18/07/2018','ICE',13500,'Se cancelo el monto del internet',3002754421);
INSERT INTO produccion.payment VALUES(11,'01/03/2016','Alquiler',115000,'Se cancelo el monto del alquiler',3002674149);
INSERT INTO produccion.payment VALUES(12,'10/08/2004','AYA',12050,'Se cancelo el monto del agua',3002800540);
INSERT INTO produccion.payment VALUES(13,'23/05/2010','Librería',5680,'Se compro papeleria y utiles',3002078693);
INSERT INTO produccion.payment VALUES(14,'17/02/2000','ICE',5000,'Se cancelo el monto del internet',3002078693);
INSERT INTO produccion.payment VALUES(15,'26/05/2017','ICE',11000,'Se cancelo el monto del internet',3002754421);


--INSERT IN THE TABLE payment_to_national
INSERT INTO produccion.payment_to_national VALUES(01,'27/09/2022',17500,'Pendiente',3002674149);					   
INSERT INTO produccion.payment_to_national VALUES(02,'17/02/2001',16700,'Cancelado',3002045068);
INSERT INTO produccion.payment_to_national VALUES(03,'14/10/2017',25400,'Cancelado',3002078693);
INSERT INTO produccion.payment_to_national VALUES(04,'29/06/2015',23100,'Cancelado',3002754421);
INSERT INTO produccion.payment_to_national VALUES(05,'10/01/2018',14800,'Cancelado',3002800540);
INSERT INTO produccion.payment_to_national VALUES(06,'23/10/2022',11700,'Pendiente',3002045068);
INSERT INTO produccion.payment_to_national VALUES(07,'30/06/2019',25400,'Cancelado',3002674149);
INSERT INTO produccion.payment_to_national VALUES(08,'26/04/2014',32500,'Cancelado',3002800540);
INSERT INTO produccion.payment_to_national VALUES(09,'13/09/2013',7250,'Cancelado',3002078693);
INSERT INTO produccion.payment_to_national VALUES(10,'07/07/2015',17600,'Cancelado',3002674149);
INSERT INTO produccion.payment_to_national VALUES(11,'20/11/2022',21800,'Pendiente',3002754421);
INSERT INTO produccion.payment_to_national VALUES(12,'28/02/2021',9500,'Cancelado',3002674149);
INSERT INTO produccion.payment_to_national VALUES(13,'14/12/2022',13450,'Pendiente',3002800540);
INSERT INTO produccion.payment_to_national VALUES(14,'30/09/2018',14800,'Cancelado',3002754421);
INSERT INTO produccion.payment_to_national VALUES(15,'31/11/2016',22640,'Cancelado',3002674149);

--INSERT IN THE TABLE membership_payment
INSERT INTO produccion.membership_payment VALUES(01,'Cancelado', 5250, '03/06/2012',109511760);
INSERT INTO produccion.membership_payment VALUES(02,'Cancelado',6750,'13/07/2007',206110897);
INSERT INTO produccion.membership_payment VALUES(06,'Pendiente',10000,'19/04/2010',203360145);
INSERT INTO produccion.membership_payment VALUES(72,'Cancelado',6550,'07/12/2014',00010076966);
INSERT INTO produccion.membership_payment VALUES(41,'Cancelado',7250,'21/08/2016',406998547);
INSERT INTO produccion.membership_payment VALUES(58,'Pendiente',12250,'23/09/1999',108967435);
INSERT INTO produccion.membership_payment VALUES(63,'Cancelado',6325,'14/02/2015',214690877);
INSERT INTO produccion.membership_payment VALUES(51,'Cancelado',5000,'01/04/1996',6084107319);
INSERT INTO produccion.membership_payment VALUES(67,'Cancelado',7850,'17/01/2017',365148956);
INSERT INTO produccion.membership_payment VALUES(98,'Pendiente',15000,'06/12/2014',102890141);
INSERT INTO produccion.membership_payment VALUES(65,'Cancelado',3620,'24/11/2001',102364897);
INSERT INTO produccion.membership_payment VALUES(12,'Cancelado',5745,'09/10/1995',703486957);
INSERT INTO produccion.membership_payment VALUES(17,'Pendiente',11500,'07/12/2014',636210569);
INSERT INTO produccion.membership_payment VALUES(19,'Pendiente',8950,'21/08/2016',405741071);
INSERT INTO produccion.membership_payment VALUES(20,'Cancelado',13675,'07/12/2014',512780517);

--INSERT IN THE TABLE event
INSERT INTO produccion.event VALUES(1,'20/08/2020','Seminario','de clubes',5000);
INSERT INTO produccion.event VALUES(2,'20/08/2020','Conferencia','nacional',500000);
INSERT INTO produccion.event VALUES(3,'05/07/2021','Charlas','internacional',1000000);
INSERT INTO produccion.event VALUES(4,'17/07/2022','Convención','de clubes',700000);
INSERT INTO produccion.event VALUES(5,'20/05/2021','Rueda de prensa','nacional',850000);
INSERT INTO produccion.event VALUES(6,'20/03/2020','Junta general','internacional',300000);
INSERT INTO produccion.event VALUES(7,'20/02/2022','Feria','de clubes',1300000);
INSERT INTO produccion.event VALUES(8,'20/11/2021','Conferencia','nacional',170000);
INSERT INTO produccion.event VALUES(9,'20/10/2020','Reunion general','internacional',660000);
INSERT INTO produccion.event VALUES(10,'20/04/2020','Feria','de clubes',480000);
INSERT INTO produccion.event VALUES(11,'20/06/2022','Seminario','nacional',2000500);
INSERT INTO produccion.event VALUES(12,'20/03/2021','Cena de seminario','internacional',1300000);
INSERT INTO produccion.event VALUES(13,'20/05/2020','Reunion y seminario general','de clubes',900000);
INSERT INTO produccion.event VALUES(14,'20/12/2018','Junta directiva general','nacional',560000);				 
INSERT INTO produccion.event VALUES(15,'20/11/2021','Convención entre clubes','internacional',790000);

--INSERT IN THE TABLE social_media
INSERT INTO produccion.social_media VALUES(1, 'Facebook', 300000, 3002674149);
INSERT INTO produccion.social_media VALUES(11, 'Instagram', 3521010, 3002674149);
INSERT INTO produccion.social_media VALUES(111, 'Telegram', 200, 3002674149);
INSERT INTO produccion.social_media VALUES(1111, 'WhatsApp', 30, 3002674149);
INSERT INTO produccion.social_media VALUES(2, 'Facebook', 326, 3002045068);
INSERT INTO produccion.social_media VALUES(22, 'Instagram', 714, 3002045068);
INSERT INTO produccion.social_media VALUES(222, 'Telegram', 95, 3002045068);
INSERT INTO produccion.social_media VALUES(2222, 'WhatsApp', 25 , 3002045068);
INSERT INTO produccion.social_media VALUES(3, 'Instagram', 661, 3002078693);
INSERT INTO produccion.social_media VALUES(33, 'Facebook', 4025, 3002078693);
INSERT INTO produccion.social_media VALUES(333, 'Telegram', 325, 3002078693);
INSERT INTO produccion.social_media VALUES(3333, 'WhatsApp', 61, 3002078693);
INSERT INTO produccion.social_media VALUES(4, 'Facebook', 925, 3002754421);
INSERT INTO produccion.social_media VALUES(444, 'Telegram', 22, 3002754421);
INSERT INTO produccion.social_media VALUES(4444, 'WhatsApp', 32, 3002754421);
INSERT INTO produccion.social_media VALUES(5, 'Instagram', 725, 3002800540);
INSERT INTO produccion.social_media VALUES(55, 'Facebook', 1426, 3002800540);
INSERT INTO produccion.social_media VALUES(555, 'Telegram', 15, 3002800540);
INSERT INTO produccion.social_media VALUES(5555, 'WhatsApp', 23, 3002800540);

--INSERT IN THE TABLE camaraderie
INSERT INTO produccion.camaraderie VALUES(1, 'Metropoli', 'martes', 200, 1 );
INSERT INTO produccion.camaraderie VALUES(2, 'Metropoli', 'Martes', 200, 2 );
INSERT INTO produccion.camaraderie VALUES(3, 'San Jose', 'Domingo', 300, 3 );
INSERT INTO produccion.camaraderie VALUES(4, 'Tres Rios', 'Martes', 400, 4 );
INSERT INTO produccion.camaraderie VALUES(5, 'Limón', 'Jueves', 100, 5 );
INSERT INTO produccion.camaraderie VALUES(6, 'Tilaran', 'Domingo', 240, 6 );
INSERT INTO produccion.camaraderie VALUES(7, 'Limón', 'Martes', 350, 7 );
INSERT INTO produccion.camaraderie VALUES(8, 'Metropoli', 'Sabado', 178, 8 );
INSERT INTO produccion.camaraderie VALUES(9, 'Tres Rios', 'Lunes', 469, 9 );
INSERT INTO produccion.camaraderie VALUES(10, 'San Jose', 'Domingo', 345, 10 );
INSERT INTO produccion.camaraderie VALUES(11, 'Limón', 'Jueves', 289, 11 );
INSERT INTO produccion.camaraderie VALUES(12, 'San Jose', 'Martes', 89, 12 );
INSERT INTO produccion.camaraderie VALUES(13, 'Tilaran', 'Miercoles', 95, 13 );
INSERT INTO produccion.camaraderie VALUES(14, 'San Jose', 'Martes', 230, 14 );
INSERT INTO produccion.camaraderie VALUES(15, 'Metropoli', 'Sabado', 120, 15 );

--INSERT IN THE TABLE type_project  (ARREGLAR)
INSERT INTO produccion.type_project VALUES(01,FALSE,FALSE,FALSE,TRUE,FALSE,63);
INSERT INTO produccion.type_project VALUES(02,FALSE,FALSE,FALSE,FALSE,TRUE,07);
INSERT INTO produccion.type_project VALUES(03,FALSE,FALSE,TRUE,FALSE,FALSE,02);
INSERT INTO produccion.type_project VALUES(04,FALSE,FALSE,TRUE,FALSE,FALSE,06);
INSERT INTO produccion.type_project VALUES(05,TRUE,FALSE,FALSE,FALSE,FALSE,18);
INSERT INTO produccion.type_project VALUES(06,FALSE,FALSE,FALSE,TRUE,FALSE,36);
INSERT INTO produccion.type_project VALUES(07,FALSE,FALSE,TRUE,FALSE,FALSE,08);
INSERT INTO produccion.type_project VALUES(08,TRUE,FALSE,FALSE,FALSE,FALSE,40);
INSERT INTO produccion.type_project VALUES(09,FALSE,FALSE,TRUE,FALSE,FALSE,264);
INSERT INTO produccion.type_project VALUES(10,FALSE,FALSE,FALSE,FALSE,TRUE,09);
INSERT INTO produccion.type_project VALUES(11,FALSE,FALSE,FALSE,FALSE,TRUE,52);
INSERT INTO produccion.type_project VALUES(12,TRUE,FALSE,FALSE,FALSE,FALSE,72);
INSERT INTO produccion.type_project VALUES(13,FALSE,FALSE,TRUE,FALSE,FALSE,14);
INSERT INTO produccion.type_project VALUES(14,FALSE,FALSE,FALSE,FALSE,TRUE,13);
INSERT INTO produccion.type_project VALUES(15,FALSE,FALSE,FALSE,FALSE,TRUE,45);

--INSERT IN THE TABLE category_project (ARREGLAR)
INSERT INTO produccion.category_project VALUES(0123,TRUE,FALSE,63);
INSERT INTO produccion.category_project VALUES(0145,FALSE,TRUE,07);
INSERT INTO produccion.category_project VALUES(0163,TRUE,FALSE,02);
INSERT INTO produccion.category_project VALUES(0127,TRUE,FALSE,06);
INSERT INTO produccion.category_project VALUES(0187,TRUE,FALSE,18);
INSERT INTO produccion.category_project VALUES(0199,TRUE,FALSE,36);
INSERT INTO produccion.category_project VALUES(0153,TRUE,FALSE,08);
INSERT INTO produccion.category_project VALUES(0165,TRUE,FALSE,40);
INSERT INTO produccion.category_project VALUES(0167,TRUE,FALSE,264);
INSERT INTO produccion.category_project VALUES(0135,FALSE,TRUE,09);
INSERT INTO produccion.category_project VALUES(0198,TRUE,FALSE,52);
INSERT INTO produccion.category_project VALUES(0178,TRUE,FALSE,72);
INSERT INTO produccion.category_project VALUES(0134,FALSE,TRUE,14);
INSERT INTO produccion.category_project VALUES(0180,FALSE,TRUE,13);
INSERT INTO produccion.category_project VALUES(0156,FALSE,TRUE,45);

--INSERT IN THE TABLE INTERMEDIATE attend_member_event
INSERT INTO produccion.attend_member_event VALUES(206110897, 1);
INSERT INTO produccion.attend_member_event VALUES(203360145, 2);
INSERT INTO produccion.attend_member_event VALUES(00010076966, 3);
INSERT INTO produccion.attend_member_event VALUES(406998547, 4);
INSERT INTO produccion.attend_member_event VALUES(108967435, 5);
INSERT INTO produccion.attend_member_event VALUES(214690877, 6);
INSERT INTO produccion.attend_member_event VALUES(6084107319, 7);
INSERT INTO produccion.attend_member_event VALUES(365148956, 8);
INSERT INTO produccion.attend_member_event VALUES(102890141, 9);
INSERT INTO produccion.attend_member_event VALUES(102364897, 10);
INSERT INTO produccion.attend_member_event VALUES(703486957, 11);
INSERT INTO produccion.attend_member_event VALUES(636210569, 12);
INSERT INTO produccion.attend_member_event VALUES(405741071, 13);
INSERT INTO produccion.attend_member_event VALUES(512780517, 14);
INSERT INTO produccion.attend_member_event VALUES(105976012, 15);
