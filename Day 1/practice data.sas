PROC IMPORT DATAFILE="D:\Code & Reading Materials\Code Practice\SAS\Dummy Data/Dummy Data.xlsx"
    OUT=work.dummy_data
    DBMS=xlsx
    REPLACE;
    SHEET="Sheet1";
    GETNAMES=YES;
RUN;


data work.practice_data;
    infile 'D:\Code & Reading Materials\Code Practice\SAS\Dummy Data\MOCK_DATA.csv' dlm=','; 
    input patient_id patient_name$ age gender$ ethnicity$ diagnosis_code$; 
run;
