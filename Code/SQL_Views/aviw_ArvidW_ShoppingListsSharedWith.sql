CREATE OR ALTER VIEW dbo.aviw_ArvidW_ShoppingListsSharedWith
AS

SELECT 
	SLSW.[PrimKey],
	SLSW.[CCTL], 
	SLSW.[ID], 
	SLSW.[Created], 
	SLSW.[CreatedBy_ID],
	SLSW.[Updated], 
	SLSW.[UpdatedBy_ID], 
	SLSW.[SharedUser_ID], 
	SLSW.[ShoppingList_ID],
	P.[Name]
FROM dbo.atbv_ArvidW_ShoppingListsSharedWith AS SLSW
	INNER JOIN dbo.stbl_System_Persons AS P
	  ON P.ID = SLSW.SharedUser_ID
