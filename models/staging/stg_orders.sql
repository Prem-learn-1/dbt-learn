SELECT 
o.orderid,o.orderdate, o.shipdate, o.shipmode, o.ordersellingprice, o.ordercostprice, o.ordersellingprice-o.ordercostprice as orderprofit,
c.customername,c.segment,c.country,
p.category,p.productname,p.subcategory,
FROM {{ ref('raw_orders') }} as o 
LEFT JOIN {{ ref('raw_customer') }} as c  ON o.customerid=c.customerid
LEFT JOIN {{ ref('raw_product') }} as p ON o.productid=p.productid

