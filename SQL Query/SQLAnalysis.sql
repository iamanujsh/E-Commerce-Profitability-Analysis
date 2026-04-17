
USE Analyst_Builder

select * from orders

/* Group orders by product category.
Calculate total revenue, total costs, total profit, and profit margin for each.
Identify the top and bottom performers.
*/

select primary_category, 
		SUM(net_revenue),
	   SUM(total_costs), 
	   SUM(profit) , 
	   CAST(SUM(profit) / SUM(net_revenue) * 100 as decimal(10,2)) [profit_margin]
from orders
group by primary_category

/* 
Group by sales channel.
Compare average order value, average profit, and return rate across channels.
*/

select channel , 
		CAST(AVG(gross_revenue) AS DECIMAL(10,2)) [average_order_value], 
		CAST(AVG(profit) as DECIMAL(10,2)) [average_profit] ,
		CAST(SUM(CAST(returned as INT)) * 1.0 / COUNT(order_id) * 100 as decimal(10,2)) [return_rate]
from orders
group by channel

/*
Factor in platform fees for Marketplace and Social Commerce.
*/

select channel , CAST( AVG(platform_fee) AS decimal(10,2)) [average_platfrom_fee]
from orders
group by channel
having channel in ('Marketplace' , 'Social Commerce')

/*
Analyze the marketing spend dataset.
Calculate ROAS, cost per acquisition, and cost per click by platform.
Identify which platforms are underperforming.
*/

select platform, 
		 CAST(AVG(roas) as DECIMAL(10,2)) [average_roas], 
		 CAST(AVG(cpc) as DECIMAL(10,2)) [average_cpc], 
		  CAST(AVG(cpa) as DECIMAL(10,2)) [average_cpa]
from marketing_spend
group by platform

/*
What is the average profit margin by product category? Which categories are the most and least profitable, 
and what is driving the difference (product cost, shipping, returns, or discounts)?
*/

select primary_category , 
	   SUM(profit) / SUM(net_revenue) * 100 [profit_margin],
	   AVG(product_cost) [avg_product_cost], 
	   AVG(shipping_cost) [avg_shipping_cost], 
	   AVG(discount_amount) [avg_discount_amount],
	   SUM(CAST(returned as INT)) * 1.0 / COUNT(order_id) * 100 [return_rate]
from orders
group by primary_category

/*
How does profitability differ across sales channels (Website, Mobile App, Marketplace, Social Commerce)? 
Which channel has the best and worst profit per order after accounting for platform fees?
*/

select channel , CAST(SUM(profit) / COUNT(order_id) as decimal(10,2)) [profit_per_order]
from orders
group by channel

/*
What is the return rate by category
Estimate how much total revenue was lost to returns over the analysis period.
*/

select primary_category , 
		SUM(cast(returned as INT)) * 1.0 / COUNT(order_id) * 100 , 
		SUM(CASE WHEN returned = 1 THEN gross_revenue ELSE 0 END)
from orders
group by primary_category

/*
What is the return rate by channel
Estimate how much total revenue was lost to returns over the analysis period.
*/

select channel , sum(cast(returned as INT)) * 1.0 / COUNT(order_id) * 100 , 
			SUM(CASE WHEN returned = 1 THEN gross_revenue ELSE 0 END)
from orders
group by channel


/*
Analyze the marketing spend data: Which advertising platform delivers the best ROAS (Return on Ad Spend)? 
Are there any platforms where the company is spending money but not getting a positive return?
*/

select platform , AVG(roas) [average_roas]
from marketing_spend
group by platform








































