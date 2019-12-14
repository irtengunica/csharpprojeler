CREATE TABLE [dbo].Fruit
(
	[FruitID] NVARCHAR(15) NOT NULL , 
    [Description] NVARCHAR(MAX) NULL, 
    [NatritionalValue] NVARCHAR(200) NULL, 
    [HealthBenefites] NVARCHAR(250) NULL, 
    [Energy] NUMERIC(5, 2) NULL, 
    [Water100GR] NUMERIC(5, 2) NULL, 
    [FAT100GR] NUMERIC(5, 2) NULL, 
    [PROTINE100GR] NUMERIC(5, 2) NULL, 
    [Carbonhydrate100GR] NUMERIC(5, 2) NULL, 
    [Fiber100GR] NUMERIC(5, 2) NULL, 
    [Price] NUMERIC(5, 2) NULL, 
    CONSTRAINT [PK_Table] PRIMARY KEY ([FruitID])
)
