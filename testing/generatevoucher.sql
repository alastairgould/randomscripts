DECLARE	@return_value int,
		@VoucherId int,
		@VoucherCode NVARCHAR(16)

SET @VoucherCode = SUBSTRING(REPLACE(CONVERT(NVARCHAR(50), NEWID()), '-', ''), 8, 16)

INSERT INTO [dbo].[Voucher]
           ([VoucherCode]
           ,[ToName]
           ,[FromName]
           ,[ToEmail]
           ,[PersonalMessage]
           ,[ActivationDate]
           ,[ExpiryPeriod]
           ,[AmountUsed]
           ,[AmountTotal]
           ,[VoucherStyleId]
           ,[VoucherStatusId]
           ,[ScheduledDate]
           ,[CustomerCareNote]
           ,[HasAlertedExpiration]
           ,[msrepl_tran_version]
           ,[ExpiryDate]
           ,[ExternalRef]
           ,[CurrencyCode]
           ,[Country])
     VALUES
           (@VoucherCode
           ,N'ToTestUser'
           ,N'FromTestUser'
           ,N'TestUser@test.com'
           ,N'Have a free legacy voucher!'
           ,'2017-11-02'
           ,24
           ,0
           ,10
           ,10
           ,3
           ,'2017-11-02'
           ,N''
           ,0
           ,NEWID()
           ,'2019-11-02'
           ,NULL
           ,'GBP'
           ,'GB')

SELECT * FROM Voucher WHERE VoucherId = SCOPE_IDENTITY()

SET @VoucherCode = SUBSTRING(REPLACE(CONVERT(NVARCHAR(50), NEWID()), '-', ''), 8, 16)

INSERT INTO [dbo].[Voucher]
           ([VoucherCode]
           ,[ToName]
           ,[FromName]
           ,[ToEmail]
           ,[PersonalMessage]
           ,[ActivationDate]
           ,[ExpiryPeriod]
           ,[AmountUsed]
           ,[AmountTotal]
           ,[VoucherStyleId]
           ,[VoucherStatusId]
           ,[ScheduledDate]
           ,[CustomerCareNote]
           ,[HasAlertedExpiration]
           ,[msrepl_tran_version]
           ,[ExpiryDate]
           ,[ExternalRef]
           ,[CurrencyCode]
           ,[Country])
     VALUES
           (@VoucherCode
           ,N'ToTestUser'
           ,N'FromTestUser'
           ,N'TestUser@Asos.com'
           ,N'Have a free legacy voucher!'
           ,'2017-11-02'
           ,24
           ,0
           ,10
           ,10
           ,3
           ,'2017-11-02'
           ,N''
           ,0
           ,NEWID()
           ,'2019-11-02'
           ,NULL
           ,'GBP'
           ,'GB')

SELECT * FROM Voucher WHERE VoucherId = SCOPE_IDENTITY()
