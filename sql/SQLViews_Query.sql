CREATE VIEW v_dim_product_lookup AS 
SELECT 
pl.productkey,
pl.ProductSubcategoryKey,
pl.ProductSKU,
pl.ProductName,
pl.ModelName,
pl.ProductDescription,
pl.ProductColor,
pl.ProductStyle,
pl.ProductCost,
pl.ProductPrice,
pl.`Sku Type`,
pl.`Discount Prize` AS DiscountPrize,
psc.SubcategoryName,
psc.ProductCategoryKey,
pc.categoryname
FROM product_lookup pl
LEFT JOIN product_subcategories_lookup psc ON psc.productsubcategorykey = pl.productsubcategorykey
LEFT JOIN product_categories_lookup pc ON pc.productcategorykey = psc.productcategorykey;

CREATE VIEW v_dim_territory_lookup AS
SELECT
SalesTerritoryKey,
Region,
Country,
Continent
FROM territory_lookup;

CREATE VIEW v_dim_calendar_lookup AS
SELECT
Date,
`Day Name` AS DayName,
`Start of Week` AS StartofWeek,
`Start of Month` AS StartofMonth,
`Start of Quarter` AS StartofQuarter,
`Month Name` AS MonthName,
Month,
`Start of Year` AS StartofYear,
Year
FROM
calendar_lookup;

CREATE VIEW v_dim_customer_lookup AS
SELECT
CustomerKey,
Prefix,
FirstName,
LastName,
BirthDate,
MaritalStatus,
Gender,
EmailAddress,
AnnualIncome,
TotalChildren,
EducationLevel,
Occupation,
HomeOwner
FROM customer_lookup;

CREATE VIEW v_fact_sales AS
SELECT
OrderDate,
StockDate,
OrderNumber,
ProductKey,
CustomerKey,
TerritoryKey,
OrderLineItem,
OrderQuantity
FROM sales_data;

CREATE VIEW v_fact_returns AS
SELECT 
ReturnDate,
TerritoryKey,
ProductKey,
ReturnQuantity
FROM returns_data;

