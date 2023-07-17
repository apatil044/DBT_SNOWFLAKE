{{ config(materialized='view') }}

with data as (

   select a.ID,LAST_NAME from raw_customers a inner join raw_orders b on a.ID=b.ID


)

select *
from data