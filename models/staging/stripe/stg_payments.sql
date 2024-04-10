with payments as
(
    select 
    id as payment_id, 
    orderid as order_id, 
    paymentmethod as payment_method,
    status as payment_status, 
    amount/100 as amount, 
    created as time_stamp
    from
    raw.stripe.payment
)

select * from payments