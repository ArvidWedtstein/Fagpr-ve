CREATE OR ALTER VIEW dbo.aviw_ArvidW_MyShoppingLists
AS

SELECT 
  SL.[PrimKey], 
  SL.[CCTL], 
  SL.[ID], 
  SL.[Created], 
  SL.[CreatedBy_ID], 
  SL.[Updated], 
  SL.[UpdatedBy_ID], 
  SL.[Name],
  (SELECT TOP 1 SP.[Name] FROM dbo.stbl_System_Persons AS SP WHERE SP.ID = SL.CreatedBy_ID) AS CreatedByName,
  (SELECT COUNT(*) FROM dbo.atbl_ArvidW_ShoppingListsItems AS SLI WHERE SLI.ShoppingList_ID = SL.ID) AS ShoppingListItems,
  (SELECT COUNT(*) FROM dbo.atbl_ArvidW_ShoppingListsItems AS SLI WHERE SLI.ShoppingList_ID = SL.ID AND SLI.Checked = 1) AS ShoppingListItemsChecked,
  ISNULL(
      CAST(
        FLOOR(
          (SELECT COUNT(*) 
            FROM dbo.atbl_ArvidW_ShoppingListsItems AS SLI 
            WHERE SLI.ShoppingList_ID = SL.ID AND SLI.Checked = 1) 
            * 100.0 
            / NULLIF(
                (SELECT COUNT(*) 
                FROM dbo.atbl_ArvidW_ShoppingListsItems AS SLI 
                WHERE SLI.ShoppingList_ID = SL.ID), 
                0)
          ) AS INTEGER
        ),
      0
  ) AS PercentageCompleted,
  CAST(
    STUFF(
      (SELECT 
        SLSW.SharedUser_ID AS Person_ID, 
        SP.[Name]
      FROM dbo.atbl_ArvidW_ShoppingListsSharedWith AS SLSW
          INNER JOIN dbo.stbl_System_Persons AS SP
            ON SP.ID = SLSW.SharedUser_ID
      WHERE SLSW.ShoppingList_ID = SL.ID FOR JSON PATH), 1, 2, ' [{') AS NVARCHAR(MAX)
  ) AS SharedWithJSON,
  CAST((ISNULL(SL.[Name], '')+ISNULL((SELECT TOP 1 SP.[Name] FROM dbo.stbl_System_Persons AS SP WHERE SP.ID = SL.CreatedBy_ID), '')+STUFF(
    (
      SELECT ',' + SP.[Name]
      FROM dbo.atbl_ArvidW_ShoppingListsSharedWith AS SW
          INNER JOIN dbo.stbl_System_Persons AS SP
            ON SP.ID = SW.SharedUser_ID
      WHERE SW.ShoppingList_ID = SL.ID
    FOR XML PATH('')
  ), 1, 1, '')) AS NVARCHAR(500)) AS SearchColumn
FROM dbo.atbv_ArvidW_ShoppingLists AS SL
WHERE SL.CreatedBy_ID = dbo.sfnc_system_GetMyPersonID()
    OR EXISTS (
        SELECT 1
        FROM dbo.atbv_ArvidW_ShoppingListsSharedWith AS SW
        WHERE SW.ShoppingList_ID = SL.ID
          AND SW.SharedUser_ID = dbo.sfnc_system_GetMyPersonID()
    )
