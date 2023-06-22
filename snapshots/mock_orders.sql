

{% snapshot orders_snapshot %}

{{
    config(
      target_database='DEMO_DB',
      target_schema=new_schema,
      unique_key='order_id',

      strategy='timestamp',
      updated_at='updated_at',
    )
}}

select * from DEMO_DB.{{target.schema}}.mock_orders

{% endsnapshot %}