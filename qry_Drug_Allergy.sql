SELECT "24Digit" AS da_code_type,oa_did.agent_code24 AS da_drug_code,oa_did.generic_name,oa_did.tradename,"" AS da_icd10_name,"" AS description_recode
FROM opd_allergy oa

LEFT OUTER JOIN (SELECT
	oa.hn,oa.agent_code24,symptom,report_date,dr.tradename,dr.drugname,d.generic_name
FROM opd_allergy oa
LEFT OUTER JOIN drugitems d ON oa.agent_code24 = d.did 
LEFT OUTER JOIN drugitems_register dr ON oa.agent_code24=dr.std_code
WHERE oa.agent_code24 <> "" AND oa.agent_code24 IS NOT NULL 
GROUP BY oa.hn,oa.agent_code24,oa.symptom) oa_did on oa.hn=oa_did.hn