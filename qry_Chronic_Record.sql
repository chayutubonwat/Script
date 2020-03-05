SELECT cm.clinicmember_id AS cn_no,c.name AS cn_conditions,"" AS cn_risk_factors,
CONCAT(COALESCE(oa.agent),"/อาการ ",COALESCE(oa.symptom)) AS cn_allergies,
oa.note AS cn_others
FROM clinicmember cm
LEFT OUTER JOIN opd_allergy oa on cm.hn=oa.hn
LEFT OUTER JOIN clinic c ON cm.clinic=c.clinic