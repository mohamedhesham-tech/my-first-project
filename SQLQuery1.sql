USE [CustomerBehaviorDB]

SELECT COUNT(DISTINCT [Customer ID]) AS TotalCustomers
FROM [dbo].[shopping_behavior_updated];






SELECT [Subscription Status], COUNT(*) AS PurchaseCount
FROM [dbo].[shopping_behavior_updated]
GROUP BY [Subscription Status];



SELECT [Item Purchased], COUNT(*) AS PurchaseCount
FROM [dbo].[shopping_behavior_updated]
GROUP BY [Item Purchased]
ORDER BY PurchaseCount DESC
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;  



SELECT [Payment Method], COUNT(*) AS TotalPurchases
FROM [dbo].[shopping_behavior_updated]
GROUP BY [Payment Method];






SELECT Location, COUNT(*) AS CustomerCount
FROM [dbo].[shopping_behavior_updated]
GROUP BY Location;



SELECT Size, COUNT(*) AS SizeCount
FROM [dbo].[shopping_behavior_updated]
GROUP BY Size
ORDER BY SizeCount DESC
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;



SELECT Category, SUM(CASE WHEN [Discount Applied] = 'Yes' THEN 1 ELSE 0 END) AS TotalDiscounts
FROM [dbo].[shopping_behavior_updated]
GROUP BY Category;

SELECT [Payment Method], [Frequency of Purchases], COUNT(*) AS TotalPurchases
FROM [dbo].[shopping_behavior_updated]
GROUP BY [Payment Method], [Frequency of Purchases];


SELECT [Item Purchased], MAX([Review Rating]) AS HighestReviewRating
FROM [dbo].[shopping_behavior_updated]
GROUP BY [Item Purchased]
ORDER BY HighestReviewRating DESC;


SELECT Season, COUNT(*) AS TotalItemsPurchased
FROM [dbo].[shopping_behavior_updated]
GROUP BY Season;


SELECT Location, [Shipping Type], COUNT(*) AS TotalPurchases
FROM [dbo].[shopping_behavior_updated]
GROUP BY Location, [Shipping Type];


SELECT Color, COUNT(*) AS ColorCount
FROM [dbo].[shopping_behavior_updated]
GROUP BY Color
ORDER BY ColorCount DESC
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;  



SELECT [Shipping Type], COUNT(*) AS TotalPurchases
FROM [dbo].[shopping_behavior_updated]
GROUP BY [Shipping Type];



SELECT COUNT(*) AS TotalItemsWithDiscounts
FROM [dbo].[shopping_behavior_updated]
WHERE [Discount Applied] = 'Yes';

SELECT [Promo Code Used], COUNT(*) AS TotalPurchases
FROM [dbo].[shopping_behavior_updated]
GROUP BY [Promo Code Used];




SELECT Gender, AVG(CASE
    WHEN [Frequency of Purchases] = 'Weekly' THEN 52
    WHEN [Frequency of Purchases] = 'Fortnightly' THEN 26
    WHEN [Frequency of Purchases] = 'Monthly' THEN 12
    WHEN [Frequency of Purchases] = 'Every 3 Months' THEN 4
    WHEN [Frequency of Purchases] = 'Quarterly' THEN 4
    WHEN [Frequency of Purchases] = 'Annually' THEN 1
    ELSE 0 END) AS AverageFrequency
FROM [dbo].[shopping_behavior_updated]
GROUP BY Gender;





















