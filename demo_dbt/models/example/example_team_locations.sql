with final as (
    select * from {{ ref('teams_locations')}}
)

-- calling function from another packakge
select name, city, state, {{ dbt_utils.length('city') }} as city_length from final