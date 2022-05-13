
/*********** SYNDROMIC SURVEILLANCE ZIPCODE****************/

/* The purpose of this file is to process the opioid related overdose data for those treated in EDs. The 2019 and 2020 data is aggregated
   and contains 12 months of data. The 2021 data are monthly and only contains that one month. The data is reported with a 1-month lag. For
   2021 updates, add the new file at the top and add it to the merge file below. */


%let wfd14=panyue;
/*remember to change it back to wfd14*/


Libname SS "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SSLibrary";


/*This is bringing in the May 2022 data*/

data SSZipApr2022;
infile "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvZip\NYSDOH_SYNZip_20220505.csv" 

delimiter = ',' MISSOVER DSD firstobs=2;
	informat Patient_Zip_Code $50. ;
	informat Town $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
	

input 
	Patient_Zip_Code $
	Town $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SSZipAPr2022;
	retain Patient_Zip_Code Town MeasureID Numerator Denominator Month Year IsSuppressed;
set SSZipApr2022;
	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;


/*This is bringing in the April 2022 data*/

data SSZipMar2022;
infile "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvZip\NYSDOH_SYNZip_20220406.csv" 

delimiter = ',' MISSOVER DSD firstobs=2;
	informat Patient_Zip_Code $50. ;
	informat Town $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
	

input 
	Patient_Zip_Code $
	Town $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SSZipMar2022;
	retain Patient_Zip_Code Town MeasureID Numerator Denominator Month Year IsSuppressed;
set SSZipMar2022;
	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;

/*This is bringing in the March 2022 data*/

data SSZipFeb2022;
infile "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvZip\NYSDOH_SYNZip_20220303.csv" 

delimiter = ',' MISSOVER DSD firstobs=2;
	informat Patient_Zip_Code $50. ;
	informat Town $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
	

input 
	Patient_Zip_Code $
	Town $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SSZipFeb2022;
	retain Patient_Zip_Code Town MeasureID Numerator Denominator Month Year IsSuppressed;
set SSZipFeb2022;
	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;

data SSZipJan2022;
infile "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvZip\NYSDOH_SYNZip_20220208.csv" 

delimiter = ',' MISSOVER DSD firstobs=2;
	informat Patient_Zip_Code $50. ;
	informat Town $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
	

input 
	Patient_Zip_Code $
	Town $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SSZipJan2022;
	retain Patient_Zip_Code Town MeasureID Numerator Denominator Month Year IsSuppressed;
set SSZipJan2022;
	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;

/*This is bringing in the December 2021 data*/

data SSZipDec2021;
infile "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvZip\NYSDOH_SYNZip_20220105.csv" 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat Patient_Zip_Code $50. ;
	informat Town $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;

input 
	Patient_Zip_Code $
	Town $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SSZipDec2021;
	retain Patient_Zip_Code Town MeasureID Numerator Denominator Month Year IsSuppressed;
set SSZipDec2021;
  	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;

/*This is bringing in the November 2021 data*/

data SSZipNov2021;
infile "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvZip\NYSDOH_SYNZip_20211206.csv" 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat Patient_Zip_Code $50. ;
	informat Town $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
	
input 
	Patient_Zip_Code $
	Town $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SSZipNov2021;
	retain Patient_Zip_Code Town MeasureID Numerator Denominator Month Year IsSuppressed;
set SSZipNov2021;
  	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;

/*This is bringing in the October 2021 data*/

data SSZipOct2021;
infile "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvZip\NYSDOH_SYNZip_20211111.csv" 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat Patient_Zip_Code $50. ;
	informat Town $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;

input 
	Patient_Zip_Code $
	Town $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SSZipOct2021;
	retain Patient_Zip_Code Town MeasureID Numerator Denominator Month Year IsSuppressed;
set SSZipOct2021;
 	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;


/*This is bringing in the September 2021 data*/
data SSZipSep2021;
infile "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvZip\NYSDOH_SYNZip_20211029.csv" 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat Patient_Zip_Code $50. ;
	informat Town $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
	
input 
	Patient_Zip_Code $
	Town $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;


data SSZipSep2021;
	retain Patient_Zip_Code Town MeasureID Numerator Denominator Month Year IsSuppressed;
set SSZipSep2021;
	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;
QUIT;


/*This is bringing in the August 2021 data*/
data SSZipAug2021;
infile "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvZip\NYSDOH_SYNZip_20210903.csv" 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat Patient_Zip_Code $50. ;
	informat Town $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
	
input 
	Patient_Zip_Code $
	Town $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;


data SSZipAug2021;
	retain Patient_Zip_Code Town MeasureID Numerator Denominator Month Year IsSuppressed;
set SSZipAug2021;
	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;
QUIT;

/*This is bringing in the July 2021 data*/
data SSZipJul2021;

infile "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvZip\NYSDOH_SYNZip_20210817.csv" 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat Patient_Zip_Code $50. ;
	informat Town $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
	

input 
	Patient_Zip_Code $
	Town $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SSZipJul2021;
	retain Patient_Zip_Code Town MeasureID Numerator Denominator Month Year IsSuppressed;
set SSZipJul2021;
    
	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;
QUIT;



/*This is bringing in the June 2021 data*/
data SSZipJun2021;

infile "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvZip\NYSDOH_SYNZip_20210722.csv" 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat Patient_Zip_Code $50. ;
	informat Town $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
	

input 
	Patient_Zip_Code $
	Town $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SSZipJun2021;
	retain Patient_Zip_Code Town MeasureID Numerator Denominator Month Year IsSuppressed;
set SSZipJun2021;
    
	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;
QUIT;


/*This is bringing in the May 2021 data*/

data SSZipMay2021;
infile "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvZip\NYSDOH_SYNZip_20210618.csv" 

delimiter = ',' MISSOVER DSD firstobs=2;

	informat Patient_Zip_Code $50. ;
	informat Town $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;

input 
	Patient_Zip_Code $
	Town $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SSZipMay2021;
	retain Patient_Zip_Code Town MeasureID Numerator Denominator Month Year IsSuppressed;
set SSZipMay2021;
    format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;
QUIT;



/*This is bringing in the April 2021 data*/
data SSZipApr2021;
infile "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvZip\NYSDOH_SYNZip_20210514.csv" 

delimiter = ',' MISSOVER DSD firstobs=2;
	informat Patient_Zip_Code $50. ;
	informat Town $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
input 
	Patient_Zip_Code $
	Town $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SSZipApr2021;
	retain Patient_Zip_Code Town MeasureID Numerator Denominator Month Year IsSuppressed;
set SSZipApr2021;
    format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;

QUIT;
	
/*This is bringing in the March 2021 data*/
data SSZipMar2021;
infile "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvZip\NYSDOH_SYNZip_20210422.csv" 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat Patient_Zip_Code $50. ;
	informat Town $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
input 
	Patient_Zip_Code $
	Town $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SSZipMar2021;
	retain Patient_Zip_Code Town MeasureID Numerator Denominator Month Year IsSuppressed;
set SSZipMar2021;
    format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;

QUIT;

/*This is bringing in the February 2021 data*/
data SSZipFeb2021;
infile 'NYSDOH_SYNZip_20210312.csv'
delimiter = ',' MISSOVER DSD firstobs=2;
	informat Patient_Zip_Code $50. ;
	informat Town $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
input 
	Patient_Zip_Code $
	Town $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SSZipFeb2021;
	retain Patient_Zip_Code Town MeasureID Numerator Denominator Month Year IsSuppressed;
set SSZipFeb2021;
	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;

QUIT;
	
/*This is bringing in the January 2021 data */
data SSZipJan2021;
infile "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvZip\NYSDOH_SYNZip_20210211.csv" 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat Patient_Zip_Code $50. ;
	informat Town $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
input 
	Patient_Zip_Code $
	Town $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SSZipJan2021;
	retain Patient_Zip_Code Town MeasureID Numerator Denominator Month Year IsSuppressed;
set SSZipJan2021;
    format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;

QUIT;

/*This is bringing in the historical 2020 Annual data (12 months)*/
data SSZip2020;
infile "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvZip\NYSDOH_SYNZip_20210111.csv" 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat Patient_Zip_Code $50. ;
	informat Town $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
input 
	Patient_Zip_Code $
	Town $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SSZip2020;
	retain Patient_Zip_Code Town MeasureID Numerator Denominator Month Year IsSuppressed;
set SSZip2020;
    format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;

QUIT;
	

/*This is bringing in the historical 2019 Annual data (12 months)*/
data SSZip2019;
infile "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvZip\NYSDOH_SYNZip_20210115.csv" 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat Patient_Zip_Code $50. ;
	informat Town $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
input 
	Patient_Zip_Code $
	Town $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SSZip2019;
	retain Patient_Zip_Code Town MeasureID Numerator Denominator Month Year IsSuppressed;
set SSZip2019;
    format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;

QUIT;
	
/************************
************************
************************/

data SSZip;
set  SSZip2019 SSZip2020 SSZipJan2021 SSZipFeb2021 SSZipMar2021 SSZipApr2021 SSZipMay2021 SSZipJun2021 SSZipJul2021 SSZipAug2021 SSZipSep2021
SSZipOct2021 SSZipNov2021 SSZipDec2021 SSZipJan2022 SSZipFeb2022 SSZipMar2022 SSZipApr2022;
run;

* Sort in order to get means by;
Proc sort data=SSZip;
by Town year month;
run;

*Calculate means across all zip-codes within our 3 towns;
proc means data=SSZip noprint sum n;
by Town Year month;
id Measureid;
VAR Numerator Denominator;
 output out = Partial
        sum = Numerator Denominator
		n	= NumNumerator NumDenominator;
run;

*Code the partial counties/cities into the correct Reporterid;
data partial2;
set partial;
if Town eq 'Buffalo' then Reporterid='0338';
if Town eq 'Rochester' then Reporterid='0342';
if Town eq 'Brookhaven Township' then Reporterid='0345';
drop _type_ _freq_ NumNumerator NumDenominator Town;
isSuppressed=1;
if Numerator gt 9 or Numerator eq 0 then isSuppressed=0;
if Month in (1,2,3) then Quarter=1;
if Month in (4,5,6) then Quarter=2;
if Month in (7,8,9) then Quarter=3;
if Month in (10,11,12) then Quarter=4;
run;

* Sort in order to get means by Quarter;
Proc sort data=partial2;
by reporterid year quarter;
run;

*Calculate means by quarter to add to the dataset;
proc means data=partial2 noprint sum n;
by Reporterid Year Quarter;
id  Measureid isSuppressed;
VAR Numerator Denominator;
 output out = PartQuarter
        sum = Numerator Denominator
		n	= NumNumerator NumDenominator;
run;

data PartQuarter;
set PartQuarter;
if Numerator ge 1 and Numerator le 9 then isSuppressed=1;
else isSuppressed=0;
drop _type_ _freq_ NumNumerator NumDenominator;
run;

*Calculate means by year to add to the dataset;
proc means data=partial2 noprint sum n;
by Reporterid Year ;
id  Measureid isSuppressed;
VAR Numerator Denominator;
 output out = Partyear
        sum = Numerator Denominator
		n	= NumNumerator NumDenominator;
run;

data Partyear;
set Partyear;
if Numerator ge 1 and Numerator le 9 then isSuppressed=1;
else isSuppressed=0;
drop _type_ _freq_ NumNumerator NumDenominator;
run;

data temp;
set partial2;
quarter=.;
run;

Data SSpartzip;
set Temp PartQuarter PartYear;
Notes='';
Stratification='';
run;

proc print data=SSpartzip;
run;


*Verify that the COM file data has the full county data by comparing values with the Partial data. The full county
should have higher magnitude of data;
proc sort data=ss.sscom;
by reporterid year month;
run;

proc print data=ss.sscom;
where reporterid in ('0338','0342','0345');
var reporterid year month numerator denominator;
run;

proc sort data=partial2;
by reporterid year month;
run;

proc print data=partial2;
var reporterid year month numerator denominator;
run;

*/
*  Correct the Reporterid of the data in the Full file--need to tell Shivani to do this for future downloads;
/*here*/
data Full;
set ss.sscom;
if Reporterid eq '0338' then Reporterid='0368';
if Reporterid eq '0342' then Reporterid='0369';
if Reporterid eq '0345' then Reporterid='0370';
run;

data full;
set full;
if Numerator gt 9 or Numerator eq 0 then isSuppressed=0;
if Month in (1,2,3) then Quarter=1;
if Month in (4,5,6) then Quarter=2;
if Month in (7,8,9) then Quarter=3;
if Month in (10,11,12) then Quarter=4;
run; 


* Sort in order to get means by Quarter;
Proc sort data=full;
by reporterid year quarter;
run;

*Calculate means by quarter to add to the dataset;
proc means data=full noprint sum n;
by Reporterid Year Quarter;
id  Measureid isSuppressed;
VAR Numerator Denominator;
 output out = PartQuarter
        sum = Numerator Denominator
		n	= NumNumerator NumDenominator;
run;

data PartQuarter;
set PartQuarter;
if Numerator ge 1 and Numerator le 9 then isSuppressed=1;
else isSuppressed=0;
drop _type_ _freq_ NumNumerator NumDenominator;
run;


*Calculate means by year to add to the dataset;
proc means data=full noprint sum n;
by Reporterid Year ;
id  Measureid isSuppressed;
VAR Numerator Denominator;
 output out = Partyear
        sum = Numerator Denominator
		n	= NumNumerator NumDenominator;
run;

data Partyear;
set Partyear;
if Numerator ge 1 and Numerator le 9 then isSuppressed=1;
else isSuppressed=0;
drop _type_ _freq_ NumNumerator NumDenominator;
run;

data temp;
set full;
quarter=.;
run;

Data full;
set Temp PartQuarter PartYear;
Notes='';
Stratification='';
run;

proc print data=SSpartZip;
run;



*  Combine the two data files;
data SYN_CDM_05052022;
Retain ReporterId MeasureId Numerator Denominator Month Quarter Year IsSuppressed Notes Stratification;
set Full SSpartZip;
run;

proc sort data = SYN_CDM_05052022;
by reporterid year month;
run;

*Drop full counties for RTI transfer;

data ss.RTI_SYN_05052022;
Retain ReporterId MeasureId Numerator Denominator Month Quarter Year IsSuppressed Notes Stratification;
set SYN_CDM_05052022;
if Reporterid not in ('0368','0369','0370');
run;

PROC EXPORT DATA= SS.RTI_SYN_05052022 
            OUTFILE= "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\
Data and Documentation\DATA Downloads\1 1 Pending\SynSurv_HCS_Deliveries
\RTI_SYN_05052022.csv" 
            DBMS=CSV REPLACE;
     PUTNAMES=YES;
RUN;

  /**********************************************************************
  *   PRODUCT:   SAS
  *   VERSION:   9.4
  *   CREATOR:   External File Interface
  *   DATE:      04FEB21
  *   DESC:      Generated SAS Datastep Code
  *   TEMPLATE SOURCE:  (None Specified.)
  ***********************************************************************/
/*   /*  data _null_;*/
/*     %let _EFIERR_ = 0; /* set the ERROR detection macro variable */*/
/*     %let _EFIREC_ = 0;     /* clear export record count macro variable */*/
/*     file "C:\Users\&wfd14\Box\1 Healing Communities\DATA_NYS\Data and*/
/* Documentation\DATA Downloads\1 1 Pending\SynSurv_HCS_Deliveries\RTI_SYN_05142021.csv" delimiter=',' DSD DROPOVER*/
/* lrecl=32767;*/
/*     if _n_ = 1 then        /* write column names or labels */*/
/*      do;*/
/*        put*/
/*           "ReporterID"*/
/*        ','*/
/*           "MeasureID"*/
/*        ','*/
/*           "Numerator"*/
/*        ','*/
/*           "Denominator"*/
/*        ','*/
/*           "Month"*/
/*        ','*/
/*           "Quarter"*/
/*		','*/
/*           "Year"*/
/*        ','*/
/*           "IsSuppressed"*/
/*        ','*/
/*           "Notes"*/
/*        ','*/
/*           "Stratification"*/
/*        ;*/
/*      end;*/
/*    set  SYN_CDM_05142021   end=EFIEOD;*/
/*        format ReporterID $4. ;*/
/*        format MeasureID $15. ;*/
/*        format Numerator best32. ;*/
/*        format Denominator best32. ;*/
/*        format Month best32. ;*/
/*        format Quarter best12. ;*/
/*		format Year best32. ;*/
/*        format IsSuppressed best32. ;*/
/*        format Notes $1. ;*/
/*        format Stratification $1. ;*/
/**/
/*      do;*/
/*        EFIOUT + 1;*/
/*        put ReporterID $ @;*/
/*        put MeasureID $ @;*/
/*        put Numerator @;*/
/*        put Denominator @;*/
/*        put Month @;*/
/*        put Quarter @;*/
/*        put Year @;*/
/*        put IsSuppressed @;*/
/*        put Notes $ @;*/
/*        put Stratification $ ;*/
/**/
/*        ;*/
/*      end;*/
/*     if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */*/
/*     if EFIEOD then call symputx('_EFIREC_',EFIOUT);*/
/*     run;*/


/*Proc format;*/
/*value $County*/
/**/
/*'0333'	=	'Broome'*/
/*'0334'	=	'Cayuga'*/
/*'0335'	=	'Chautauqua'*/
/*'0336'	=	'Columbia'*/
/*'0337'	=	'Cortland'*/
/*'0338'	=	'Erie (Buffalo, Only)'*/
/*'0339'	=	'Genesee'*/
/*'0340'	=	'Greene'*/
/*'0341'	=	'Lewis'*/
/*'0342'	=	'Monroe (Rochester Only)'*/
/*'0343'	=	'Orange'*/
/*'0344'	=	'Putnam'*/
/*'0345'	=	'Suffolk (Brookhaven Only)'*/
/*'0346'	=	'Sullivan'*/
/*'0347'	=	'Ulster'*/
/*'0348'	=	'Yates'*/
/*'0368'	=	'Erie--Full County'*/
/*'0369'	=	'Monroe--Full County' */
/*'0370'	=	'Suffolk--Full County'*/
/*'0371'	=	'Erie--Outer Ring'*/
/*'0372'	=	'Monrore--Outer Ring'*/
/*'0373'	=	'Suffolk--Outer Ring'*/
/*'999'	=	'Average HCS Communities'*/
/*;*/
/*run; */*/

	
