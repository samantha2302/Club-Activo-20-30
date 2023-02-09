--Create a query that presents the members of the club ordered by last name where 
--it is observed to which club they belong and in which project they are.
CREATE OR REPLACE FUNCTION desarrollo.miembros_por_club() RETURNS TABLE(nombre_miembro VARCHAR, nombre_club VARCHAR, id_proyecto INT, nombre_proyecto VARCHAR) 
AS 
$$
	SELECT m.name_member,c.name_club,p.id_project, p.name_project
	FROM desarrollo.member m JOIN desarrollo.club c
	ON c.id_club = m.id_club
	JOIN desarrollo.project p 
	ON p.id_project = m.id_project
	ORDER BY m.name_member
$$ LANGUAGE SQL; 

SELECT * FROM desarrollo.miembros_por_club();

--Create a query showing the club meetings that were held 
--at a specific time, as well as the date on which it was held and which club the meeting was from.
CREATE OR REPLACE FUNCTION desarrollo.reuniones_de_club() RETURNS TABLE(Fecha VARCHAR, Hora VARCHAR, Nombre_club VARCHAR)
AS
$$
	SELECT date_club_meeting,hour_club_meeting,c.name_club
	FROM desarrollo.club_meeting cm JOIN desarrollo.member m
	ON cm.id_member=m.id_member
	JOIN desarrollo.club c
	on c.id_club = m.id_club
	WHERE hour_club_meeting='5:00pm'
$$ LANGUAGE SQL;

SELECT * FROM desarrollo.reuniones_de_club()


--Create a query that shows the projects that have the total amount of sponsorship 
--greater than or equal to five million, as well as their beneficiary.
CREATE OR REPLACE FUNCTION desarrollo.proyectos() RETURNS TABLE(Total INT, nombre_proyecto VARCHAR, nombre_Beneficiario VARCHAR)
AS 
$$
	SELECT total_amount_of_sponsorship_for_project, p.name_project, b.name_beneficiary
	FROM desarrollo.project p JOIN desarrollo.beneficiary b
	ON p.id_project = b.id_project
	WHERE total_amount_of_sponsorship_for_project >= 5000000
$$ LANGUAGE SQL;

SELECT * FROM desarrollo.proyectos() 

-- Create a query that shows the projects that are of type recreation, as well as their name, 
--id and the partners that belong to said project.

CREATE OR REPLACE FUNCTION desarrollo.tipos_de_proyectos() RETURNS TABLE(id_member INT, name_member VARCHAR, id_project INT, name_project VARCHAR, id_type_project INT)  
AS
$$
	SELECT id_member, name_member, p.id_project, p.name_project, tp.id_type_project
	FROM desarrollo.member m JOIN desarrollo.project p 
	ON m.id_project = p.id_project
	JOIN desarrollo.type_project tp
	ON tp.id_project = p.id_project
	WHERE tp.recreation = TRUE
$$ LANGUAGE SQL;

SELECT * FROM desarrollo.tipos_de_proyectos()

-- Create a query that shows the events that are of type conference, the day of the 
--event and to which club they belong.
CREATE OR REPLACE FUNCTION desarrollo.eventos() RETURNS TABLE(id_evento INT, nombre_evento VARCHAR, camaraderia VARCHAR, dia_del_evento VARCHAR)
AS
$$
	SELECT e.id_event, e.name_event, c.event_club_camaraderie, c.event_day_camaraderie
	FROM desarrollo.event e JOIN desarrollo.camaraderie c
	ON e.id_event = c.id_event
	WHERE e.name_event = 'Conferencia'
$$ LANGUAGE SQL;

SELECT * FROM desarrollo.eventos()

-- Query that shows the number of followers of each social network and the id and name of 
-- the club to which they belong, ordered from highest to lowest number of followers

CREATE OR REPLACE FUNCTION desarrollo.followers_social_media_clubs() RETURNS TABLE(num_followers NUMERIC, name_social_network VARCHAR, id_club NUMERIC, name_club VARCHAR) 
AS 
$$
	SELECT s.number_of_followers, s.social_network, c.id_club, c.name_club 
	FROM desarrollo.social_media s JOIN desarrollo.club c
	ON s.id_club = c.id_club
	ORDER BY(s.number_of_followers) DESC;
$$ LANGUAGE SQL; 

SELECT * FROM desarrollo.followers_social_media_clubs();


-- Query that shows the id and name of the members who have the pending membership payment 
-- and the name of the club to which they belong

CREATE OR REPLACE FUNCTION desarrollo.members_pending_payment() RETURNS TABLE(id_member VARCHAR, name_member VARCHAR, name_club VARCHAR) 
AS 
$$
	SELECT m.id_member, m.name_member, c.name_club
	FROM desarrollo.membership_payment p JOIN desarrollo.member m
	ON p.id_member = m.id_member
	JOIN desarrollo.club c
	ON c.id_club = m.id_club
	WHERE p.status_membership_payment = 'Pendiente';
$$ LANGUAGE SQL; 

SELECT * FROM desarrollo.members_pending_payment();


-- Query that shows the id and name of the sponsors in education-type projects

CREATE OR REPLACE FUNCTION desarrollo.sponsors_education_projects() RETURNS TABLE(id_sponsor VARCHAR, name_sponsor VARCHAR) 
AS 
$$
	SELECT s.id_sponsor, s.name_sponsor
	FROM desarrollo.sponsor s JOIN desarrollo.project p
	ON s.id_project = p.id_project
	JOIN desarrollo.type_project t
	ON t.id_project = p.id_project
	WHERE t.educational = TRUE;
$$ LANGUAGE SQL; 

SELECT * FROM desarrollo.sponsors_education_projects();


-- Query that shows the id of the clubs that have pending national payments and the amount of these

CREATE OR REPLACE FUNCTION desarrollo.clubs_pending_pay_national() RETURNS TABLE(id_club VARCHAR, amount_payment INT) 
AS 
$$
	SELECT c.id_club, p.amount_payment_to_national
	FROM desarrollo.payment_to_national p JOIN desarrollo.club c
	ON p.id_club = c.id_club
	WHERE p.status_payment_to_national = 'Pendiente'
$$ LANGUAGE SQL; 

SELECT * FROM desarrollo.clubs_pending_pay_national();



-- Query that shows the name and id of the clubs that have paid invoices above 800,000 
-- ordered from highest to lowest

CREATE OR REPLACE FUNCTION desarrollo.clubs_higher_bills() RETURNS TABLE(id_club VARCHAR, name_club VARCHAR) 
AS 
$$
	SELECT c.id_club, b.amount_bill_payment
	FROM desarrollo.bill_payment b JOIN desarrollo.club c
	ON c.id_club = b.id_club
	WHERE b.amount_bill_payment > 800000
$$ LANGUAGE SQL; 

SELECT * FROM desarrollo.clubs_higher_bills();

