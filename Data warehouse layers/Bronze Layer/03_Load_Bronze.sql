USE SalesDW;
GO

/*==============================
Load brands
==============================*/
BULK INSERT Bronze.brands
FROM 'D:\Sales_OLAP_Analysis\Dataset\brands.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    CODEPAGE = '65001'
);
GO

/*==============================
Load categories
==============================*/
BULK INSERT Bronze.categories
FROM 'D:\Sales_OLAP_Analysis\Dataset\categories.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    CODEPAGE = '65001'
);
GO

/*==============================
Load customers
==============================*/
BULK INSERT Bronze.customers
FROM 'D:\Sales_OLAP_Analysis\Dataset\customers.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    CODEPAGE = '65001'
);
GO

/*==============================
Load stores
==============================*/
BULK INSERT Bronze.stores
FROM 'D:\Sales_OLAP_Analysis\Dataset\stores.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    CODEPAGE = '65001'
);
GO

/*==============================
Load staffs
==============================*/
BULK INSERT Bronze.staffs
FROM 'D:\Sales_OLAP_Analysis\Dataset\staffs.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    CODEPAGE = '65001'
);
GO

/*==============================
Load products
==============================*/
BULK INSERT Bronze.products
FROM 'D:\Sales_OLAP_Analysis\Dataset\products.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    CODEPAGE = '65001'
);
GO

/*==============================
Load stocks
==============================*/
BULK INSERT Bronze.stocks
FROM 'D:\Sales_OLAP_Analysis\Dataset\stocks.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    CODEPAGE = '65001'
);
GO

/*==============================
Load orders
==============================*/
BULK INSERT Bronze.orders
FROM 'D:\Sales_OLAP_Analysis\Dataset\orders.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    CODEPAGE = '65001'
);
GO

/*==============================
Load order_items
==============================*/
BULK INSERT Bronze.order_items
FROM 'D:\Sales_OLAP_Analysis\Dataset\order_items.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    CODEPAGE = '65001'
);
GO

/*==============================
Validation
==============================*/
SELECT
    (SELECT COUNT(*) FROM Bronze.brands)      AS brands,
    (SELECT COUNT(*) FROM Bronze.categories)  AS categories,
    (SELECT COUNT(*) FROM Bronze.customers)   AS customers,
    (SELECT COUNT(*) FROM Bronze.products)    AS products,
    (SELECT COUNT(*) FROM Bronze.stores)      AS stores,
    (SELECT COUNT(*) FROM Bronze.staffs)      AS staffs,
    (SELECT COUNT(*) FROM Bronze.stocks)      AS stocks,
    (SELECT COUNT(*) FROM Bronze.orders)      AS orders,
    (SELECT COUNT(*) FROM Bronze.order_items) AS order_items;
GO