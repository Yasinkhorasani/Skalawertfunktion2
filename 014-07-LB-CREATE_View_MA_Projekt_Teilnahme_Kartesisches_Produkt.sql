--USE [FirmaDemo]
USE [FirmaUebung];

GO

/****** Object:  View [dbo].[View_MA_Projekt_Teilnahme_Kartesisches_Produkt]    Script Date: 22.08.2022 10:57:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[View_MA_Projekt_Teilnahme_Kartesisches_Produkt]
AS
SELECT TOP (100) PERCENT 
	dbo.Kunden.Nachname AS KuNN, dbo.Kunden.Vorname AS KuVN, 
	dbo.Projekt.Projekt, dbo.Projekt.ProjektID, 
	dbo.sf_MA_Projekt_Teilnahme( dbo.Personal.PersonalID, dbo.Projekt.ProjektID) AS [Beteiligt?], 
    dbo.Personal.PersonalID, dbo.Personal.Nachname AS MaNN, dbo.Personal.Vorname AS MaVN, 
	dbo.Abteilung.Abteilung
FROM dbo.Abteilung INNER JOIN
    dbo.Personal ON dbo.Abteilung.AbteilungsID = dbo.Personal.AbteilungsID 
	CROSS JOIN -- Kartesiches Produkt, alle mögliche Kombinationen
    dbo.Kunden INNER JOIN
    dbo.Projekt ON dbo.Kunden.KundenID = dbo.Projekt.KundenID
WHERE (dbo.Projekt.Abgeschlossen = 0) 
AND   (dbo.Abteilung.Projektabteilung = 1)
ORDER BY KuNN, dbo.Projekt.ProjektID, MaNN, MaVN
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1[50] 4[25] 3) )"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 1
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Kunden"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 294
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Projekt"
            Begin Extent = 
               Top = 20
               Left = 300
               Bottom = 179
               Right = 468
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Personal"
            Begin Extent = 
               Top = 16
               Left = 673
               Bottom = 330
               Right = 840
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Abteilung"
            Begin Extent = 
               Top = 110
               Left = 983
               Bottom = 299
               Right = 1159
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
      PaneHidden = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 2460
         Width = 1500
         Width = 1725
         Width = 1500
         Width = 1500
         Width = 2340
         Width = 2775
         Width = 3390
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 6840
         Alias = 2460
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MA_Projekt_Teilnahme_Kartesisches_Produkt'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'        Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MA_Projekt_Teilnahme_Kartesisches_Produkt'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_MA_Projekt_Teilnahme_Kartesisches_Produkt'
GO


