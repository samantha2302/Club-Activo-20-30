--CREATION THE 20 TABLES AND ONE INTERMEDIATE, EACH TABLE HAS THE SPECIFIED NAME.
CREATE TABLE club
(
	id_club 			NUMERIC(15) NOT NULL,
	name_club 			VARCHAR(50) NOT NULL,
	phone_number_club 	NUMERIC(15) NOT NULL,
	mail_club 			VARCHAR(100) NOT NULL, 
	anniversary_club 	VARCHAR(10) NOT NULL,
	
	CONSTRAINT pk_club PRIMARY KEY(id_club)
);

CREATE TABLE member
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


CREATE TABLE membership_payment
(
    membership_payment_record     NUMERIC(10)  NOT NULL,
    status_membership_payment  	  VARCHAR(30)  NOT NULL,
	amount_membership_payment	  NUMERIC(10)  NOT NULL,
	date_membership_payment		  VARCHAR(10)  NOT NULL,
	id_member      				  NUMERIC(15)   NOT NULL,
	
    CONSTRAINT pk_membership_payment PRIMARY KEY (membership_payment_record)
);


CREATE TABLE project
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


CREATE TABLE type_project 
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


CREATE TABLE category_project
(
	id_category_project           NUMERIC(10)  NOT NULL,
	social_service                BOOLEAN 	   NOT NULL,
	collection_category_project   BOOLEAN 	   NOT NULL,
	id_project 					  NUMERIC(15)  NOT NULL,
	
	CONSTRAINT pk_category_project PRIMARY KEY(id_category_project)
);


CREATE TABLE sponsor
(
	id_sponsor                   NUMERIC(20)  NOT NULL,
	name_sponsor                 VARCHAR(100) NOT NULL,
	mail_sponsor                 VARCHAR(25)  NOT NULL,
	status_sponsor               VARCHAR(10)  NOT NULL,
	phone_number_sponsor         NUMERIC(15)   NOT NULL,
	id_project 					 NUMERIC(15)  NOT NULL,

	CONSTRAINT pk_sponsor PRIMARY KEY(id_sponsor)
);


CREATE TABLE economic_entry
(
	transaction_number_economic_entry    NUMERIC(10)  NOT NULL,
	description_economic_entry           VARCHAR(100) NOT NULL,
	date_economic_entry 		         VARCHAR(15)  NOT NULL,
	amount_economic_entry 		         NUMERIC(30)  NOT NULL,
	id_sponsor                  		 NUMERIC(20)  NOT NULL,
	
	CONSTRAINT pk_economic_entry PRIMARY KEY(transaction_number_economic_entry)
);


CREATE TABLE other_donations  
(
	serial_number_other_donations    NUMERIC(10)  NOT NULL,
	date_other_donations             VARCHAR(10)  NOT NULL,
	description_other_donations      VARCHAR(100) NOT NULL,
	approximate_amount               NUMERIC(30)  NOT NULL,
	id_sponsor                   	 NUMERIC(20)  NOT NULL,

	CONSTRAINT pk_other_donations PRIMARY KEY(serial_number_other_donations)
);


CREATE TABLE beneficiary
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


CREATE TABLE board_of_directors
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


CREATE TABLE club_meeting
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


CREATE TABLE national_or_international_meeting
(
	id_national_or_international_meeting 			NUMERIC(15) NOT NULL,
	attendance_national_or_international_meeting 	VARCHAR(10)  NOT NULL,
	type_national_or_international_meeting 			VARCHAR(20) NOT NULL,
	hour_national_or_international_meeting 			VARCHAR(10)  NOT NULL,
	date_national_or_international_meeting 			VARCHAR(10) NOT NULL,
	id_board_of_directors 							NUMERIC(15) NOT NULL,
	
	CONSTRAINT pk_national_or_international_meeting PRIMARY KEY(id_national_or_international_meeting)
);


CREATE TABLE bill_payment
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


CREATE TABLE payment
(
    registry_number_payment     VARCHAR(10)   NOT NULL,
    date_payment  	  			VARCHAR(10)   NOT NULL,
	trade_payment	  			VARCHAR(100)  NOT NULL,
	amount_payment				NUMERIC(10)   NOT NULL,
	description_payment			VARCHAR(200)  NOT NULL,
	id_club 					NUMERIC(15)   NOT NULL,
	
    CONSTRAINT pk_payment PRIMARY KEY (registry_number_payment)
);


CREATE TABLE payment_to_national
(
    registry_number_payment_national    VARCHAR(10)  NOT NULL,
    date_payment_to_national  	  		VARCHAR(10)  NOT NULL,
	amount_payment_to_national			NUMERIC(10)  NOT NULL,
	status_payment_to_national			VARCHAR(15) NOT NULL,
	id_club 							NUMERIC(15)  NOT NULL,
	
    CONSTRAINT pk_payment_to_national PRIMARY KEY (registry_number_payment_national)
);


CREATE TABLE volunteer 
(
	id_volunteer 				NUMERIC(15) NOT NULL,
	name_volunteer 				VARCHAR(50) NOT NULL,
	last_name_volunteer 		VARCHAR(50) NOT NULL,
	phone_number_volunteer 		NUMERIC(15) NOT NULL,
	mail_volunteer 				VARCHAR(100) NOT NULL,
	id_club 					NUMERIC(15) NOT NULL,
	
	CONSTRAINT pk_volunteer PRIMARY KEY(id_volunteer)
);


CREATE TABLE social_media
(
    id_social_media       VARCHAR(20)  NOT NULL,
    social_network  	  VARCHAR(80)  NOT NULL,
	number_of_followers	  NUMERIC(10)  NOT NULL,
	id_club 			  NUMERIC(15)  NOT NULL,
	
    CONSTRAINT pk_social_media PRIMARY KEY (id_social_media)
);


CREATE TABLE event
(
	id_event 		NUMERIC(15) NOT NULL,
	date_event 		VARCHAR(10) NOT NULL,
	name_event 		VARCHAR(50) NOT NULL,
	event_type 		VARCHAR(25) NOT NULL,
	price_event 	NUMERIC(10) NOT NULL,
	
	CONSTRAINT pk_event PRIMARY KEY(id_event)
);


CREATE TABLE camaraderie
(
	id_camaraderie 						NUMERIC(15) NOT NULL,
	event_club_camaraderie 				VARCHAR(15) NOT NULL,
	event_day_camaraderie 				VARCHAR(10) NOT NULL,
	photos_ot_the_event_camaraderie 	NUMERIC(10) NOT NULL,
	id_event 							NUMERIC(15) NOT NULL,
	
	CONSTRAINT pk_camaraderia PRIMARY KEY(id_camaraderie)
);

CREATE TABLE desarrollo.Registration(
	id_member 	NUMERIC(15) NOT NULL,
	password 	VARCHAR(15) NOT NULL
)

--INTERMEDIATE TABLE fOR RELATION OF MEMBER WITH EVENT TABLE WITH FOREIGN KEY
CREATE TABLE attend_member_event(
	id_member  NUMERIC(15) NOT NULL,
	id_event   NUMERIC(15) NOT NULL,

	FOREIGN KEY (id_member) REFERENCES member (id_member),
	FOREIGN KEY (id_event) REFERENCES event (id_event)

);



--FOREIGN KEYS TABLES

--RELATION OF MEMBER WITH CLUB
ALTER TABLE member
  ADD CONSTRAINT fk_member_club
  FOREIGN KEY (id_club) REFERENCES club (id_club);

--RELATION OF MEMBER WITH PROJECT
ALTER TABLE member
  ADD CONSTRAINT fk_member_project
  FOREIGN KEY (id_project) REFERENCES project (id_project);

--RELATION OF MEMBER WITH BOARD OF DIRECTIONS  
ALTER TABLE member
  ADD CONSTRAINT fk_member_board_of_directors
  FOREIGN KEY (id_board_of_directors) REFERENCES board_of_directors (id_board_of_directors);

--RELATION OF MEMBERSHIP PAYMENT WITH MEMBER 
ALTER TABLE membership_payment
  ADD CONSTRAINT fk_membership_payment_member
  FOREIGN KEY (id_member) REFERENCES member (id_member);
  
--RELATION DE CATERORY PROJECT WITH PROJECT
ALTER TABLE category_project
  ADD CONSTRAINT fk_category_project_project
  FOREIGN KEY (id_project) REFERENCES project (id_project);

--RELATION OF TYPE PROJECT WITH PROJECT  
ALTER TABLE type_project
  ADD CONSTRAINT fk_type_project_project
  FOREIGN KEY (id_project) REFERENCES project(id_project);
  
--RELATION OF SPONSOR WITH PROJECT  
ALTER TABLE sponsor
  ADD CONSTRAINT fk_sponsor_project
  FOREIGN KEY (id_project) REFERENCES project(id_project);

--RELATION OF OTHER DONATIONS WITH SPONSOR   
ALTER TABLE other_donations
  ADD CONSTRAINT fk_other_donations_sponsor
  FOREIGN KEY (id_sponsor) REFERENCES sponsor(id_sponsor);

--RELATION OF ECONOMIC ENTRY WITH SPONSOR 
ALTER TABLE economic_entry
  ADD CONSTRAINT fk_economic_entry_sponsor
  FOREIGN KEY (id_sponsor) REFERENCES sponsor(id_sponsor);

--RELATION OF BENEFICIARY WITH PROJECT  
ALTER TABLE beneficiary
  ADD CONSTRAINT fk_beneficiary_project
  FOREIGN KEY (id_project) REFERENCES project(id_project);

--RELATION OF CLUB MEETING WITH MEMBER  
ALTER TABLE club_meeting
  ADD CONSTRAINT fk_club_meeting_member  
  FOREIGN KEY (id_member) REFERENCES member(id_member);

--RELATION OF NATIONAL OR INTERNATIONAL MEETING WITH BOAR OF DIRECTORS  
ALTER TABLE national_or_international_meeting 
  ADD CONSTRAINT fk_national_or_international_meeting_board_of_directors
  FOREIGN KEY (id_board_of_directors) REFERENCES board_of_directors(id_board_of_directors);

--RELATION OF BILL PAYMENT WITH CLUB  
ALTER TABLE bill_payment
  ADD CONSTRAINT fk_bill_payment_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF PAYMENT WITH CLUB  
ALTER TABLE payment
  ADD CONSTRAINT fk_payment_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF PAYMENT TO NATIONAL WITH CLUB  
ALTER TABLE payment_to_national
  ADD CONSTRAINT fk_payment_to_national_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF VOLUNTEER WITH CLUB   
ALTER TABLE volunteer
  ADD CONSTRAINT fk_volunteer_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF SOCIAL MEDIA WITH CLUB   
ALTER TABLE social_media
  ADD CONSTRAINT fk_social_media_club
  FOREIGN KEY (id_club) REFERENCES club(id_club);

--RELATION OF CAMARADERIE WITH EVENT  
ALTER TABLE camaraderie
  ADD CONSTRAINT fk_camaraderie_event
  FOREIGN KEY (id_event) REFERENCES event(id_event);
