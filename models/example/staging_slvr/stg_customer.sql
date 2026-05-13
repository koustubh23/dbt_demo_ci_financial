WITH source AS (

    SELECT * FROM {{ source('reveal', 'customer') }}   -- ✅ correct reference

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

    FROM source    -- ✅ reads from the CTE, not the raw table

)

SELECT * FROM renamed 