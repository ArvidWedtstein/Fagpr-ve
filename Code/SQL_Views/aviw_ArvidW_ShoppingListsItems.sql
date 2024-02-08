CREATE OR ALTER VIEW dbo.aviw_ArvidW_ShoppingListsItems
AS

SELECT 
  SLI.[PrimKey], 
  SLI.[CCTL], 
  SLI.[ID], 
  SLI.[Created], 
  SLI.[CreatedBy_ID], 
  SLI.[Updated], 
  SLI.[UpdatedBy_ID], 
  SLI.[Checked], 
  SLI.[ShoppingList_ID], 
  SLI.[Item_ID], 
  SLI.[Amount], 
  SLI.[Unit],
  G.[Name] AS ItemName,
  G.Category AS ItemCategory,
  G.ImageUrl AS ItemImage,
  (ISNULL(G.[SearchColumn],'')+ISNULL(SLI.[Unit],'')+CAST(ISNULL(SLI.[Amount],0) AS NVARCHAR(100))) AS SearchColumn 
FROM dbo.atbv_ArvidW_ShoppingListsItems AS SLI
    INNER JOIN dbo.atbv_ArvidW_Goods AS G
      ON G.ID = SLI.Item_ID
