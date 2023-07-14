{{ config(materialized='table') }}

with source_data as (

   select a.ID,b.USER_ID,a.FIRST_NAME from raw_customers a inner join raw_orders b on a.ID=b.ID


)

select *
from source_data