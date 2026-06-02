{{ config(materialized='table') }}

with source_data as (

    select
        1 as patient_id,
        'John' as first_name,
        'Smith' as last_name,
        'Male' as gender,
        to_date('1985-03-15') as date_of_birth

    union all

    select
        2,
        'Emma',
        'Johnson',
        'Female',
        to_date('1990-07-22')

    union all

    select
        3,
        'Michael',
        'Brown',
        'Male',
        to_date('1978-11-10')

    union all

    select
        4,
        'Sophia',
        'Davis',
        'Female',
        to_date('1995-01-30')

    union all

    select
        5,
        'William',
        'Miller',
        'Male',
        to_date('1982-09-18')

)

select *
from source_data