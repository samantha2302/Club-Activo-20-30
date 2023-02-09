-- Funciones 

-------------------------------------- Club ----------------------------------------

CREATE OR REPLACE FUNCTION desarrollo.insert_club(id_club NUMERIC, name_club VARCHAR, phone_number_club NUMERIC, mail_club VARCHAR, anniversary_club VARCHAR) RETURNS VOID 
AS
$$
	INSERT INTO desarrollo.club VALUES(id_club, name_club, phone_number_club, mail_club, anniversary_club);		
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION desarrollo.delete_club(id_club_borrar NUMERIC) RETURNS VOID 
AS 
$$ 
	DELETE 
	FROM desarrollo.club 
	WHERE id_club = id_club_borrar
$$ LANGUAGE SQL;


CREATE OR REPLACE FUNCTION desarrollo.update_club(id_club_cambiar NUMERIC,new_id_club NUMERIC, new_name_club VARCHAR, new_phone_number_club NUMERIC, new_mail_club VARCHAR, new_anniversary_club VARCHAR) RETURNS VOID
AS
$$
	UPDATE desarrollo.club
	SET id_club = new_id_club, name_club = new_name_club, phone_number_club = new_phone_number_club, mail_club = new_mail_club,  anniversary_club = new_anniversary_club
	WHERE id_club = id_club_cambiar; 
$$ LANGUAGE SQL;

------------------------------ Member ---------------------------------

CREATE OR REPLACE FUNCTION desarrollo.insert_member(id_member NUMERIC, name_member VARCHAR,last_name_member VARCHAR, phone_numebr_member NUMERIC,age_member NUMERIC, 
										 status_member VARCHAR, mail_member VARCHAR, id_club_fk NUMERIC, id_project_fk NUMERIC, id_board_of_directors_fk NUMERIC) RETURNS VOID
AS 
$$
	INSERT INTO desarrollo.member VALUES (id_member, name_member, last_name_member, phone_numebr_member,age_member, 
							 status_member, mail_member, id_club_fk, id_project_fk, id_board_of_directors_fk);
$$ LANGUAGE SQL;
SELECT * FROM club
SELECT * FROM project
SELECT * FROM board_of_directors
SELECT * FROM club
SELECT * FROM member
SELECT * FROM desarrollo.insert_member(1, 's', 's', 5464, 23, 'j', 'j', 3002045068, 7, 2);


CREATE OR REPLACE FUNCTION desarrollo.delete_member(id_member_borrar NUMERIC) RETURNS VOID 
AS 
$$
	DELETE 
	FROM desarrollo.member 
	WHERE id_member = id_member_borrar;
$$ LANGUAGE SQL; 
SELECT * FROM desarrollo.delete_member(1);

CREATE OR REPLACE FUNCTION desarrollo.update_member(id_member_cambiar NUMERIC, new_id_member NUMERIC, new_name_member VARCHAR,new_last_name_member VARCHAR, new_phone_number_member NUMERIC, new_age_member NUMERIC, 
										 new_status_member VARCHAR, new_mail_member VARCHAR, new_id_club NUMERIC, new_id_project NUMERIC, new_id_board_of_directors NUMERIC) RETURNS VOID 
AS
$$
	UPDATE desarrollo.member 
	SET id_member = new_id_member, name_member = new_name_member, last_name_member = new_last_name_member, phone_number_member = new_phone_number_member, age_member = new_age_member, 
	status_member = new_status_member, mail_member = new_mail_member,id_club = new_id_club, id_project = new_id_project, id_board_of_directors = new_id_board_of_directors
	WHERE id_member = id_member_cambiar
$$ LANGUAGE SQL;

----------------------- Membership Payment ------------------------------ 

CREATE OR REPLACE FUNCTION desarrollo.insert_membership_payment(membership_payment_record NUMERIC, status_membership_payment VARCHAR, amount_membership_payment NUMERIC, date_membership_payment VARCHAR, id_member NUMERIC) RETURNS VOID 
AS
$$
	INSERT INTO desarrollo.membership_payment VALUES (membership_payment_record, status_membership_payment, amount_membership_payment, date_membership_payment, id_member);
$$ LANGUAGE SQL;
SELECT * FROM desarrollo.insert_membership_payment(11111, 'm', 5, 'k', 109511760);
SELECT * FROM membership_payment

CREATE OR REPLACE FUNCTION desarrollo.delete_membership_payment(membership_payment_record_borrar NUMERIC) RETURNS VOID
AS 
$$
	DELETE 
	FROM desarrollo.membership_payment 
	WHERE membership_payment_record = membership_payment_record_borrar;
$$ LANGUAGE SQL;
SELECT * FROM desarrollo.delete_membership_payment(11111);

CREATE OR REPLACE FUNCTION desarrollo.update_membership_payment(membership_payment_record_cambiar NUMERIC, new_membership_payment_record NUMERIC, new_status_membership_payment VARCHAR, new_amount_membership_payment NUMERIC, new_date_membership_payment VARCHAR, new_id_member NUMERIC) RETURNS VOID 
AS
$$
	UPDATE desarrollo.membership_payment
	SET membership_payment_record = new_membership_payment_record, status_membership_payment = new_status_membership_payment, status_membership_payment = new_status_membership_payment, amount_membership_payment = new_amount_membership_payment, date_membership_payment = new_date_membership_payment, id_member = new_id_member
	WHERE membership_payment_record = membership_payment_record_cambiar
$$ LANGUAGE SQL;

---------------------------------- Project ----------------------------------------------

CREATE OR REPLACE FUNCTION desarrollo.insert_project(id_project NUMERIC, name_project VARCHAR, description_project VARCHAR, number_of_hours_invested_per_partner_project NUMERIC, completion_date_of_the_project VARCHAR, number_of_children_benefited_by_project NUMERIC, number_of_adults_benefited_by_project NUMERIC, total_amount_of_sponsorship_for_project NUMERIC) RETURNS VOID 
AS 
$$ 
	INSERT INTO desarrollo.project VALUES(id_project, name_project, description_project, number_of_hours_invested_per_partner_project, completion_date_of_the_project, number_of_children_benefited_by_project, number_of_adults_benefited_by_project, total_amount_of_sponsorship_for_project);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.delete_project(id_project_borrar NUMERIC) RETURNS VOID
AS 
$$
	DELETE 
	FROM desarrollo.project 
	WHERE id_project = delete_project.id_project;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.update_projet(id_project_cambiar NUMERIC, new_id_project NUMERIC, new_name_project VARCHAR, new_description_project VARCHAR, new_number_of_hours_invested_per_partner_project NUMERIC, new_completion_date_of_the_project VARCHAR, new_number_of_children_benefited_by_project NUMERIC, new_number_of_adults_benefited_by_project NUMERIC, new_total_amount_of_sponsorship_for_project NUMERIC) RETURNS VOID 
AS 
$$
	UPDATE desarrollo.project
	SET id_project = new_id_project, name_project = new_name_project, description_project = new_description_project, number_of_hours_invested_per_partner_project = new_number_of_hours_invested_per_partner_project, completion_date_of_the_project = new_completion_date_of_the_project, number_of_children_benefited_by_project = new_number_of_children_benefited_by_project, number_of_adults_benefited_by_project = new_number_of_adults_benefited_by_project, total_amount_of_sponsorship_for_project = new_total_amount_of_sponsorship_for_project
	WHERE id_project = id_project_cambiar
$$ LANGUAGE SQL;

------------------------------------- Category project ----------------------------------------
CREATE OR REPLACE FUNCTION desarrollo.insert_category_project(id_category_project NUMERIC, social_service BOOLEAN, collection_category_project  BOOLEAN, id_project NUMERIC) RETURNS VOID 
AS 
$$
	INSERT INTO desarrollo.category_project VALUES(id_category_project, social_service, collection_category_project, id_project);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.delete_category_project(id_category_project_borrar NUMERIC) RETURNS VOID 
AS
$$
	DELETE 
	FROM desarrollo.category_project
	WHERE id_category_project = id_category_project_borrar;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.update_category_project(id_category_project_cambiar NUMERIC, new_id_category_project NUMERIC, new_social_service BOOLEAN, new_collection_category_project  BOOLEAN, new_id_project NUMERIC) RETURNS VOID 
AS
$$
	UPDATE desarrollo.category_project
	SET id_category_project = new_id_category_project, social_service = new_social_service, collection_category_project = new_collection_category_project, id_project = new_id_project
	WHERE id_category_project = id_category_project_cambiar
$$ LANGUAGE SQL;

----------------------------------- Type Project ----------------------------------------
CREATE OR REPLACE FUNCTION desarrollo.insert_type_project(id_type_project NUMERIC, educational BOOLEAN, ecological BOOLEAN, recreation BOOLEAN, health BOOLEAN, other BOOLEAN, id_project NUMERIC) RETURNS VOID
AS
$$
	INSERT INTO desarrollo.type_project VALUES(id_type_project, educational, ecological, recreation, health, other, id_project)
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.delete_type_project(id_type_project_borrar NUMERIC) RETURNS VOID 
AS
$$
	DELETE 
	FROM desarrollo.type_project
	WHERE id_type_project = id_type_project_borrar;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.update_type_project(id_type_project_cambiar NUMERIC, new_id_type_project NUMERIC, new_educational BOOLEAN, new_ecological BOOLEAN, new_recreation BOOLEAN, new_health BOOLEAN, new_other BOOLEAN, new_id_project NUMERIC) RETURNS VOID 
AS
$$
	UPDATE desarrollo.type_project
	SET id_type_project = new_id_type_project, educational = new_educational, ecological = new_ecological, recreation = new_recreation, health = new_health, other = new_other, id_project = new_id_project
	WHERE id_type_project = id_type_project_cambiar
$$ LANGUAGE SQL;

------------------------------------ Sponsor ---------------------------------
CREATE OR REPLACE FUNCTION desarrollo.insert_sponsor(id_sponsor NUMERIC, name_sponsor VARCHAR, mail_sponsor VARCHAR, status_sponsor VARCHAR, phone_number_sponsor NUMERIC, id_project NUMERIC) RETURNS VOID
AS
$$
	INSERT INTO desarrollo.sponsor VALUES(id_sponsor, name_sponsor, mail_sponsor, status_sponsor, phone_number_sponsor, id_project);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.delete_sponsor(id_sponsor_borrar NUMERIC) RETURNS VOID
AS
$$
	DELETE 
	FROM desarrollo.sponsor 
	WHERE id_sponsor = id_sponsor_borrar;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.update_sponsor(id_sponsor_cambiar NUMERIC, new_id_sponsor NUMERIC, new_name_sponsor VARCHAR, new_mail_sponsor VARCHAR, new_status_sponsor VARCHAR, new_phone_number_sponsor NUMERIC, new_id_project NUMERIC) RETURNS VOID
AS
$$
	UPDATE desarrollo.sponsor
	SET id_sponsor = new_id_sponsor, name_sponsor = new_name_sponsor, mail_sponsor = new_mail_sponsor, status_sponsor = new_status_sponsor, phone_number_sponsor = new_phone_number_sponsor,id_project = new_id_project
	WHERE id_sponsor = id_sponsor_cambiar
$$ LANGUAGE SQL;

---------------------------------- Economic Entry --------------------------------
CREATE OR REPLACE FUNCTION desarrollo.insert_economic_entry(transaction_number_economic_entry NUMERIC, description_economic_entry VARCHAR, date_economic_entry VARCHAR, amount_economic_entry NUMERIC, id_sponsor NUMERIC) RETURNS VOID
AS 
$$
	INSERT INTO desarrollo.economic_entry VALUES (transaction_number_economic_entry, description_economic_entry, date_economic_entry, amount_economic_entry, id_sponsor);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.delete_economic_entry(transaction_number_economic_entry_borrar NUMERIC) RETURNS VOID 
AS 
$$
	DELETE
	FROM desarrollo.economic_entry
	WHERE transaction_number_economic_entry = transaction_number_economic_entry_borrar;
$$ LANGUAGE SQL; 

CREATE OR REPLACE FUNCTION ddesarrollo.update_economic_entry(transaction_number_economic_entry_cambiar NUMERIC, new_transaction_number_economic_entry NUMERIC, new_description_economic_entry VARCHAR, new_date_economic_entry VARCHAR, new_amount_economic_entry NUMERIC, new_id_sponsor NUMERIC) RETURNS VOID 
AS
$$
	UPDATE desarrollo.economic_entry
	SET transaction_number_economic_entry = new_transaction_number_economic_entry, description_economic_entry = new_description_economic_entry, date_economic_entry = new_date_economic_entry, amount_economic_entry = new_amount_economic_entry, id_sponsor = new_id_sponsor
	WHERE transaction_number_economic_entry = transaction_number_economic_entry_cambiar;
$$ LANGUAGE SQL;

---------------------------------- Other Donations ---------------------------------------
CREATE OR REPLACE FUNCTION desarrollo.insert_other_donations(serial_number_other_donations NUMERIC, date_other_donations VARCHAR, description_other_donations VARCHAR, approximate_amount NUMERIC, id_sponsor NUMERIC) RETURNS VOID
AS
$$
	INSERT INTO desarrollo.other_donations VALUES(serial_number_other_donations, date_other_donations, description_other_donations, approximate_amount, id_sponsor);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.delete_other_donations(serial_number_other_donations_borrar NUMERIC) RETURNS VOID
AS
$$
	DELETE 
	FROM desarrollo.other_donations
	WHERE serial_number_other_donations = serial_number_other_donations_borrar;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.update_other_donations(serial_number_other_donations_cambiar NUMERIC, new_serial_number_other_donations NUMERIC, new_date_other_donations VARCHAR, new_description_other_donations VARCHAR, new_approximate_amount NUMERIC, new_id_sponsor NUMERIC) RETURNS VOID 
AS
$$
	UPDATE desarrollo.other_donations
	SET serial_number_other_donations = new_serial_number_other_donations, date_other_donations = new_date_other_donations, description_other_donations = new_description_other_donations, approximate_amount = new_approximate_amount, id_sponsor = new_id_sponsor
	WHERE serial_number_other_donations = serial_number_other_donations_cambiar;
$$ LANGUAGE SQL;

------------------------------------- Beneficiary -------------------------------
CREATE OR REPLACE FUNCTION desarrollo.insert_beneficiary(id_beneficiary NUMERIC, name_beneficiary VARCHAR, last_name_beneficiary VARCHAR, phone_number_beneficiary NUMERIC, address VARCHAR, mail_beneficiary VARCHAR, id_project NUMERIC) RETURNS VOID 
AS
$$
	INSERT INTO desarrollo.beneficiary VALUES (id_beneficiary, name_beneficiary, last_name_beneficiary, phone_number_beneficiary, address, mail_beneficiary, id_project);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.delete_beneficiary(id_beneficiary_borrar NUMERIC) RETURNS VOID 
AS
$$
	DELETE 
	FROM desarrollo.beneficiary
	WHERE id_beneficiary = id_beneficiary_borrar;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.update_beneficiary(id_beneficiary_cambiar NUMERIC, new_id_beneficiary NUMERIC, new_name_beneficiary VARCHAR, new_last_name_beneficiary VARCHAR, new_phone_number_beneficiary NUMERIC, new_address VARCHAR, new_mail_beneficiary VARCHAR, new_id_project NUMERIC) RETURNS VOID 
AS
$$
	UPDATE desarrollo.beneficiary 
	SET id_beneficiary = new_id_beneficiary, name_beneficiary = new_name_beneficiary, last_name_beneficiary = new_last_name_beneficiary, phone_number_beneficiary = new_phone_number_beneficiary, address = new_address, mail_beneficiary = new_mail_beneficiary, id_project = new_id_project
	WHERE id_beneficiary = id_beneficiary_cambiar;
$$ LANGUAGE SQL;

------------------------------------- Board Of Directors -------------------------------
CREATE OR REPLACE FUNCTION desarrollo.insert_board_of_directors(id_board_of_directors NUMERIC, year_board_of_directors NUMERIC, president VARCHAR, vice_president VARCHAR, secretary VARCHAR, treasurer VARCHAR, fiscal VARCHAR, vocal1 VARCHAR, vocal2 VARCHAR, director1 VARCHAR, director2 VARCHAR, sargeant_at_arms VARCHAR) RETURNS VOID 
AS 
$$
	INSERT INTO desarrollo.board_of_directors VALUES(id_board_of_directors, year_board_of_directors, president, vice_president, secretary, treasurer, fiscal, vocal1, vocal2, director1, director2, sargeant_at_arms);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.delete_board_of_directors(id_board_of_directors_borrar NUMERIC) RETURNS VOID
AS 
$$
	DELETE 
	FROM desarrollo.board_of_directors
	WHERE id_board_of_directors = id_board_of_directors_borrar;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.update_board_of_directors(id_board_of_directors_cambiar NUMERIC, new_id_board_of_directors NUMERIC, new_year_board_of_directors NUMERIC, new_president VARCHAR, new_vice_president VARCHAR, new_secretary VARCHAR, new_treasurer VARCHAR, new_fiscal VARCHAR, new_vocal1 VARCHAR, new_vocal2 VARCHAR, new_director1 VARCHAR, new_director2 VARCHAR, new_sargeant_at_arms VARCHAR) RETURNS VOID
AS
$$
	UPDATE desarrollo.board_of_directors
	SET id_board_of_directors = new_id_board_of_directors, year_board_of_directors = new_year_board_of_directors, president = new_president, vice_president = new_vice_president, secretary = new_secretary, treasurer = new_treasurer, fiscal = new_fiscal, vocal1 = new_vocal1, vocal2 = new_vocal2, director1 = new_director1, director2 = new_director2, sargeant_at_arms = new_sargeant_at_arms
	WHERE id_board_of_directors = id_board_of_directors_cambiar;
$$ LANGUAGE SQL;

-------------------------------------  Club Meeting -------------------------------
CREATE OR REPLACE FUNCTION desarrollo.insert_club_meeting(id_club_meeting NUMERIC, date_club_meeting VARCHAR, hour_club_meeting VARCHAR, type_club_meeting VARCHAR, reunion_class VARCHAR, attendance_club_meeting VARCHAR, id_member NUMERIC) RETURNS VOID 
AS
$$
	INSERT INTO desarrollo.club_meeting VALUES(id_club_meeting, date_club_meeting, hour_club_meeting, type_club_meeting, reunion_class, attendance_club_meeting, id_member)
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.delete_club_meeting(id_club_meeting_borrar NUMERIC) RETURNS VOID
AS
$$
	DELETE
	FROM desarrollo.club_meeting
	WHERE id_club_meeting = id_club_meeting_borrar;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.update_club_meeting(id_club_meeting_cambiar NUMERIC, new_id_club_meeting NUMERIC, new_date_club_meeting VARCHAR, new_hour_club_meeting VARCHAR, new_type_club_meeting VARCHAR, new_reunion_class VARCHAR, new_attendance_club_meeting VARCHAR, new_id_member NUMERIC) RETURNS VOID 
AS
$$
	UPDATE desarrollo.club_meeting
	SET id_club_meeting = new_id_club_meeting, date_club_meeting = new_date_club_meeting, hour_club_meeting = new_hour_club_meeting, type_club_meeting = new_type_club_meeting, reunion_class = new_reunion_class, attendance_club_meeting = new_attendance_club_meeting, id_member = new_id_member
	WHERE id_club_meeting = id_club_meeting_cambiar;
$$ LANGUAGE SQL;

------------------------------------- National Or International Meeting -------------------------------
CREATE OR REPLACE FUNCTION desarrollo.insert_national_or_international_meeting(id_national_or_international_meeting NUMERIC, attendance_national_or_international_meeting VARCHAR, type_national_or_international_meeting VARCHAR, hour_national_or_international_meeting VARCHAR, date_national_or_international_meeting VARCHAR, id_board_of_directors NUMERIC) RETURNS VOID 
AS
$$
	INSERT INTO desarrollo.national_or_international_meeting VALUES (id_national_or_international_meeting, attendance_national_or_international_meeting, type_national_or_international_meeting, hour_national_or_international_meeting, date_national_or_international_meeting, id_board_of_directors)
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.delete_national_or_international_meeting(id_national_or_international_meeting_borrar NUMERIC) RETURNS VOID 
AS
$$
	DELETE
	FROM desarrollo.national_or_international_meeting
	WHERE id_national_or_international_meeting = id_national_or_international_meeting_borrar;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.update_national_or_international_meeting(id_national_or_international_meeting_cambiar NUMERIC, new_id_national_or_international_meeting NUMERIC, new_attendance_national_or_international_meeting VARCHAR, new_type_national_or_international_meeting VARCHAR, new_hour_national_or_international_meeting VARCHAR, new_date_national_or_international_meeting VARCHAR, new_id_board_of_directors NUMERIC) RETURNS VOID
AS
$$
	UPDATE desarrollo.national_or_international_meeting
	SET id_national_or_international_meeting = new_id_national_or_international_meeting, attendance_national_or_international_meeting = new_attendance_national_or_international_meeting, type_national_or_international_meeting = new_type_national_or_international_meeting, hour_national_or_international_meeting = new_hour_national_or_international_meeting, date_national_or_international_meeting = new_date_national_or_international_meeting, id_board_of_directors = new_id_board_of_directors
	WHERE id_national_or_international_meeting = id_national_or_international_meeting_cambiar;
$$ LANGUAGE SQL;

------------------------------------- Bill Payment	 -------------------------------
CREATE OR REPLACE FUNCTION desarrollo.insert_bill_payment(registry_number_bill_payment VARCHAR, date_bill_payment VARCHAR, amount_bill_payment NUMERIC, trade_bill_payment VARCHAR, description_bill_payment VARCHAR, discount_bill_payment NUMERIC, id_club NUMERIC) RETURNS VOID
AS
$$
	INSERT INTO desarrollo.bill_payment VALUES(registry_number_bill_payment, date_bill_payment, amount_bill_payment, trade_bill_payment, description_bill_payment, discount_bill_payment, id_club);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.delete_bill_payment(registry_number_bill_payment_borrar VARCHAR) RETURNS VOID 
AS
$$
	DELETE
	FROM desarrollo.bill_payment
	WHERE registry_number_bill_payment = registry_number_bill_payment_borrar;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.update_bill_payment(registry_number_bill_payment_cambiar VARCHAR, new_registry_number_bill_payment VARCHAR, new_date_bill_payment VARCHAR, new_amount_bill_payment NUMERIC, new_trade_bill_payment VARCHAR, new_description_bill_payment VARCHAR, new_discount_bill_payment NUMERIC, new_id_club NUMERIC) RETURNS VOID
AS
$$
	UPDATE desarrollo.bill_payment
	SET registry_number_bill_payment = new_registry_number_bill_payment, date_bill_payment = new_date_bill_payment, amount_bill_payment = new_amount_bill_payment, trade_bill_payment = new_trade_bill_payment, description_bill_payment = new_description_bill_payment, discount_bill_payment = new_discount_bill_payment, id_club = new_id_club
	WHERE registry_number_bill_payment = registry_number_bill_payment_cambiar;
$$ LANGUAGE SQL;

------------------------------------- Payment -------------------------------
CREATE OR REPLACE FUNCTION desarrollo.insert_payment(registry_number_payment VARCHAR, date_payment VARCHAR, trade_payment VARCHAR, amount_payment NUMERIC, description_payment VARCHAR, id_club NUMERIC) RETURNS VOID
AS
$$
	INSERT INTO desarrollo.payment VALUES(registry_number_payment, date_payment, trade_payment, amount_payment, description_payment, id_club);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.delete_payment(registry_number_payment_borrar VARCHAR) RETURNS VOID
AS
$$
	DELETE
	FROM desarrollo.payment
	WHERE registry_number_payment = registry_number_payment_borrar;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.update_payment(registry_number_payment_cambiar VARCHAR, new_registry_number_payment VARCHAR, new_date_payment VARCHAR, new_trade_payment VARCHAR, new_amount_payment NUMERIC, new_description_payment VARCHAR, new_id_club NUMERIC) RETURNS VOID 
AS
$$
	UPDATE desarrollo.paymenr
	SET registry_number_payment = new_registry_number_payment, date_payment = new_date_payment, trade_payment = new_trade_payment, amount_payment = new_amount_payment, description_payment = new_description_payment, id_club = new_id_club
	WHERE registry_number_payment = registry_number_payment_cambiar;
$$ LANGUAGE SQL;

------------------------------------- Payment To National -------------------------------
CREATE OR REPLACE FUNCTION desarrollo.insert_payment_to_national(registry_number_payment_national VARCHAR, date_payment_to_national VARCHAR, amount_payment_to_national NUMERIC, status_payment_to_national VARCHAR, id_club NUMERIC) RETURNS VOID 
AS
$$
	INSERT INTO desarrollo.payment_to_national VALUES(registry_number_payment_national, date_payment_to_national, amount_payment_to_national, status_payment_to_national, id_club);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.delete_payment_to_national(registry_number_payment_national_borrar VARCHAR) RETURNS VOID
AS
$$
	DELETE
	FROM desarrollo.payment_to_national
	WHERE registry_number_payment_national = registry_number_payment_national_borrar;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.update_payment_to_national(registry_number_payment_national_cambiar VARCHAR, new_registry_number_payment_national VARCHAR, new_date_payment_to_national VARCHAR, new_amount_payment_to_national NUMERIC, new_status_payment_to_national VARCHAR, new_id_club NUMERIC) RETURNS VOID
AS
$$
	UPDATE desarrollo.payment_to_national
	SET registry_number_payment_national = new_registry_number_payment_national, date_payment_to_national = new_date_payment_to_national, amount_payment_to_national = new_amount_payment_to_national, status_payment_to_national = new_status_payment_to_national, id_club = new_id_club
	WHERE registry_number_payment_national = registry_number_payment_national_cambiar;
$$ LANGUAGE SQL;

------------------------------------- Volunteer -------------------------------
CREATE OR REPLACE FUNCTION desarrollo.insert_volunteer(id_volunteer NUMERIC, name_volunteer VARCHAR, last_name_volunteer VARCHAR, phone_number_volunteer NUMERIC, mail_volunteer VARCHAR, id_club NUMERIC) RETURNS VOID
AS
$$
	INSERT INTO  desarrollo.volunteer VALUES (id_volunteer, name_volunteer, last_name_volunteer, phone_number_volunteer, mail_volunteer, id_club);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.delete_volunteer(id_volunteer_borrar NUMERIC) RETURNS VOID
AS
$$
	DELETE 
	FROM desarrollo.volunteer 
	WHERE id_volunteer = id_volunteer_borrar;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.update_volunteer(id_volunteer_cambiar NUMERIC, new_id_volunteer NUMERIC, new_name_volunteer VARCHAR, new_last_name_volunteer VARCHAR, new_phone_number_volunteer NUMERIC, new_mail_volunteer VARCHAR, new_id_club NUMERIC) RETURNS VOID
AS
$$
	UPDATE desarrollo.volunteer
	SET id_volunteer = new_id_volunteer, name_volunteer = new_name_volunteer, last_name_volunteer = new_last_name_volunteer, phone_number_volunteer = new_phone_number_volunteer, mail_volunteer = new_mail_volunteer, id_club = new_id_club
	WHERE id_volunteer = id_volunteer_cambiar;
$$ LANGUAGE SQL;

------------------------------------- Social Media -------------------------------
CREATE OR REPLACE FUNCTION desarrollo.insert_social_media(id_social_media VARCHAR, social_network VARCHAR, number_of_followers NUMERIC, id_club NUMERIC) RETURNS VOID
AS
$$
	INSERT INTO desarrollo.social_media VALUES (id_social_media, social_network, number_of_followers, id_club);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.delete_social_media(id_social_media_borrar VARCHAR) RETURNS VOID
AS
$$
	DELETE 
	FROM desarrollo.social_media
	WHERE id_social_media = id_social_media_borrar;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.update_social_media(id_social_media_cambiar VARCHAR, new_id_social_media VARCHAR, new_social_network VARCHAR, new_number_of_followers NUMERIC, new_id_club NUMERIC) RETURNS VOID 
AS
$$
	UPDATE desarrollo.social_media
	SET id_social_media = new_id_social_media, social_network = new_social_network, number_of_followers = new_number_of_followers, id_club = new_id_club
	WHERE id_social_media = id_social_media_cambiar;
$$ LANGUAGE SQL;
------------------------------------- Event -------------------------------
CREATE OR REPLACE FUNCTION desarrollo.insert_event(id_event NUMERIC, date_event VARCHAR, name_event VARCHAR, event_type VARCHAR, price_event NUMERIC) RETURNS VOID
AS
$$
	INSERT INTO desarrollo.event VALUES(id_event, date_event, name_event, event_type, price_event);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.delete_event(id_event_borrar NUMERIC) RETURNS VOID 
AS
$$
	DELETE 
	FROM desarrollo.event
	WHERE id_event = id_event_borrar;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.update_event(id_event_cambiar NUMERIC, new_id_event NUMERIC, new_date_event VARCHAR, new_name_event VARCHAR, new_event_type VARCHAR, new_price_event NUMERIC) RETURNS VOID 
AS 
$$
	UPDATE desarrollo.event
	SET id_event = new_id_event, date_event = new_date_event, name_event = new_name_event, event_type = new_event_type, price_event = new_price_event
	WHERE id_event = id_event_cambiar;
$$ LANGUAGE SQL;

------------------------------------- Camaraderie -------------------------------
CREATE OR REPLACE FUNCTION desarrollo.insert_camaraderie(id_camaraderie NUMERIC, event_club_camaraderie VARCHAR, event_day_camaraderie VARCHAR, photos_ot_the_event_camaraderie NUMERIC, id_event NUMERIC) RETURNS VOID
AS
$$
	INSERT INTO desarrollo.camaraderie VALUES(id_camaraderie, event_club_camaraderie, event_day_camaraderie, photos_ot_the_event_camaraderie, id_event);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.delete_camaraderie(id_camaraderie_borrar NUMERIC) RETURNS VOID
AS
$$
	DELETE 
	FROM desarrollo.camaraderia
	WHERE id_camaraderie = id_camaraderie_borrar;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.update_camaraderie(id_camaraderie_cambiar NUMERIC, new_id_camaraderie NUMERIC, new_event_club_camaraderie VARCHAR, new_event_day_camaraderie VARCHAR, new_photos_ot_the_event_camaraderie NUMERIC, new_id_event NUMERIC) RETURNS VOID 
AS
$$
	UPDATE desarrollo.camaraderie 
	SET id_camaraderie = new_id_camaraderie, event_club_camaraderie = new_event_club_camaraderie, event_day_camaraderie = new_event_day_camaraderie, photos_ot_the_event_camaraderie = new_photos_ot_the_event_camaraderie, id_event = new_id_event
	WHERE id_camaraderie = id_camaraderie_cambiar;
$$ LANGUAGE SQL;
------------------------------------- Attend Member Event -------------------------------
CREATE OR REPLACE FUNCTION desarrollo.insert_attend_member_event(id_member NUMERIC, id_event NUMERIC) RETURNS VOID 
AS
$$
	INSERT INTO desarrollo.attend_member_event VALUES(id_member, id_event);
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.delete_attend_member_event(id_member_borrar NUMERIC, id_event_borrar NUMERIC) RETURNS VOID 
AS
$$
	DELETE 
	FROM desarrollo.attend_member_event
	WHERE id_member = id_member_borrar AND id_event = id_event_borrar;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION desarrollo.update_attend_member_event(id_member_cambiar NUMERIC, id_event_cambiar NUMERIC, new_id_member NUMERIC, new_id_event NUMERIC) RETURNS VOID
AS
$$
	UPDATE desarrollo.attend_member_event
	SET id_member = new_id_member, id_event = new_id_event
	WHERE id_member = id_member_cambiar AND id_event = id_event_cambiar;
$$ LANGUAGE SQL;









