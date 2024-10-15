data practice_data;
    infile 'D:\Code & Reading Materials\Code Practice\SAS\Dummy Data\MOCK_DATA.csv' dlm=',' firstobs=1; 
    input patient_id patient_name$ age gender$ ethnicity$ diagnosis_code$; 
run;
proc print data=practice_data;
run;

proc means data=practice_data;
run;

proc univariate data=practice_data;
run;

proc freq data=practice_data;
run;



proc print data=sas.help;
var make model type msrp mpg_city mpg_highway;
run;
