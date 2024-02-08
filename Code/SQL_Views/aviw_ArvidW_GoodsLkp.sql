CREATE OR ALTER VIEW dbo.aviw_ArvidW_GoodsLkp
AS
SELECT 
    G.PrimKey, 
    G.CCTL, 
    G.ID, 
    G.Created, 
    G.CreatedBy_ID, 
    G.Updated, 
    G.UpdatedBy_ID, 
    G.[Name], 
    G.Category, 
    G.ImageUrl, 
    G.[User_ID],
    G.[SearchColumn]
FROM dbo.atbv_ArvidW_Goods AS G
WHERE G.[User_ID] = dbo.sfnc_system_GetMyPersonID()
    OR G.[User_ID] IS NULL
    OR EXISTS (
        SELECT 1
        FROM dbo.atbl_ArvidW_ShoppingListsItems AS SLI
        LEFT JOIN dbo.atbl_ArvidW_ShoppingListsSharedWith AS SW
            ON SW.ShoppingList_ID = SLI.ShoppingList_ID 
        WHERE SLI.Item_ID = G.ID
            AND SW.SharedUser_ID = dbo.sfnc_system_GetMyPersonID()
    )
