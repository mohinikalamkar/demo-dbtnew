with source_daily_page_metrics as (
    select * from {{ source('snowflake_sample_fb_data', 'DAILY_PAGE_METRICS_BY_ACTION_TYPE') }}
),

final as (
    select * from source_daily_page_metrics
)

select * from final 