SELECT * FROM psliq.diabetes_prediction_csv;
select Patient_id,age
from psliq.diabetes_prediction_csv;
SELECT *
FROM psliq.diabetes_prediction_csv
WHERE gender = "female" AND age>40;
SELECT avg(bmi) as Average_bmi
FROM psliq.diabetes_prediction_csv;

SELECT *
FROM psliq.diabetes_prediction_csv
ORDER BY blood_glucose_level DESC;




SELECT *
FROM psliq.diabetes_prediction_csv
WHERE hypertension=1 AND diabetes=1;




SELECT count(*)  as Heart_disease_patients
FROM psliq.diabetes_prediction_csv
WHERE heart_disease=1;




SELECT smoking_history, COUNT( * ) as Count
FROM psliq.diabetes_prediction_csv
WHERE smoking_history = "current" OR smoking_history="never"
GROUP BY smoking_history;



# average bmi is 27.36
select patient_id,bmi
FROM psliq.diabetes_prediction_csv
where bmi > (select avg  (bmi)
FROM psliq.diabetes_prediction_csv);




select ï»¿EmployeeName,patient_id,HbA1c_level as Max_HbA1c_level
FROM psliq.diabetes_prediction_csv
order by HbA1c_level Desc
limit 1;




select ï»¿EmployeeName,patient_id,HbA1c_level as Max_HbA1c_level
FROM psliq.diabetes_prediction_csv
order by HbA1c_level asc
limit 1;




select ï»¿EmployeeName,patient_id,
	year(now()) - age as birth_year,
    year(now()) - year(now()) + age As Current_age
FROM psliq.diabetes_prediction_csv;





select Patient_id,gender,blood_glucose_level,
	rank () over (partition by gender order by blood_glucose_level) as blood_glucose_level_ranks_by_gender
FROM psliq.diabetes_prediction_csv;





set sql_safe_updates = 0;
update psliq.diabetes_prediction_csv
set smoking_history = "Ex-Smoker"
where age>50;

select * FROM psliq.diabetes_prediction_csv;




insert into psliq.diabetes_prediction_csv
values("alabaan","PT250220","Male","25","1","0","current","28.9","10","96","0");
select *
from psliq.diabetes_prediction_csv;





select Patient_id,hypertension,diabetes
from psliq.diabetes_prediction_csv where hypertension = 1
except 
select Patient_id,hypertension,diabetes
from psliq.diabetes_prediction_csv where hypertension = 0;

#Change Data Type:
#If the Patient_id column does not actually need to be of type BLOB/TEXT, you might want to consider changing its data type to something like VARCHAR or INT, depending on your use case.
#use this code to change datatype

ALTER TABLE psliq.diabetes_prediction_csv
MODIFY COLUMN Patient_id VARCHAR(255); #Change 255 to an appropriate length

alter table psliq.diabetes_prediction_csv
add constraint Patient_id unique (Patient_id);

insert into psliq.diabetes_prediction_csv
values("alabaan","PT250220","Male","25","1","0","current","28.9","10","96","0");


USE psliq;

CREATE VIEW Patient_Data AS
SELECT Patient_id, age, bmi
FROM psliq.diabetes_prediction_csv;

select *
from Patient_Data;

DROP VIEW IF EXISTS Patient_Data;





delete from psliq.diabetes_prediction_csv
where heart_disease = 1;

select *
FROM psliq.diabetes_prediction_csv;

