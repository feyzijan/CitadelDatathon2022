select `Order Region`,count(`Order Region`) from bigsupplyco_orders group by `Order Region`;

with a as (select `Order Region`,`Late Delivery Risk` from bigsupplyco_orders where `Late Delivery Risk` > 0)
select `Order Region`,count(`Order Region`) from a group by `Order Region`;

with b as (select `Order Region`,`Late Delivery Risk` from bigsupplyco_orders where `Late Delivery Risk` = 0)
select `Order Region`,count(`Order Region`) from b group by `Order Region`;



select `Order Region`,count(if(`Late Delivery Risk`>0,`Order Region`,null))/count(`Order Region`) as RISK_PERCENTAGE from bigsupplyco_orders group by `Order Region`;
