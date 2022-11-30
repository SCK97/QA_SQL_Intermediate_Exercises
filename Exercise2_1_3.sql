SELECT VendorName, PhoneNumber, 'Vendor' AS ContactType
FROM dbo.Vendor
UNION ALL
SELECT TrainerName, PhoneNumber, 'Trainer' AS ContactType
FROM dbo.Trainer