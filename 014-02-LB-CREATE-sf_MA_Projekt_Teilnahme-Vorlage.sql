USE FirmaUebung;
GO
-- ==============================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE OR ALTER FUNCTION sf_MA_Projekt_Teilnahme 
(
	@PersonalID int,
	@ProjektID int
)
RETURNS bit
AS
BEGIN
	-- Declare the return variable here
	DECLARE @MA_Projekt_Teilnahme bit;

	-- Add the T-SQL statements to compute the return value here
SET @MA_Projekt_Teilnahme = 
(  SELECT TOP (100) PERCENT  dbo.Projektzuordnung.IstProjektleiter
      FROM      dbo.Personal INNER JOIN
                dbo.Projektzuordnung ON dbo.Personal.PersonalID = dbo.Projektzuordnung.PersonalID INNER JOIN
                dbo.Projekt ON dbo.Projektzuordnung.ProjektID = dbo.Projekt.ProjektID
		WHERE  Personal.PersonalID = @PersonalID AND Projektzuordnung.ProjektID = @ProjektID
	);

	RETURN @MA_Projekt_Teilnahme;

END
GO

