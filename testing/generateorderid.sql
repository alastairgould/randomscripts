DECLARE @OrderId INT = RAND(convert(varbinary, newid())) * 10000000

WHILE (SELECT Count(0) FROM Receipt WHERE ReceiptId = @OrderId) > 0
BEGIN
	print @OrderId
	SET @OrderId = RAND(convert(varbinary, newid())) * 10000000
END

SELECT @OrderId AS OrderId
