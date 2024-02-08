CREATE TABLE dbo.atbl_ArvidWedtstein_Goods (
    PrimKey uniqueidentifier rowguidcol not null constraint DF_atbl_ArvidWedtstein_Goods_PrimKey default NEWID(),
    CCTL bit not null constraint DF_atbl_ArvidWedtstein_Goods_CCTL DEFAULT 0,
    ID int identity(10000,1) not null,
    Created datetime2 not null constraint DF_atbl_ArvidWedtstein_Goods_Created default GETUTCDATE(),
    CreatedBy_ID int not null constraint DF_atbl_ArvidWedtstein_Goods_CreatedBy_ID default (isnull(TRY_CAST(substring(user_name(),(0),charindex('_',user_name())) AS [int]),DATABASE_PRINCIPAL_ID()*(-1))),
    Updated datetime2 not null constraint DF_atbl_ArvidWedtstein_Goods_Updated default GETUTCDATE(),
    UpdatedBy_ID int not null constraint DF_atbl_ArvidWedtstein_Goods_UpdatedBy_ID default (isnull(TRY_CAST(substring(user_name(),(0),charindex('_',user_name())) AS [int]),DATABASE_PRINCIPAL_ID()*(-1)))
constraint [UI_atbl_ArvidWedtstein_Goods_PrimKey] unique nonclustered (PrimKey),
constraint [PK_atbl_ArvidWedtstein_Goods] primary key clustered (ID)
) on [PRIMARY]
