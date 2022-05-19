#Datbase should not be created if we mention in env vaiable#
use shipping;
CREATE TABLE tracking (
    ID int,
    tracking varchar(255)
);

INSERT INTO `shipping`.`tracking`
(`ID`,
`tracking`)
VALUES
(123456,1);

INSERT INTO `shipping`.`tracking`
(`ID`,
`tracking`)
VALUES
(111111,2);
commit;
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';
#commit should be given after inserting the statements#
