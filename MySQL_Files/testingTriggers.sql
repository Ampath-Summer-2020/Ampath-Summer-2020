#INSERT testing
insert into status_status values (6, 'Testing',  'White', '#ffffff', 'fas fa-check-square');
insert into servestatampath.status_ticket values (30, 4, now(), '2020-06-12 14:00:00.000000', '<p>test example</p>', '', 1, 6, 145);
insert into status_subscriber values (1, 'TestName', 'testemail@domain.com', 'TestToken');
insert into status_region values (18, 'TestName', '<p>Description related to <strong>TESTNAME</strong> <em>Region</em></p>');
insert into django_migrations values (61, 'TestStatus', 'TestName', NOW());

#UPDATE testing
UPDATE status_status SET status_status.color_name = '6-TEST' WHERE status_status.id = 6;
UPDATE status_ticket SET status_ticket.action_description = 'update test' WHERE status_ticket.id = 30;
UPDATE status_subscriber SET status_subscriber.name = 'UpdatedTestName' WHERE id = 1;
UPDATE status_region SET status_region.name = 'UpdatedTestName' WHERE id = 18;
UPDATE django_migrations SET django_migrations.name = 'UpdatedTestName' WHERE id = 61;

#DELETE testing
DELETE FROM status_ticket WHERE id = 30;
DELETE FROM status_status WHERE id = 6;
DELETE FROM status_subscriber WHERE id = 1;
DELETE FROM status_region WHERE id = 18;
DELETE FROM django_migrations WHERE id = 61;

#SELECT results
SELECT * FROM status_ticket;
SELECT * FROM status_status;
SELECT * FROM status_subscriber;
SELECT * FROM status_region;
SELECT * FROM django_migrations;

#Clean Logs
DELETE FROM log_alltables WHERE id>0;
SELECT * FROM log_alltables;