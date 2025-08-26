1.
select * from customers cus
left join orders o on o.customer_id = cus.customer_id
where o.order_id is null

2.
select * from products pro
left join orders_items oi on oi.product_id = pro.product_id
where oi.product_id is null

3.
select * from products pro
left join stocks s on s.product_id = pro.product_id
where s.quantity IN (null, 0)

4.
select SUM(oi.quantity), b.brand_name, s.store_name from orders o
inner join stores s on s.store_id = o.store_id
inner join orders_items oi on oi.order_id = o.order_id
inner join products p on p.product_id = oi.product_id
inner join brands b on p.brand_id = b.brand_id
group by b.brand_name, s.store_name


5.
select * from staffs st
left join orders o on o.staff_id = st.staff_id
where o.staff_id is null
