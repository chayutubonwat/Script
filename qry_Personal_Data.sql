SELECT p.hn,o.hospitalname AS hospital_name,o.hospitalcode AS hospital_code,
fname AS name,lname AS surname,s.name AS gender,p.bloodgrp AS blood_group,
p.bloodgroup_rh AS blood_group_rh,m.name marital,DATE_FORMAT(p.birthday,"%d/%m/%Y") AS birth_date,
p.informname AS er_name,p.informname AS er_surname,p.informtel AS er_phone,p.hometel AS phone,
p.email email

FROM patient p
LEFT OUTER JOIN sex s ON p.sex=s.code
LEFT OUTER JOIN marrystatus m ON p.marrystatus=m.code

JOIN opdconfig o 

WHERE p.hn="0016509"
