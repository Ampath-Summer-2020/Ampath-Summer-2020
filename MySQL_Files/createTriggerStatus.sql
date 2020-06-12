#************ START - ALL INSERT ************
#Trigger activates when a new row is added (INSERT) into the status_ticket table
DROP TRIGGER tr_insertticketlog;
CREATE TRIGGER tr_insertticketlog
AFTER INSERT ON status_ticket
FOR EACH ROW
INSERT INTO log_alltables
SET ACTION = 'INSERT',
	table_id = NEW.id,
    user_name = USER(),
    action_date = NOW(),
    action_description = NEW.action_description,
    ticket_id = NEW.ticket_id,
    status_id = NEW.status_id
;

#Trigger activates when a new row is added (INSERT) into the status_status table
DROP TRIGGER tr_insertstatuslog;
CREATE TRIGGER tr_insertstatuslog
AFTER INSERT ON status_status
FOR EACH ROW
INSERT INTO log_alltables
SET ACTION = 'INSERT',
	table_id = NEW.id,
    user_name = USER(),
    action_date = NOW(),
    action_description = CONCAT(NEW.tag,' | ', NEW.color_name, ' | ', NEW.class_design),
    ticket_id = 0,
    status_id = 0
;

#Trigger activates when a new row is added (INSERT) into the status_subscriber table
DROP TRIGGER tr_insertsubscriberlog;
CREATE TRIGGER tr_insertsubscriberlog
AFTER INSERT ON status_subscriber
FOR EACH ROW
INSERT INTO log_alltables
SET ACTION = 'INSERT',
	table_id = NEW.id,
    user_name = USER(),
    action_date = NOW(),
    action_description = CONCAT(NEW.name, ' | ', NEW.email, ' | ', NEW.token),
    ticket_id = 0,
    status_id = 0
;

#Trigger activates when a new row is added (INSERT) into the status_subscriber table
DROP TRIGGER tr_insertregionlog;
CREATE TRIGGER tr_insertregionlog
AFTER INSERT ON status_region
FOR EACH ROW
INSERT INTO log_alltables
SET ACTION = 'INSERT',
	table_id = NEW.id,
    user_name = USER(),
    action_date = NOW(),
    action_description = CONCAT(NEW.name, ' | ', NEW.region_description),
    ticket_id = 0,
    status_id = 0
;

#Trigger activates when a new row is added (INSERT) into the django_migrations table
DROP TRIGGER tr_insertmigrationslog;
CREATE TRIGGER tr_insertmigrationslog
AFTER INSERT ON django_migrations
FOR EACH ROW
INSERT INTO log_alltables
SET ACTION = 'INSERT',
	table_id = NEW.id,
    user_name = USER(),
    action_date = NOW(),
    action_description = CONCAT(NEW.app, ' | ', NEW.name, ' | ', NEW.applied),
    ticket_id = 0,
    status_id = 0
;
#************ END - ALL INSERT ************
#************ START - ALL DELETE ************
#Trigger activates when a new row is deleted (DELETE) into the status_ticket table
DROP TRIGGER tr_deleteticketlog;
CREATE TRIGGER tr_deleteticketlog
AFTER DELETE ON status_ticket
FOR EACH ROW
INSERT INTO log_alltables
SET ACTION = 'DELETE',
	table_id = OLD.id,
    user_name = USER(),
    action_date = NOW(),
    action_description = OLD.action_description,
    ticket_id = OLD.ticket_id,
    status_id = OLD.status_id
;

#Trigger activates when a new row is deleted (DELETE) into the status_status table
DROP TRIGGER tr_deletestatuslog;
CREATE TRIGGER  tr_deletestatuslog
 AFTER DELETE ON status_status FOR EACH ROW 
    INSERT INTO log_alltables SET ACTION = 'DELETE',
    table_id = OLD.id , 
    user_name = USER() , 
    action_date = NOW() , 
    action_description = CONCAT(OLD.tag, ' ', OLD.color_name, ' ', OLD.class_design),
    ticket_id = 0,
    status_id = 0
;

#Trigger activates when a new row is deleted (DELETE) into the status_ticket table
DROP TRIGGER tr_deletesubscriberlog;
CREATE TRIGGER tr_deletesubscriberlog
AFTER DELETE ON status_subscriber
FOR EACH ROW
INSERT INTO log_alltables
SET ACTION = 'DELETE',
	table_id = OLD.id,
    user_name = USER(),
    action_date = NOW(),
    action_description = CONCAT(OLD.name, ' | ', OLD.email, ' | ', OLD.token),
    ticket_id = 0,
    status_id = 0
;

#Trigger activates when a new row is deleted (DELETE) into the status_region table
DROP TRIGGER tr_deleteregionlog;
CREATE TRIGGER tr_deleteregionlog
AFTER DELETE ON status_region
FOR EACH ROW
INSERT INTO log_alltables
SET ACTION = 'DELETE',
	table_id = OLD.id,
    user_name = USER(),
    action_date = NOW(),
    action_description = CONCAT(OLD.name, ' | ', OLD.region_description),
    ticket_id = 0,
    status_id = 0
;

#Trigger activates when a new row is deleted (DELETE) into the django_migrations table
DROP TRIGGER tr_deletemigrationslog;
CREATE TRIGGER tr_deletemigrationslog
AFTER DELETE ON django_migrations
FOR EACH ROW
INSERT INTO log_alltables
SET ACTION = 'DELETE',
	table_id = OLD.id,
    user_name = USER(),
    action_date = NOW(),
    action_description = CONCAT(OLD.app, ' | ', OLD.name, ' | ', OLD.applied),
    ticket_id = 0,
    status_id = 0
;
#************ END - ALL DELETE ************
#************ START - ALL UPDATE ************
#Trigger activates when a new row is update (UPDATE) into the status_ticket table
DROP TRIGGER tr_updateticketlog;
CREATE TRIGGER tr_updateticketlog
AFTER UPDATE ON status_ticket
FOR EACH ROW
INSERT INTO log_alltables
SET ACTION = 'UPDATE',
	table_id = NEW.id ,
    user_name = USER(),
    action_date = NOW(),
    action_description = CONCAT(OLD.action_description, ' -> ', NEW.action_description),
    ticket_id = NEW.ticket_id,
    status_id = NEW.status_id
;

#Trigger activates when a new row is update (UPDATE) into the status_status table
DROP TRIGGER tr_updatestatuslog;
CREATE TRIGGER tr_updatestatuslog
AFTER UPDATE ON status_status
FOR EACH ROW
INSERT INTO log_alltables
SET ACTION = 'UPDATE',
	table_id = NEW.id,
    user_name = USER(),
    action_date = NOW(),
    action_description = CONCAT(OLD.tag, ' -> ', NEW.tag, ' | ', OLD.color_name, ' -> ', NEW.color_name, ' | ', OLD.class_design, ' -> ', NEW.class_design),
    ticket_id = 0,
    status_id = 0
;

#Trigger activates when a new row is update (UPDATE) into the status_status table
DROP TRIGGER tr_updatesubscriberlog;
CREATE TRIGGER tr_updatesubscriberlog
AFTER UPDATE ON status_subscriber
FOR EACH ROW
INSERT INTO log_alltables
SET ACTION = 'UPDATE',
	table_id = NEW.id,
    user_name = USER(),
    action_date = NOW(),
    action_description = CONCAT(OLD.name, ' -> ', NEW.name, ' | ', OLD.email, ' -> ', NEW.email, ' | ', OLD.token, ' -> ', NEW.token),
    ticket_id = 0,
    status_id = 0
;

#Trigger activates when a new row is update (UPDATE) into the status_region table
DROP TRIGGER tr_updateregionlog;
CREATE TRIGGER tr_updateregionlog
AFTER UPDATE ON status_region
FOR EACH ROW
INSERT INTO log_alltables
SET ACTION = 'UPDATE',
	table_id = NEW.id,
    user_name = USER(),
    action_date = NOW(),
    action_description = CONCAT(OLD.name, ' -> ', NEW.name, ' | ', OLD.region_description, ' -> ', NEW.region_description),
    ticket_id = 0,
    status_id = 0
;

#Trigger activates when a new row is update (UPDATE) into the django_migrations table
DROP TRIGGER tr_updatemigrationslog;
CREATE TRIGGER tr_updatemigrationslog
AFTER UPDATE ON django_migrations
FOR EACH ROW
INSERT INTO log_alltables
SET ACTION = 'UPDATE',
	table_id = NEW.id,
    user_name = USER(),
    action_date = NOW(),
    action_description = CONCAT(OLD.app, ' -> ', NEW.app, ' | ', OLD.name, ' -> ', NEW.name, ' | ', OLD.applied, ' -> ', NEW.applied),
    ticket_id = 0,
    status_id = 0
;
#************ END - ALL UPDATE ************