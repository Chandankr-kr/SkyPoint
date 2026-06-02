{{ config(materialized='table') }}

select
    p.*,
    pr.payer_name
from {{ ref('patient') }} p
inner join {{ ref('payer') }} pr
    on p.patient_id = pr.patient_id