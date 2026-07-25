USE SalesDW;
GO

BULK INSERT Bronze.brands
FROM 'D:\Dataset\brands.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0A',
    CODEPAGE = '65001'
);



/*==============================
Load categories
==============================*/
BULK INSERT Bronze.categories
FROM 'D:\Dataset\categories.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);
SELECT COUNT(*) AS categories_rows FROM Bronze.categories;
GO

/*==============================
Load customers
==============================*/
BULK INSERT Bronze.customers
FROM 'D:\Dataset\customers.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);
SELECT COUNT(*) AS customers_rows FROM Bronze.customers;
GO

/*==============================
Load stores
==============================*/
BULK INSERT Bronze.stores
FROM 'D:\Dataset\stores.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);
SELECT COUNT(*) AS stores_rows FROM Bronze.stores;
GO

/*==============================
Load staffs
==============================*/
BULK INSERT Bronze.staffs
FROM 'D:\Dataset\staffs.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);
SELECT COUNT(*) AS staffs_rows FROM Bronze.staffs;
GO

/*==============================
Load products
==============================*/
BULK INSERT Bronze.products
FROM 'D:\Dataset\products.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);
SELECT COUNT(*) AS products_rows FROM Bronze.products;
GO

/*==============================
Load stocks
==============================*/
BULK INSERT Bronze.stocks
FROM 'D:\Dataset\stocks.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);
SELECT COUNT(*) AS stocks_rows FROM Bronze.stocks;
GO

/*==============================
Load orders
==============================*/
BULK INSERT Bronze.orders
FROM 'D:\Dataset\orders.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);
SELECT COUNT(*) AS orders_rows FROM Bronze.orders;
GO

/*==============================
Load order_items
==============================*/
BULK INSERT Bronze.order_items
FROM 'D:\Dataset\order_items.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    CODEPAGE = '65001'
);
SELECT COUNT(*) AS order_items_rows FROM Bronze.order_items;
GO

