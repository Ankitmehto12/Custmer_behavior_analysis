use customer ;
select * from df limit 10 ;
-- what is the total revenue genrated by male vs. female customers ? 
select gender ,sum(purchase_amount) as total_revenue from df group by gender ;

-- which customers used a discount but still spent more than the average purchase amount ? 
select customer_id ,purchase_amount from df where
discount_applied = 'Yes' and purchase_amount >= (select avg(purchase_amount)from df );

-- which are the top 5 products with the higest average review rating ?
select item_purchased as product ,round(avg(review_rating),2) as 'Average product rating' from df group by product order by avg(review_rating)desc limit 5 ;

-- compare the average purchase amount between standard and express shipping .
select shipping_type ,round(avg(purchase_amount),2) from df where shipping_type in ('standard','Express') group by shipping_type ;

-- do subscribed customers spend more? compare average spend and total revenue between subscriber and non subscriber . 
select subscription_status ,count(customer_id) as total_customer ,round(avg(purchase_amount),2) as avg_spend,
round(sum(purchase_amount),2) as total_revenue from df group by subscription_status order by total_revenue,avg_spend desc ;

-- which 5 product have the highest percentage of purchase with discount applied ? 

select item_purchased,
round(100 * sum(case when discount_applied = 'Yes' then 1 else 0 end )/count(*) ,2)as discount_rate
from df
group by item_purchased
order by discount_rate desc 
limit 5 ;

-- Segment customers into new returning and loyal based on
--  their total number of previous ,and show the count of each segments.
with customer_type as (
select customer_id ,previous_purchases,
case
	when previous_purchases = 1 then 'New'
	when previous_purchases between 2 and 10 then 'Returning'
    else 'Loyal'
    end as customer_segment 
from df
)
select customer_segment ,count(*) as 'number of customers'
from customer_type
group by customer_segment ;

-- what are the top 3 most purchased product within each category ?
with item_counts as (
select category ,
item_purchased,
count(customer_id) as total_orders,
row_number() over(partition by category order by count(customer_id)desc)as item_rank
from df 
group by category,item_purchased
) 
select item_rank ,category,item_purchased,total_orders from item_counts where item_rank <= 3 ;

-- are customers who are reapeted  buyer (more the five previous purchase) also like to subscribe ?
select subscription_status,
count(customer_id)as repeted_buyer
from df
where previous_purchases > 5
group by subscription_status ;  

-- what the revenue contribution  of each  age group  ?
select age_group,sum(purchase_amount) as total_revenue 
from df group by age_group order by total_revenue desc ;