
								-- TRIGGERS --

CREATE OR REPLACE FUNCTION desarrollo.modification_club() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN CLUB ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 		RAISE NOTICE 'CLUB AGREGADO';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.id_club = NEW.id_club)THEN
  	   	RAISE NOTICE 'DATO MODIFICADO';
	 ELSE
	 	RAISE NOTICE 'EL CLUB AL QUE LE QUIEREN HACER LA ACTUALIZACIÓN NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.id_club != NEW.id_club)THEN
     	RAISE NOTICE 'EL CLUB QUE INTENTA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'CLUB ELIMINADO';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_club
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.club
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_club();


INSERT INTO desarrollo.club Values(3,'ahorita',5,'c','18/03/1956');
UPDATE desarrollo.club SET name_club = 'aaaaa' WHERE id_club = 3;
DELETE FROM desarrollo.club WHERE id_club = 3;

SELECT * FROM desarrollo.club;


------------------------------------------------------------------------
--falta verificar id_club, id_project, id_board_of_directors

CREATE OR REPLACE FUNCTION desarrollo.modification_member() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN MIEMBRO ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'MIEMBRO AGREGADO';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.id_member = NEW.id_member)THEN
  	   	RAISE NOTICE 'MIEMBRO MODIFICADO';
	 ELSE
	 	RAISE NOTICE 'EL MIEMBRO AL QUE LE QUIEREN HACER LA ACTUALIZACIÓN NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.id_member != NEW.id_member)THEN
     	RAISE NOTICE 'EL MIEMBRO QUE INTENTA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'MIEMBRO ELIMINADO';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_member
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.member
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_member();


INSERT INTO desarrollo.member VALUES(1,'YO','YO',5,21,'Activo','ryo@gmail.com',3002754421,07,02);
UPDATE desarrollo.member SET name_member = 'a' WHERE id_member = 1;
DELETE FROM desarrollo.member WHERE id_club = 3;

SELECT * FROM desarrollo.member;


------------------------------------------------------------------------
--verificar el id_member

CREATE OR REPLACE FUNCTION desarrollo.modification_membership_payment() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN MEMBERSHIP PAYMENT ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'NUEVO REGISTRO DE PAGO DE MEMBRESIA AGREGADO';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.membership_payment_record = NEW.membership_payment_record)THEN
  	   	RAISE NOTICE 'REGISTRO DEL PAGO DE MEMBRESÍA ACTUALIZADO';
	 ELSE
	 	RAISE NOTICE 'EL NUMERO DE REGISTRO QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.membership_payment_record != NEW.membership_payment_record)THEN
     	RAISE NOTICE 'EL REGISTRO DE PAGO QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'REGISTRO DE PAGO ELIMINADO';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_membership_payment
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.membership_payment
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_membership_payment();


INSERT INTO desarrollo.membership_payment VALUES(100,'a', 5, '03/06/2012',109511760);
UPDATE desarrollo.membership_payment SET status_membership_payment = 'hola' WHERE membership_payment_record = 100;
DELETE FROM desarrollo.membership_payment WHERE membership_payment_record = 100;

SELECT * FROM desarrollo.membership_payment;


------------------------------------------------------------------------


CREATE OR REPLACE FUNCTION desarrollo.modification_project() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN PROJECT ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'NUEVO PROYECTO AGREGADO';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.id_project = NEW.id_project)THEN
  	   	RAISE NOTICE 'PROYECTO ACTUALIZADO';
	 ELSE
	 	RAISE NOTICE 'EL ID EL PROYECTO QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.id_project != NEW.id_project)THEN
     	RAISE NOTICE 'EL PROYECTO QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'PROYECTO ELIMINADO';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_project
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.project
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_project();


INSERT INTO desarrollo.project VALUES(1,'o', 'oo', 0, '03/06/2012', 0 , 0, 0);
UPDATE desarrollo.project SET name_project = 'hola' WHERE id_project = 1;
DELETE FROM desarrollo.project WHERE id_project = 1;

SELECT * FROM desarrollo.project;


------------------------------------------------------------------------
-- verificar id_project

CREATE OR REPLACE FUNCTION desarrollo.modification_type_project() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN TYPE PROJECT ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'NUEVO TIPO DE PROYECTO AGREGADO';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.id_type_project = NEW.id_type_project)THEN
  	   	RAISE NOTICE 'TIPO DE PROYECTO ACTUALIZADO';
	 ELSE
	 	RAISE NOTICE 'EL ID DEL TIPO DE PROYECTO QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.id_type_project != NEW.id_type_project)THEN
     	RAISE NOTICE 'EL TIPO DE PROYECTO QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'TIPO DE PROYECTO ELIMINADO';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_type_project
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.type_project
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_type_project();


INSERT INTO desarrollo.type_project VALUES(20,TRUE,FALSE,FALSE,FALSE,FALSE,63);
UPDATE desarrollo.type_project SET educational = FALSE WHERE id_type_project = 20;
DELETE FROM desarrollo.type_project WHERE id_type_project = 20;

SELECT * FROM desarrollo.type_project;


------------------------------------------------------------------------
-- verificar id_project

CREATE OR REPLACE FUNCTION desarrollo.modification_category_project() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN CATEGORY PROJECT ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'NUEVA CATEGORIA DE PROYECTO AGREGADA';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.id_category_project = NEW.id_category_project)THEN
  	   	RAISE NOTICE 'CATEGORIA DE PROYECTO ACTUALIZADA';
	 ELSE
	 	RAISE NOTICE 'EL ID DE LA CATEGORIA DE PROYECTO QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.id_category_project != NEW.id_category_project)THEN
     	RAISE NOTICE 'LA CATEGORIA DE PROYECTO QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'CATEGORIA DE PROYECTO ELIMINADA';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_category_project
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.category_project
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_category_project();


INSERT INTO desarrollo.category_project VALUES(55,TRUE,FALSE,63);
UPDATE desarrollo.category_project SET social_service = FALSE WHERE id_category_project = 55;
DELETE FROM desarrollo.category_project WHERE id_category_project = 55;

SELECT * FROM desarrollo.category_project;


------------------------------------------------------------------------
-- verificar id_project

CREATE OR REPLACE FUNCTION desarrollo.modification_sponsor() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN SPONSOR ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'NUEVO SPONSOR AGREGADO';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.id_sponsor = NEW.id_sponsor)THEN
  	   	RAISE NOTICE 'CATEGORIA DE PROYECTO ACTUALIZADA';
	 ELSE
	 	RAISE NOTICE 'EL SPONSOR QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.id_sponsor != NEW.id_sponsor)THEN
     	RAISE NOTICE 'EL SPONSOR QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'SPONSOR ELIMINADO';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_sponsor
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.sponsor
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_sponsor();


INSERT INTO desarrollo.sponsor VALUES(2,'a','a@gmail.com','Activo',2,63);
UPDATE desarrollo.sponsor SET name_sponsor = 'hola' WHERE id_sponsor = 2;
DELETE FROM desarrollo.sponsor WHERE id_sponsor = 2;

SELECT * FROM desarrollo.sponsor;


------------------------------------------------------------------------
-- verificar id_sponsor

CREATE OR REPLACE FUNCTION desarrollo.modification_economic_entry() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN ENTRADA ECONOMICA ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'NUEVA ENTRADA ECONOMICA AGREGADA';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.transaction_number_economic_entry = NEW.transaction_number_economic_entry)THEN
  	   	RAISE NOTICE 'ENTRADA ECONOMICA ACTUALIZADA';
	 ELSE
	 	RAISE NOTICE 'LA ENTRADA ECONOMICA QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.transaction_number_economic_entry != NEW.transaction_number_economic_entry)THEN
     	RAISE NOTICE 'LA ENTRADA ECONOMICA QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'ENTRADA ECONOMICA ELIMINADA';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_economic_entry
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.economic_entry
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_economic_entry();


INSERT INTO desarrollo.economic_entry VALUES(1,'A','02/08/2015',1,206410512);
UPDATE desarrollo.economic_entry SET description_economic_entry = 'hola' WHERE transaction_number_economic_entry = 1;
DELETE FROM desarrollo.economic_entry WHERE transaction_number_economic_entry = 1;

SELECT * FROM desarrollo.economic_entry;


------------------------------------------------------------------------
-- verificar id_sponsor

CREATE OR REPLACE FUNCTION desarrollo.modification_other_donations() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN OTRAS DONACIONES ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'DONACION EN ESPECIE AGREGADA';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.serial_number_other_donations = NEW.serial_number_other_donations)THEN
  	   	RAISE NOTICE 'DONACION EN ESPECIE ACTUALIZADA';
	 ELSE
	 	RAISE NOTICE 'LA DONACION EN ESPECIE QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.serial_number_other_donations != NEW.serial_number_other_donations)THEN
     	RAISE NOTICE 'LA DONACION EN ESPECIE QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'DONACION EN ESPECIE ELIMINADA';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_other_donations
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.other_donations
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_other_donations();


INSERT INTO desarrollo.other_donations VALUES(20, '24/05/2009', 'A', 5, 206410512);
UPDATE desarrollo.other_donations SET description_other_donations = 'hola' WHERE serial_number_other_donations = 20;
DELETE FROM desarrollo.other_donations WHERE serial_number_other_donations = 20;

SELECT * FROM desarrollo.other_donations;


------------------------------------------------------------------------
-- verificar id_project

CREATE OR REPLACE FUNCTION desarrollo.modification_beneficiary() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN BENEFICIARIO ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'BENEFICIARIO AGREGADO';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.id_beneficiary = NEW.id_beneficiary)THEN
  	   	RAISE NOTICE 'BENEFICIARIO ACTUALIZADO';
	 ELSE
	 	RAISE NOTICE 'EL BENEFICIARIO QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.id_beneficiary != NEW.id_beneficiary)THEN
     	RAISE NOTICE 'EL BENEFICIARIO QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'BENEFICIARIO ELIMINADO';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_beneficiary
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.beneficiary
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_beneficiary();


INSERT INTO desarrollo.beneficiary VALUES(1,'L', 'M', 8,'M', 'l@gmail.com' ,63);
UPDATE desarrollo.beneficiary SET name_beneficiary = 'hola' WHERE id_beneficiary = 1; 
DELETE FROM desarrollo.beneficiary WHERE id_beneficiary = 1;

SELECT * FROM desarrollo.beneficiary;


------------------------------------------------------------------------


CREATE OR REPLACE FUNCTION desarrollo.modification_board_of_directors() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN JUNTA DIRECTIVA ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'JUNTA DIRECTIVA AGREGADA';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.id_board_of_directors = NEW.id_board_of_directors)THEN
  	   	RAISE NOTICE 'JUNTA DIRECTIVA ACTUALIZADA';
	 ELSE
	 	RAISE NOTICE 'LA JUNTA DIRECTIVA QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.id_board_of_directors != NEW.id_board_of_directors)THEN
     	RAISE NOTICE 'LA JUNTA DIRECTIVA QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'JUNTA DIRECTIVA ELIMINADA';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_board_of_directors
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.board_of_directors
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_board_of_directors();


INSERT INTO desarrollo.board_of_directors VALUES(100, 0,'A','B','C','D','E','F','G','H','I','J');
UPDATE desarrollo.board_of_directors SET president = 'hola' WHERE id_board_of_directors = 100; 
DELETE FROM desarrollo.board_of_directors WHERE id_board_of_directors = 100;

SELECT * FROM desarrollo.board_of_directors;


------------------------------------------------------------------------
--verificar id_member

CREATE OR REPLACE FUNCTION desarrollo.modification_club_meeting() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN REUNION DE CLUB ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'REUNION DE CLUB AGREGADA';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.id_club_meeting = NEW.id_club_meeting)THEN
  	   	RAISE NOTICE 'REUNION DE CLUB ACTUALIZADA';
	 ELSE
	 	RAISE NOTICE 'LA REUNION DE CLUB QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.id_club_meeting != NEW.id_club_meeting)THEN
     	RAISE NOTICE 'LA REUNION DE CLUB QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'REUNION DE CLUB ELIMINADA';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_club_meeting
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.club_meeting
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_club_meeting();


INSERT INTO desarrollo.club_meeting VALUES(100,'1','1','1','1','1',109511760);
UPDATE desarrollo.club_meeting SET hour_club_meeting = '0' WHERE id_club_meeting = 100; 
DELETE FROM desarrollo.club_meeting WHERE id_club_meeting = 100;

SELECT * FROM desarrollo.club_meeting;


------------------------------------------------------------------------
--verificar id_board_of_directors

CREATE OR REPLACE FUNCTION desarrollo.modification_national_or_international_meeting() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN REUNION NACIONAL O INTERNACIONAL ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'REUNION NACIONAL O INTERNACIONAL AGREGADA';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.id_national_or_international_meeting = NEW.id_national_or_international_meeting)THEN
  	   	RAISE NOTICE 'REUNION NACIONAL O INTERNACIONAL ACTUALIZADA';
	 ELSE
	 	RAISE NOTICE 'LA REUNION NACIONAL O INTERNACIONAL QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.id_national_or_international_meeting != NEW.id_national_or_international_meeting)THEN
     	RAISE NOTICE 'LA REUNION NACIONAL O INTERNACIONAL QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'REUNION NACIONAL O INTERNACIONAL ELIMINADA';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_national_or_international_meeting
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.national_or_international_meeting
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_national_or_international_meeting();


INSERT INTO desarrollo.national_or_international_meeting VALUES(100, '0', 'a', 'a', 'a', 02);
UPDATE desarrollo.national_or_international_meeting SET attendance_national_or_international_meeting = '1' WHERE id_national_or_international_meeting = 100; 
DELETE FROM desarrollo.national_or_international_meeting WHERE id_national_or_international_meeting = 100;

SELECT * FROM desarrollo.national_or_international_meeting;


------------------------------------------------------------------------
--verificar id_CLUB

CREATE OR REPLACE FUNCTION desarrollo.modification_bill_payment() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN PAGO DE FACTURAS ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'REGISTRO DE PAGO DE FACTURAS AGREGADO';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.registry_number_bill_payment = NEW.registry_number_bill_payment)THEN
  	   	RAISE NOTICE 'REGISTRO DE PAGO DE FACTURAS ACTUALIZADO';
	 ELSE
	 	RAISE NOTICE 'EL REGISTRO DE PAGO DE FACTURAS QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.registry_number_bill_payment != NEW.registry_number_bill_payment)THEN
     	RAISE NOTICE 'EL REGISTRO DE PAGO DE FACTURAS QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'REGISTRO DE PAGO DE FACTURAS ELIMINADO';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_bill_payment
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.bill_payment
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_bill_payment();


INSERT INTO desarrollo.bill_payment VALUES(1, '1', 1, '1', '1', 1, 3002045068);
UPDATE desarrollo.bill_payment SET amount_bill_payment = 0 WHERE registry_number_bill_payment = '1'; 
DELETE FROM desarrollo.bill_payment WHERE registry_number_bill_payment = '1';

SELECT * FROM desarrollo.bill_payment;


------------------------------------------------------------------------
--verificar id_board_of_directors

CREATE OR REPLACE FUNCTION desarrollo.modification_bill_payment() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN PAGO DE FACTURAS ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'REGISTRO DE PAGO DE FACTURAS AGREGADO';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.registry_number_bill_payment = NEW.registry_number_bill_payment)THEN
  	   	RAISE NOTICE 'REGISTRO DE PAGO DE FACTURAS ACTUALIZADO';
	 ELSE
	 	RAISE NOTICE 'EL REGISTRO DE PAGO DE FACTURAS QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.registry_number_bill_payment != NEW.registry_number_bill_payment)THEN
     	RAISE NOTICE 'EL REGISTRO DE PAGO DE FACTURAS QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'REGISTRO DE PAGO DE FACTURAS ELIMINADO';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_bill_payment
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.bill_payment
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_bill_payment();


INSERT INTO desarrollo.bill_payment VALUES(1, '1', 1, '1', '1', 1, 3002045068);
UPDATE desarrollo.bill_payment SET amount_bill_payment = 0 WHERE registry_number_bill_payment = '1'; 
DELETE FROM desarrollo.bill_payment WHERE registry_number_bill_payment = '1';

SELECT * FROM desarrollo.bill_payment;


------------------------------------------------------------------------
--verificar id_club

CREATE OR REPLACE FUNCTION desarrollo.modification_payment() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN PAGOS ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'REGISTRO DE PAGOS AGREGADO';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.registry_number_payment = NEW.registry_number_payment)THEN
  	   	RAISE NOTICE 'REGISTRO DE PAGOS ACTUALIZADO';
	 ELSE
	 	RAISE NOTICE 'EL REGISTRO DE PAGOS QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.registry_number_payment != NEW.registry_number_payment)THEN
     	RAISE NOTICE 'EL REGISTRO DE PAGOS QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'REGISTRO DE PAGOS ELIMINADO';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_payment
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.payment
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_payment();


INSERT INTO desarrollo.payment VALUES(20,'0','A',1,'S',3002674149);
UPDATE desarrollo.payment SET amount_payment = 0 WHERE registry_number_payment = '21'; 
DELETE FROM desarrollo.payment WHERE registry_number_payment = '21';

SELECT * FROM desarrollo.payment;


------------------------------------------------------------------------
--verificar id_club

CREATE OR REPLACE FUNCTION desarrollo.modification_payment_to_national() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN PAGOS A NACIONAL ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'REGISTRO DE PAGOS A NACIONAL AGREGADO';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.registry_number_payment_national = NEW.registry_number_payment_national)THEN
  	   	RAISE NOTICE 'REGISTRO DE PAGOS A NACIONAL ACTUALIZADO';
	 ELSE
	 	RAISE NOTICE 'EL REGISTRO DE PAGOS A NACIONAL QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.registry_number_payment_national != NEW.registry_number_payment_national)THEN
     	RAISE NOTICE 'EL REGISTRO DE PAGOS A NACIONAL QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'REGISTRO DE PAGOS A NACIONAL ELIMINADO';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_payment_to_national
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.payment_to_national
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_payment_to_national();


INSERT INTO desarrollo.payment_to_national VALUES(20,'0',0,'0',3002674149);
UPDATE desarrollo.payment_to_national SET amount_payment_to_national = 1 WHERE registry_number_payment_national = '20'; 
DELETE FROM desarrollo.payment_to_national WHERE registry_number_payment_national = '20';

SELECT * FROM desarrollo.payment_to_national;


------------------------------------------------------------------------
--verificar id_club

CREATE OR REPLACE FUNCTION desarrollo.modification_volunteer() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN VOLUNTARIO ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'VOLUNTARIO AGREGADO';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.id_volunteer = NEW.id_volunteer)THEN
  	   	RAISE NOTICE 'VOLUNTARIO ACTUALIZADO';
	 ELSE
	 	RAISE NOTICE 'EL VOLUNTARIO QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.id_volunteer != NEW.id_volunteer)THEN
     	RAISE NOTICE 'EL VOLUNTARIO QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'VOLUNTARIO ELIMINADO';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_volunteer
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.volunteer
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_volunteer();


INSERT INTO desarrollo.volunteer VALUES(1,'A','M',5,'m@gmail.com',3002045068);
UPDATE desarrollo.volunteer SET name_volunteer = 'aaaaaaaaa' WHERE id_volunteer = '1'; 
DELETE FROM desarrollo.volunteer WHERE id_volunteer = '1';

SELECT * FROM desarrollo.volunteer;


------------------------------------------------------------------------
--verificar id_club

CREATE OR REPLACE FUNCTION desarrollo.modification_social_media() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN REDES SOCIALES ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'RED SOCIAL AGREGADA';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.id_social_media = NEW.id_social_media)THEN
  	   	RAISE NOTICE 'RED SOCIAL ACTUALIZADA';
	 ELSE
	 	RAISE NOTICE 'LA RED SOCIAL QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.id_social_media != NEW.id_social_media)THEN
     	RAISE NOTICE 'LA RED SOCIAL QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'RED SOCIAL ELIMINADA';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_social_media
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.social_media
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_social_media();


INSERT INTO desarrollo.social_media VALUES(50, 'A', 1, 3002674149);
UPDATE desarrollo.social_media SET social_network = 'aaaaaaaaa' WHERE id_social_media = '50'; 
DELETE FROM desarrollo.social_media WHERE id_social_media = '50';

SELECT * FROM desarrollo.social_media;


------------------------------------------------------------------------


CREATE OR REPLACE FUNCTION desarrollo.modification_event() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN EVENTO ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'EVENTO AGREGADO';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.id_event = NEW.id_event)THEN
  	   	RAISE NOTICE 'EVENTO ACTUALIZADO';
	 ELSE
	 	RAISE NOTICE 'EL EVENTO QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.id_event != NEW.id_event)THEN
     	RAISE NOTICE 'EL EVENTO QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'EVENTO ELIMINADO';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_event
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.event
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_event();


INSERT INTO desarrollo.event VALUES(20,'0','0','0',0);
UPDATE desarrollo.event SET name_event = 'aaaaaaaaa' WHERE id_event = '20'; 
DELETE FROM desarrollo.event WHERE id_event = '20';

SELECT * FROM desarrollo.event;


------------------------------------------------------------------------
--verificar id_event

CREATE OR REPLACE FUNCTION desarrollo.modification_camaraderie() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN CAMARADERIA ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'CAMARADERIA AGREGADA';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF (OLD.id_camaraderie = NEW.id_camaraderie)THEN
  	   	RAISE NOTICE 'CAMARADERIA ACTUALIZADA';
	 ELSE
	 	RAISE NOTICE 'LA CAMARADERIA QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF(OLD.id_camaraderie != NEW.id_camaraderie)THEN
     	RAISE NOTICE 'LA CAMARADERIA QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'CAMARADERIA ELIMINADA';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_camaraderie
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.camaraderie
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_camaraderie();


INSERT INTO desarrollo.camaraderie VALUES(20, 'a', 'a', 0, 1 );
UPDATE desarrollo.camaraderie SET event_club_camaraderie = 'aaaaaaaaa' WHERE id_camaraderie = '21'; 
DELETE FROM desarrollo.camaraderie WHERE id_camaraderie = '20';

SELECT * FROM desarrollo.camaraderie;


------------------------------------------------------------------------


CREATE OR REPLACE FUNCTION desarrollo.modification_attend_member_event() RETURNS TRIGGER 
AS
$$
BEGIN
   RAISE NOTICE 'TRIGGER LLAMADO EN LA TABLA INTERMEDIA DE ASISTENCIA DE MIEMBROS A EVENTOS ANTES DE UN %', TG_OP;   
   IF (TG_OP ='INSERT') THEN		
	 RAISE NOTICE 'ASISTENCIA AGREGADA';
   RETURN NEW;
   END IF;

   IF (TG_OP = 'UPDATE') THEN
   	 IF OLD.id_member = NEW.id_member AND OLD.id_event = NEW.id_event THEN
  	   	RAISE NOTICE 'ASISTENCIA ACTUALIZADA';
	 ELSE
	 	RAISE NOTICE 'LA ASISTENCIA QUE DESEA MODIFICAR NO EXISTE';
   	 END IF;
	 RETURN NEW;
   END IF;
  
   IF (TG_OP ='DELETE') THEN
     IF  OLD.id_member != NEW.id_member AND OLD.id_event != NEW.id_event THEN
     	RAISE NOTICE 'LA ASISTENCIA QUE DESEA ELIMINAR NO EXISTE';
	 ELSE
	 	RAISE NOTICE 'ASISTENCIA ELIMINADA';
     END IF;
	 RETURN OLD;
  END IF;
END
$$ LANGUAGE 'plpgsql';

CREATE TRIGGER trigger_modification_attend_member_event
BEFORE INSERT OR UPDATE OR DELETE 
ON desarrollo.attend_member_event
FOR EACH ROW
EXECUTE PROCEDURE desarrollo.modification_attend_member_event();


INSERT INTO desarrollo.attend_member_event VALUES(206110897, 1);
UPDATE desarrollo.attend_member_event SET id_member WHERE id_member = '21'; 
DELETE FROM desarrollo.attend_member_event WHERE id_event = '20';

SELECT * FROM desarrollo.camaraderie;






