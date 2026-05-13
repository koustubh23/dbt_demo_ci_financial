WITH source AS (

    SELECT * FROM {{ source('custom_reveal', 'customer') }}   -- ✅ correct referencesds

),

renamed AS (

    SELECT
        c_custkey       AS customer_id,
        c_name          AS customer_name,
        c_address       AS address,
        c_nationkey     AS nation_id,
        c_phone         AS phone,
        c_acctbal       AS account_balance,
        c_mktsegment    AS market_segment,
        c_comment       AS comment

    FROM source    

)

SELECT * FROM renamed 