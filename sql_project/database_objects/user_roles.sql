USE AUTOBATTLER;



-- CREAREMOS DOS AREAS:
DROP ROLE IF EXISTS dev , qa ;
CREATE ROLE dev , qa ;

-- OTORAREMOS LOS PERMISOS
GRANT ALL ON AUTOBATTLER.* TO dev;
GRANT SELECT ON AUTOBATTLER.* TO qa;
GRANT INSERT, UPDATE, DELETE ON AUTOBATTLER.* TO dev;


-- CREAREMOS USUARIOS

-- DEV

DROP  USER IF EXISTS   'jose'@'%' ,
    'maria'@'%' ,
    'jesus'@'%',
    'lucifer'@'%',
    'gaspar'@'%'
    ;

CREATE USER 'jose'@'%' IDENTIFIED BY '1234';
CREATE USER 'maria'@'%' IDENTIFIED BY '1234';
CREATE USER 'jesus'@'%' IDENTIFIED BY '1234';

-- QA
CREATE USER 'lucifer'@'%' IDENTIFIED BY '4321';
CREATE USER 'gaspar'@'%' IDENTIFIED BY '4321';


-- OTORGARLES ROLES
GRANT dev TO 'jose'@'%' ;
GRANT dev TO 'maria'@'%' ;
GRANT dev TO 'jesus'@'%';

GRANT qa TO 'lucifer'@'%';
GRANT qa TO 'gaspar'@'%';

SET DEFAULT ROLE qa TO 'lucifer'@'%';

FLUSH PRIVILEGES;

-- VERIFICACION DE PERMISOS

SHOW GRANTS FOR 'maria'@'%' ;
SHOW GRANTS FOR 'lucifer'@'%' ;









