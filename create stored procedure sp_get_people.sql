DROP PROCEDURE IF EXISTS sp_get_people 
go


CREATE PROCEDURE [dbo].[sp_get_people]
AS
-- stored procedure created by Sam Klok
-- to run
-- exec dbo.sp_get_people
SELECT * FROM people
go

