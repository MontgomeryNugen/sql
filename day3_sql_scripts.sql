SELECT * -- ProductID, code, Description, ListPrice 
  FROM product
  WHERE ListPrice = 57.50
  AND code = 'java';
  
select * from product
 where ListPrice > 55;
 
SELECT * FROM product
 order by ListPrice desc;
 
SELECT product.ProductID, product.Code, product.Description, product.ListPrice  
  FROM product as pdt;

