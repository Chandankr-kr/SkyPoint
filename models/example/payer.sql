/*
    Payer dimension model
    This model creates a payer table linked to patients for joining.
*/

{{ config(materialized='table') }}

with source_data as (

    select
        1 as patient_id,
        'Aetna' as payer_name,
        'P001' as payer_code,
        '2023-01-01' as enrollment_date

    union all

    select
        2,
        'Blue Cross',
        'P002',
        '2022-05-15'

    union all

    select
        3,
        'United Healthcare',
        'P003',
        '2021-09-10'

    union all

    select
        4,
        'Cigna',
        'P004',
        '2022-12-01'

    union all

    select
        5,
        'Humana',
        'P005',
        '2023-03-20'

)

select
    patient_id,
    payer_name,
    payer_code,
    to_date(enrollment_date) as enrollment_date
from source_data

-- Uncomment to filter invalid records
-- where patient_id is not null