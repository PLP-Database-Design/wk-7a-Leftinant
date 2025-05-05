Question One
CREATE TABLE ProductDetail (
    OrderID INT,
    CustomerName VARCHAR(255),
    Product VARCHAR(255)
);

INSERT INTO ProductDetail (OrderID, CustomerName, Product)
SELECT
    OrderID,
    CustomerName,
    TRIM(value) AS Product
FROM
    ProductDetail
CROSS APPLY
    STRING_SPLIT(Products, ',');
