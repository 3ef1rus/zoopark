use zoopark
DECLARE @Summ NUMERIC(10)
SET @Summ=dbo.GetFullSalarity('Буриличева Любовь Константиновна')
PRINT @Summ