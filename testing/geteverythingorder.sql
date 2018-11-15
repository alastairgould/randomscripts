USE [AsosBackoffice]

DECLARE @ReceiptId INT = 320215874

SELECT *
FROM Receipt
WHERE BaseReceiptId = @ReceiptId

SELECT *
FROM ReceiptComment
WHERE ReceiptId = @ReceiptId

SELECT *
FROM VoidHeader
WHERE ReceiptId = @ReceiptId

SELECT *
FROM VoidItem
WHERE VoidHeaderId = (SELECT VoidHeaderId FROM VoidHeader WHERE ReceiptId = @ReceiptId)

SELECT *
FROM PaymentLedger
WHERE ReceiptId = @ReceiptId

SELECT *
FROM PayPalLedger
WHERE ReceiptId = @ReceiptId

SELECT rv.* 
FROM ReceiptVoucher rv 
INNER JOIN Receipt r 
ON r.ReceiptId = rv.ReceiptId 
WHERE r.BaseReceiptId = @ReceiptId

SELECT *
FROM Voucher
WHERE VoucherId IN (SELECT VoucherId FROM ReceiptVoucher rv INNER JOIN Receipt r ON r.ReceiptId = rv.ReceiptId WHERE r.BaseReceiptId = @ReceiptId)
