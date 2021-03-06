CREATE TABLE IF NOT EXISTS SqlStore_Procuders_Triggers_1 (
    `Column_1` VARCHAR(115) CHARACTER SET utf8,
    `Column_2` VARCHAR(177) CHARACTER SET utf8,
    `Column_3` VARCHAR(30) CHARACTER SET utf8,
    `Column_4` VARCHAR(96) CHARACTER SET utf8,
    `Column_5` VARCHAR(72) CHARACTER SET utf8,
    `Column_6` VARCHAR(30) CHARACTER SET utf8
);
INSERT INTO SqlStore_Procuders_Triggers_1 VALUES
    (NULL,NULL,NULL,NULL,NULL,NULL),
    ('SELECT job.salary','recruiter.username',' etaireia.name','job.id',' count(*) ',NULL),
    ('FROM etaireia','recruiter','job','applies WHERE job.recruiter=recruiter AND applies.job_id=job.id AND recruiter.firm=etaireia.afm ',NULL,NULL),
    ('GROUP BY job.salary','recruiter.username','etaireia.name','job.id  HAVING job.salary>=1900; ',NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    ('SELECT username','certificates','count(*)','AVG(grade)',NULL,NULL),
    (' FROM has_degree',NULL,NULL,NULL,NULL,NULL),
    (' INNER JOIN candidate ON has_degree.cand_usrname=candidate.username GROUP BY candidate.username HAVING count(*)>1;',NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (' SELECT cand_usrname',' AVG(salary)','count(*) ',NULL,NULL,NULL),
    ('FROM applies INNER JOIN job ON applies.job_id=job.id ',NULL,NULL,NULL,NULL,NULL),
    ('GROUP BY cand_usrname  ',NULL,NULL,NULL,NULL,NULL),
    ('HAVING AVG(salary)>=1800;',NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    ('SELECT name','edra','antikeim_title','position FROM etaireia',NULL,NULL),
    (NULL,'job','requires',NULL,NULL,NULL),
    ('WHERE job.id=requires.job_id AND antikeim_title LIKE ''%program%'' AND edra LIKE ''%Patra%'';',NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (' SELECT username','count(*) counter_interviews ','count(1) counter_jobs','AVG(salary)',NULL,NULL),
    ('announce_date FROM recruiter INNER JOIN interviews ON recruiter.username=interviews.recruiter_name ',NULL,NULL,NULL,NULL,NULL),
    ('INNER JOIN job ON recruiter.username=job.recruiter  GROUP BY username  HAVING job.announce_date>=2 ORDER BY 4 DESC;',NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (' DELIMITER $$ ; CREATE PROCEDURE test(IN id INT) ',NULL,NULL,NULL,NULL,NULL),
    ('BEGIN ',NULL,NULL,NULL,NULL,NULL),
    ('DECLARE exp_score INT; ',NULL,NULL,NULL,NULL,NULL),
    ('DECLARE pers_score INT; ',NULL,NULL,NULL,NULL,NULL),
    ('DECLARE edu_score INT; ',NULL,NULL,NULL,NULL,NULL),
    ('DECLARE totalscore INT; ',NULL,NULL,NULL,NULL,NULL),
    ('DECLARE cand_name VARCHAR(12); ',NULL,NULL,NULL,NULL,NULL),
    ('DECLARE logos_aporripsis VARCHAR(100); SET totalscore=exp_score+pers_score+edu_score; ',NULL,NULL,NULL,NULL,NULL),
    ('SELECT experience_score','personality_score','education_score INTO exp_score','pers_score','edu_score FROM interviews WHERE candidate_name=cand_name AND job_id=id; ',NULL),
    ('IF exp_score=0 ',NULL,NULL,NULL,NULL,NULL),
    ('THEN SET logos_aporripsis="No prior experience"; END IF; ',NULL,NULL,NULL,NULL,NULL),
    ('IF edu_score=0; ',NULL,NULL,NULL,NULL,NULL),
    ('THEN SET logos_aporripsis="Inadequate Education"; END IF; ',NULL,NULL,NULL,NULL,NULL),
    ('IF pers_score=0 THEN SET logos_aporripsis="Failed the interview"; END IF; ',NULL,NULL,NULL,NULL,NULL),
    ('SELECT cand_usrname','totalscore FROM applies INNER JOIN interviews ON applies.job_id=id AND applies.job_id=interviews.job_id AND applies.cand_usrname=interviews.candidate_name GROUP BY cand_usrname;',NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    ('DELIMITER // CREATE TRIGGER candidate_insert ',NULL,NULL,NULL,NULL,NULL),
    ('AFTER INSERT ON candidate ',NULL,NULL,NULL,NULL,NULL),
    ('FOR EACH ROW ',NULL,NULL,NULL,NULL,NULL),
    ('BEGIN ',NULL,NULL,NULL,NULL,NULL),
    ('INSERT INTO ACTIVITIES(username','1','Now()','''Nai''','''insert''','''candidate'') END// DELIMITER;'),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    ('DELIMITER // ',NULL,NULL,NULL,NULL,NULL),
    ('CREATE TRIGGER candidate_delete ',NULL,NULL,NULL,NULL,NULL),
    ('AFTER DELETE ON candidate ',NULL,NULL,NULL,NULL,NULL),
    ('FOR EACH ROW ',NULL,NULL,NULL,NULL,NULL),
    ('BEGIN ',NULL,NULL,NULL,NULL,NULL),
    ('INSERT INTO ACTIVITIES VALUES(username','1','Now()','''Nai''','''delete''','''candidate''); END// DELIMITER;'),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (' DELIMITER // ',NULL,NULL,NULL,NULL,NULL),
    ('CREATE TRIGGER candidate_update ',NULL,NULL,NULL,NULL,NULL),
    ('AFTER UPDATE ON candidate ',NULL,NULL,NULL,NULL,NULL),
    ('FOR EACH ROW ',NULL,NULL,NULL,NULL,NULL),
    ('BEGIN ',NULL,NULL,NULL,NULL,NULL),
    ('INSERT INTO ACTIVITIES VALUES(username','1','Now()','''Nai''','''update''','''candidate''); END// DELIMITER;'),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    ('DELIMITER // ',NULL,NULL,NULL,NULL,NULL),
    ('CREATE TRIGGER recruiter_insert ',NULL,NULL,NULL,NULL,NULL),
    ('AFTER INSERT ON recruiter ',NULL,NULL,NULL,NULL,NULL),
    ('FOR EACH ROW ',NULL,NULL,NULL,NULL,NULL),
    ('BEGIN ',NULL,NULL,NULL,NULL,NULL),
    ('INSERT INTO ACTIVITIES VALUES(username','1','Now()','''Nai''','''insert''','''recruiter''); END// DELIMITER;'),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    ('DELIMITER // ',NULL,NULL,NULL,NULL,NULL),
    ('CREATE TRIGGER recruiter_delete ',NULL,NULL,NULL,NULL,NULL),
    ('AFTER DELETE ON recruiter ',NULL,NULL,NULL,NULL,NULL),
    ('FOR EACH ROW ',NULL,NULL,NULL,NULL,NULL),
    ('BEGIN ',NULL,NULL,NULL,NULL,NULL),
    ('INSERT INTO ACTIVITIES VALUES(username','1','Now()','''Nai''','''delete''','''recruiter''); EMD// DELIMITER;'),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    ('DELIMITER // ',NULL,NULL,NULL,NULL,NULL),
    ('CREATE TRIGGER recruiter_update ',NULL,NULL,NULL,NULL,NULL),
    ('AFTER UPDATE ON recruiter ',NULL,NULL,NULL,NULL,NULL),
    ('FOR EACH ROW BEGIN INSERT INTO ACTIVITIES VALUES(username','1','Now()','''Nai''','''update''','''recruiter''); '),
    ('END// DELIMITER;',NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    ('DELIMITER // ',NULL,NULL,NULL,NULL,NULL),
    ('CREATE TRIGGER etaireia_insert',NULL,NULL,NULL,NULL,NULL),
    ('AFTER INSERT ON etaireia ',NULL,NULL,NULL,NULL,NULL),
    ('FOR EACH ROW BEGIN INSERT INTO ACTIVITIES VALUES(username','1','Now()','''Nai''','''insert''','''etaireia''); '),
    ('END// DELIMITER;',NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    ('DELIMITER // ',NULL,NULL,NULL,NULL,NULL),
    ('CREATE TRIGGER etaireia_update',NULL,NULL,NULL,NULL,NULL),
    ('AFTER UPDATE ON etaireia ',NULL,NULL,NULL,NULL,NULL),
    ('FOR EACH ROW BEGIN INSERT INTO ACTIVITIES VALUES(username','1','Now()','''Nai''','''update''','''etaireia''); '),
    ('END// DELIMITER;',NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    ('DELIMITER // ',NULL,NULL,NULL,NULL,NULL),
    ('CREATE TRIGGER etaireia_delete',NULL,NULL,NULL,NULL,NULL),
    ('AFTER UPDATE ON etaireia ',NULL,NULL,NULL,NULL,NULL),
    ('FOR EACH ROW BEGIN INSERT INTO ACTIVITIES VALUES(username','1','Now()','''Nai''','''delete''','''etaireia''); '),
    ('END// DELIMITER;',NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    ('DELIMITER // ',NULL,NULL,NULL,NULL,NULL),
    ('CREATE TRIGGER job_insert',NULL,NULL,NULL,NULL,NULL),
    ('AFTER INSERT ON etaireia ',NULL,NULL,NULL,NULL,NULL),
    ('FOR EACH ROW BEGIN INSERT INTO ACTIVITIES VALUES(username','1','Now()','''Nai''','''insert''','''job''); '),
    ('END// DELIMITER;',NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    ('DELIMITER // ',NULL,NULL,NULL,NULL,NULL),
    ('CREATE TRIGGER job_update',NULL,NULL,NULL,NULL,NULL),
    ('AFTER UPDATE ON job  ',NULL,NULL,NULL,NULL,NULL),
    ('FOR EACH ROW BEGIN INSERT INTO ACTIVITIES VALUES(username','1','Now()','''Nai''','''update''','''job''); '),
    ('END// DELIMITER;',NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    ('DELIMITER // ',NULL,NULL,NULL,NULL,NULL),
    ('CREATE TRIGGER job_delete',NULL,NULL,NULL,NULL,NULL),
    ('AFTER DELETE ON job  ',NULL,NULL,NULL,NULL,NULL),
    ('FOR EACH ROW BEGIN INSERT INTO ACTIVITIES VALUES(username','1','Now()','''Nai''','''delete''','''job''); '),
    ('END// DELIMITER;',NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    (NULL,NULL,NULL,NULL,NULL,NULL),
    ('DELIMITER //',NULL,NULL,NULL,NULL,NULL),
    ('CREATE TRIGGER prevent_delete AFTER DELETE ON applies',NULL,NULL,NULL,NULL,NULL),
    ('FOR EACH ROW',NULL,NULL,NULL,NULL,NULL),
    ('BEGIN',NULL,NULL,NULL,NULL,NULL),
    ('IF( SELECT submission_date FROM job WHERE applies.job_id = job.id) <NOW() THEN',NULL,NULL,NULL,NULL,NULL),
    ('SET @A = ''MHN DIAGRAPSEIS THN AITHSH'';',NULL,NULL,NULL,NULL,NULL),
    ('SELECT @A FROM applies;',NULL,NULL,NULL,NULL,NULL),
    ('END IF;',NULL,NULL,NULL,NULL,NULL),
    ('END//',NULL,NULL,NULL,NULL,NULL),
    ('DELIMITER;',NULL,NULL,NULL,NULL,NULL);
