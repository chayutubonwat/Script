SELECT
	"" AS vc_code_type,
	pv.export_vaccine_code AS vc_drug_code,
	pv.vaccine_name AS vc_name,
	DATE_FORMAT( ov.vaccine_date, "%d/%m/%Y" ) AS vc_date_record 
FROM
	person_vaccine_list ov
	LEFT OUTER JOIN person p ON ov.person_id = p.person_id
	LEFT OUTER JOIN person_vaccine pv ON ov.person_vaccine_id = pv.person_vaccine_id UNION
SELECT
	"" AS vc_code_type,
	pv.export_vaccine_code AS vc_drug_code,
	pv.vaccine_name AS vc_name,
	DATE_FORMAT( o.vstdate, "%d/%m/%Y" ) AS vc_date_record 
FROM
	ovst_vaccine ov
	LEFT OUTER JOIN ovst o ON ov.vn = o.vn
	LEFT OUTER JOIN person_vaccine pv ON ov.person_vaccine_id = pv.person_vaccine_id