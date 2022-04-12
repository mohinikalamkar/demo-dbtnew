with final as (
    select * from {{ ref('teams_locations')}}
)

select * from final