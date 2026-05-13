{% snapshot snap_customer %}

{{
    config(
        unique_key  = 'customer_id',
        strategy    = 'check',
        check_cols  = ['market_segment']
    )
}}

SELECT
    customer_id,
    customer_name,
    address,
    nation_id,
    phone,
    account_balance,
    market_segment,
    comment

FROM {{ ref('stg_customer') }}

{% endsnapshot %}