--Get all authors
SELECT 
    First_Name,
    Last_Name,
    Bio
FROM Author;

-- Get the total amount of money customers spent in an order
SELECT 
    CU.First_Name,
    CU.Last_Name,
    SUM(CO.Total_Cost) AS Total_Spent 
FROM Customer CU
JOIN Customer_Orders CO ON CU.Customer_ID = CO.Customer_ID
GROUP BY  CU.First_Name, CU.Last_Name ORDER BY Total_Spent DESC;

--Average price by genre
SELECT 
    b.Genre,
    AVG(b.Price) AS Average_Price
FROM Book b
GROUP BY Genre
ORDER BY Average_Price DESC;

--Most popular book 
--I had to look up how to limit the results to 3 because having wasn't
--The right use case for this
SELECT B.Title,
    COUNT(C.Order_ID) AS Order_Count FROM Book B
JOIN Cart C ON B.ISBN = C.ISBN 
GROUP BY B.Title ORDER BY Order_Count DESC
FETCH FIRST 3 ROWS ONLY;
