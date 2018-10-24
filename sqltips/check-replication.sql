USE AsosBackoffice
select count(*) as CountOfRows, CHECKSUM_AGG(BINARY_CHECKSUM(*)) AS ChecksumValue from receiptlock with (NOLOCK)
select * from openquery([npeeeunkwsql02\live02checkout], 'select count(*)  as CountOfRows, CHECKSUM_AGG(BINARY_CHECKSUM(*)) AS ChecksumValue from asoscheckout.dbo.receiptlock with (NOLOCK)')
