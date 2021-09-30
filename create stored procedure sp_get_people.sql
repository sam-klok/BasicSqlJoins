DROP PROCEDURE IF EXISTS sp_get_people 
go


CREATE PROCEDURE sp_get_people
AS
SELECT * FROM people
go