create table P(AID INT)
create table R(AID INT)
INSERT INTO P VALUES (1),(1),(1),(NULL)
INSERT INTO R VALUES (1),(1),(1),(1),(NULL),(NULL)

SELECT * FROM P FULL OUTER JOIN R ON P.AID=R.AID

TRUNCATE TABLE P