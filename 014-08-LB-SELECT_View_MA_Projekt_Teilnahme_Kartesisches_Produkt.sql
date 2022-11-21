/****** Skript für SelectTopNRows-Befehl aus SSMS ******/
SELECT *
  FROM [FirmaUebung].[dbo].[View_MA_Projekt_Teilnahme_Kartesisches_Produkt]
  ORDER BY [KuNN],[Projekt],[MaNN],[MaVN];
  
SELECT *
  FROM [FirmaUebung].[dbo].[View_MA_Projekt_Teilnahme_Kartesisches_Produkt]
  WHERE [Projekt] = 'Feuerkelch'
  AND [Abteilung] IN ('Forschung und Entwicklung', 'Testlabor')
  ORDER BY [KuNN],[Projekt],[MaNN],[MaVN];