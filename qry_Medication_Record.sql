SELECT o.rxdate AS mdr_date,o.order_no AS mdr_no,d.name AS mdr_name,
"" AS mdr_method,"" AS mdr_time,"" AS mdr_feq,"" AS mdr_note, "" AS mdr_appearance,
o.qty AS mdr_qty,d.units AS mdr_unit, "" AS mdr_number_used, d.units AS mdr_unit_used,
o.rxdate mdr_start_date,"" AS mdr_end_date,dt.name AS mdr_physician_name,ou.name AS mdr_phamacist_name

FROM  opitemrece o
LEFT OUTER JOIN drugitems d on o.icode=d.icode
LEFT OUTER JOIN doctor dt on o.doctor=dt.code
LEFT OUtER JOIN opduser ou on o.staff=ou.loginname
WHERE o.vn='630105112512' 