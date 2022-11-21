USE [FirmaUebung]
GO

/****** Object:  View [dbo].[MA_Projekt_Teilnahme]    Script Date: 12.11.2022 18:04:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


SELECT        TOP (100) PERCENT dbo.Projektzuordnung.ProjektID, dbo.Projektzuordnung.PersonalID, dbo.Personal.Vorname, dbo.Personal.Nachname,
dbo.Projekt.Projekt, dbo.Projektzuordnung.IstProjektleiter
FROM            dbo.Personal INNER JOIN
                dbo.Projektzuordnung ON dbo.Personal.PersonalID = dbo.Projektzuordnung.PersonalID INNER JOIN
                dbo.Projekt ON dbo.Projektzuordnung.ProjektID = dbo.Projekt.ProjektID
ORDER BY dbo.Personal.Vorname, dbo.Personal.Nachname


SELECT        TOP (100) PERCENT 
dbo.Projekt.Projekt, dbo.Projektzuordnung.IstProjektleiter
FROM            dbo.Personal INNER JOIN
                dbo.Projektzuordnung ON dbo.Personal.PersonalID = dbo.Projektzuordnung.PersonalID INNER JOIN
                dbo.Projekt ON dbo.Projektzuordnung.ProjektID = dbo.Projekt.ProjektID
ORDER BY dbo.Personal.Vorname, dbo.Personal.Nachname


SELECT        TOP (100) PERCENT  dbo.Projektzuordnung.IstProjektleiter
FROM            dbo.Personal INNER JOIN
                dbo.Projektzuordnung ON dbo.Personal.PersonalID = dbo.Projektzuordnung.PersonalID INNER JOIN
                dbo.Projekt ON dbo.Projektzuordnung.ProjektID = dbo.Projekt.ProjektID



GO