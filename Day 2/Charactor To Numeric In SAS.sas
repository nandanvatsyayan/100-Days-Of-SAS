data charactor_to_numeric;
input Name$ Age Designation$20. Sex$;
datalines;
Harry	23	SoftwareDeveloper	M
Alice	25	Programmer			F
Nancy	28	Programmer			F
Sam		22	Admin				O
Juliya	22	HR					F
run;
proc formate;
value $Sex	'M'=1
			'F'=2
			'O'=3
			;
run;
proc print data=charactor_to_numeric;
format $sex sex.;
run;
