use cape_codd;

/*select avg(price) As WaterSportsRevenue
from order_item
where sku in
	(select sku
		from sku_data
        where department = 'water Sports');*/
        
/*SELECT distinct buyer, Department
from sku_data
where sku in
		(SELECT SKU
        FROM order_item
        WHERE OrderNumber in
			(SELECT OrderNumber
				from retail_order
					where Order*/
                    
	/*select  *
	from retail_order, order_item
	where  RETAIL_ORDER.OrderNumber = ORDER_ITEM.OrderNumber */
    
	/*select  BUYER, SKU_DATA.SKU, sku_description, sum(ExtendedPrice) As BuyerSKURevenue
	from SKU_DATA JOIN order_item
	WHERE SKU_DATA.SKU = ORDER_ITEM.SKU
	GROUP BY Buyer, SKU_DATA.SKU, SKU_Description
	order by BuyerSKURevenue ASC;*/
    
	/*SELECT *
	FROM RETAIL_ORDER JOIN ORDER_ITEM
	ON RETAIL_ORDER.OrderNumber = ORDER_ITEM.OrderNumber
	WHERE OrderYear =2017
	ORDER BY RETAIL_ORDER.OrderNumber, ORDER_ITEM.SKU;  */
    
	SELECT   *
    from sku_data
    order by sku desc;
    
    