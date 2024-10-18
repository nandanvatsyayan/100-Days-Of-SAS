data numeric_to_charator;
input Name$ Age Designation$20. Sex;
datalines;
Harry	23	SoftwareDeveloper	1
Alice	25	Programmer			2
Nancy	28	Programmer			2
Sam		22	Admin				3
Juliya	22	HR					2
run;
proc formate;
value Sex	1='M'
			2='F'
			3='O'
			;
run;
proc print data=numeric_to_charator;
format Sex Sex.;
run;
