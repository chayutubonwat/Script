SELECT DATE_FORMAT(v.vstdate,"%d/%m/%Y") AS dvr_date,od.icd10 AS dvr_diagnosis,d.name AS dvr_medication,"" AS dvr_duration,
"" AS dvr_results,"" AS dvr_consultancy,"" AS dvr_reference,
pvdn.doctor_note_text AS dvr_notes, "" AS dvr_nutrition,
CONCAT(FORMAT(os.bps,0),"/",FORMAT(os.bpd,0)) AS dvr_bp, FORMAT(os.bw,0) AS dvr_wieght,
os.height AS dvr_hight,os.hr AS dvr_heartrate,os.hr AS dvr_bpm,"" AS dvr_head_curcumfer,
os.waist AS dvr_waistline,os.bmi AS dvr_bmi,os.temperature AS dvr_temperature,
od.icd10 AS dvr_operation

FROM vn_stat v
LEFT OUTER JOIN ovstdiag od ON v.vn=od.vn
LEFT OUTER JOIN patient_visit_doctor_note pvdn ON v.vn=pvdn.vn
LEFT OUTER JOIN opdscreen os ON v.vn=os.vn
LEFT OUTER JOIN opitemrece opi ON v.vn=opi.vn
LEFT OUtER JOIN drugitems d ON opi.icode=d.icode


ORDER BY v.vn DESC LIMIT 100
