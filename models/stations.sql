{{
  config(
    materialized='table'
  )
}}

with stations as (

    select
        call_sign,
        short_common_name

    from public.core_station
),
final as (
select
stations.call_sign,
stations.short_common_name
from stations

)
select * from final