DECLARE	@return_value int,
		@VoucherId int,
		@VoucherCode NVARCHAR(16)

DECLARE @CustomerId INT = RAND(convert(varbinary, newid())) * 10000000

WHILE (SELECT Count(0) FROM VoucherCustomer WHERE CustomerId = @CustomerId) > 0
BEGIN
	print @CustomerId
	SET @CustomerId = RAND(convert(varbinary, newid())) * 10000000
END

SELECT @CustomerId AS CustomerId
