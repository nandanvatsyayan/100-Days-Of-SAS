data numeric_to_character;
    input Name $ Age Designation $20. Sex Gender $;
    datalines;
Harry   23  SoftwareDeveloper  1   M
Alice   25  Programmer         2   F
Nancy   28  Programmer         2   F
Sam     22  Admin              3   O
Juliya  22  HR                 2   F
;
run;

data numeric_to_character;
    set numeric_to_character;
    if Gender = 'M' then Gender_num = 1;
    else if Gender = 'F' then Gender_num = 2;
    else if Gender = 'O' then Gender_num = 3;
run;


data numeric_to_character;
	set numeric_to_character;
	if sex = 1 then Sex_char = 'M';
	else if sex = 2 then sex_char= 'F';
	else if sex = 3 then sex_char= 'O';
run;

proc format;
	value $Sex_fmt
        	1 = 'M'
        	2= 'F'
        	3= 'O'
			;
    value Gender_fmt
        	'M' = 1
        	'F' = 2
        	'O' = 3
			;
run;

proc print data=numeric_to_character;
    format Sex_char $1. ;
	format Gender_num best12.;
run;
