--====RATA-RATA UMUR CUSTOMER MARITAL STATUS
--select "Marital Status", round(avg(age),2) as rata_rata_umur
--from (
--	select c.age, c."Marital Status" 
--	from public."transaction" as t
--	left join public.customer as c on t.customerid = c.customerid 
--	) as tb
--group by "Marital Status"


--====RATA-RATA UMUR CUSTOMER DARI GENDER
--select gender, round(avg(age),2) as rata_rata_umur
--from (
--	select c.age, c.gender
--	from public."transaction" as t
--	left join public.customer as c on t.customerid = c.customerid 
--	) as tb
--group by gender

--====MOST QUANTITY STORE 
--select storename, sum(qty) as total
--from (
--	select t.qty, s.storename
--	from "transaction" t 
--	left join store s on t.storeid = s.storeid 
--	) as tb
--group by storename
--order by 2 desc
--limit 1
	
--====MOST REVENUE PRODUCT
select "Product Name", sum(totalamount) as total
from (
	select t.totalamount , p."Product Name"
	from "transaction" t 
	left join product p on t.productid  = p.productid  
	) as tb
group by "Product Name"
order by 2 desc
limit 1





	
	
	
	