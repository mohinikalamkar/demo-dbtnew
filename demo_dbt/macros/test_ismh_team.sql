{% macro test_is_mh_team(model, column_name) %}

with validation as (

    select
        {{ column_name }} as state,
        name

    from {{ model }}

),

validation_errors as (

    select
        state

    from validation
    -- if this is true, then even_field is actually odd!
    where state = 'MH' and name not in ('PW','MI')

)

select *
from validation_errors

{% endmacro %}