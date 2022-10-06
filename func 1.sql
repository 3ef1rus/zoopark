DECLARE @Summ NUMERIC(10,2)
SET @Summ=dbo.GetFullSalarity('Буриличева Любовь Константиновна')
PRINT @Summ