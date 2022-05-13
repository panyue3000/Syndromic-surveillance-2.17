
/*******SYNDROMIC SURVEILLANCE COMMUNITY (2.17)*************/
  /*
  This file is for processing the syndromic surveillance data files. This data is reported once per month around the middle of the month.
  There is a 1-month delay in reporting. This data is different from other datasets because we receive only the month totals. Therefore, 
  the monthly totals need to be added to the historical annual totals of 2019 and 2020 to get cumulative 2021 data */

/* In this section, we want to add the new monthly data at the top. This will build one cummulative file for 
synsurveillance community data. */


/*This data step pulls in the April 2022 Data*/
data SScomMar2022;
infile 'C:\Users\wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvCom\NYSDOH_SYNComm_20220406.csv' 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat ReporterID $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;

input 
	ReporterID $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SScomMar2022;
	retain ReporterID MeasureID Numerator Denominator Month Year IsSuppressed;
set SScomMar2022;
	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;
RUN;


/*This data step pulls in the January 2022 Data*/
data SScomFeb2022;
infile 'C:\Users\wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvCom\NYSDOH_SYNComm_20220303.csv' 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat ReporterID $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;

input 
	ReporterID $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SScomFeb2022;
	retain ReporterID MeasureID Numerator Denominator Month Year IsSuppressed;
set SScomFeb2022;
	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;
RUN;


/*This data step pulls in the January 2022 Data*/
data SScomJan2022;
infile 'C:\Users\wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvCom\NYSDOH_SYNComm_20220208.csv' 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat ReporterID $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;

input 
	ReporterID $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SScomJan2022;
	retain ReporterID MeasureID Numerator Denominator Month Year IsSuppressed;
set SScomJan2022;
	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;
RUN;


/*This data step pulls in the December 2021 Data*/

data SScomDec2021;

infile 'C:\Users\wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvCom\NYSDOH_SYNComm_20220105.csv' 

delimiter = ',' MISSOVER DSD firstobs=2;
	informat ReporterID $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
	
input 
	ReporterID $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SScomDec2021;
	retain ReporterID MeasureID Numerator Denominator Month Year IsSuppressed;
set SScomDec2021;
	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;

/*This data step pulls in the November 2021 Data*/

data SScomNov2021;
infile 'C:\Users\wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvCom\NYSDOH_SYNComm_20211206.csv' 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat ReporterID $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
input 
	ReporterID $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SScomNov2021;
	retain ReporterID MeasureID Numerator Denominator Month Year IsSuppressed;
set SScomNov2021;
	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;

/*This data step pulls in the October 2021 Data*/

data SScomOct2021;
infile 'C:\Users\wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvCom\NYSDOH_SYNComm_20211111.csv' 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat ReporterID $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;

input 
	ReporterID $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SScomOct2021;
	retain ReporterID MeasureID Numerator Denominator Month Year IsSuppressed;
set SScomOct2021;
	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;

/*This data step pulls in the September 2021 Data*/
	
data SScomSep2021;
infile 'C:\Users\wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvCom\NYSDOH_SYNComm_20211029.csv' 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat ReporterID $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;

input 
	ReporterID $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;


data SScomSep2021;
	retain ReporterID MeasureID Numerator Denominator Month Year IsSuppressed;
set SScomSep2021;
    format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;
QUIT;


/*This data step pulls in the August 2021 Data*/

data SScomAug2021;
infile 'C:\Users\wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvCom\NYSDOH_SYNComm_20210903.csv' 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat ReporterID $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
input 
	ReporterID $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SScomAug2021;
	retain ReporterID MeasureID Numerator Denominator Month Year IsSuppressed;
set SScomAug2021;
    format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;
QUIT;
	


/*This data step pulls in the July 2021 Data*/
data SScomJul2021;
infile 'C:\Users\wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvCom\NYSDOH_SYNComm_20210817.csv' 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat ReporterID $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
	

input 
	ReporterID $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SScomJul2021;
	retain ReporterID MeasureID Numerator Denominator Month Year IsSuppressed;
set SScomJul2021;
    format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;
QUIT;

/*This data step pulls in June 2021 Data */
data SScomJun2021;

infile 'C:\Users\wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvCom\NYSDOH_SYNComm_20210722.csv' 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat ReporterID $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;

input 
	ReporterID $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;


data SScomJun2021;
	retain ReporterID MeasureID Numerator Denominator Month Year IsSuppressed;
set SScomJun2021;
    format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;
QUIT;

/*This data step pulls in May 2021 Data */
data SScomMay2021;
/* 
	SPECIFY THE PATH TO YOUR DOWNLOADED CSV BELOW:
*/
infile 'C:\Users\wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvCom\NYSDOH_SYNComm_20210618.csv' 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat ReporterID $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
	
input 
	ReporterID $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;


/*This data step pulls in April 2021 Data */
data SScomApr2021;
infile 'C:\Users\wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvCom\NYSDOH_SYNComm_20210514.csv' 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat ReporterID $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
	
input 
	ReporterID $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SScomApr2021;
	retain ReporterID MeasureID Numerator Denominator Month Year IsSuppressed;
set SScomApr2021;
 	format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;

QUIT;
	
/*This data step pulls in March 2021 Data */
data SScomMar2021;
infile 'C:\Users\wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvCom\NYSDOH_SYNComm_20210422.csv' 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat ReporterID $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;

input 
	ReporterID $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SScomMar2021;
	retain ReporterID MeasureID Numerator Denominator Month Year IsSuppressed;
set SScomMar2021;
    format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;

QUIT;

/*This data step pulls in February 2021 Data */
data SScomFeb2021;
infile 'C:\Users\wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvCom\NYSDOH_SYNComm_20210312.csv' 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat ReporterID $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
	
input 
	ReporterID $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SScomFeb2021;
	retain ReporterID MeasureID Numerator Denominator Month Year IsSuppressed;
set SScomFeb2021;
    format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;

QUIT;
	
/*This data step pulls in January 2021 Data */
data SScomJan2021;
infile 'C:\Users\wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvCom\NYSDOH_SYNComm_20210211.csv' 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat ReporterId $50. ;
	informat MeasureId 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;

input 
	ReporterId $
	MeasureId
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;


data SScomJan2021;
	retain ReporterId MeasureId Numerator Denominator Month Year IsSuppressed;
set SScomJan2021;
    format MeasureId BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;
RUN;

QUIT;


/*This data step pulls in the historical 2020 Annual Data (12 months) */
data SScom2020;
infile 'C:\Users\wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvCom\NYSDOH_SYNComm_20210111.csv' 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat ReporterID $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;
input 
	ReporterID $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SScom2020;
	retain ReporterID MeasureID Numerator Denominator Month Year IsSuppressed;
set SScom2020;
    format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;

RUN;

QUIT;


/*This data step is pulling in the historical 2019 Annual Data (12 months)*/
data SScom2019;
infile 'C:\Users\wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SynSurvCom\NYSDOH_SYNComm_20210115.csv' 
delimiter = ',' MISSOVER DSD firstobs=2;
	informat ReporterID $50. ;
	informat MeasureID 32. ;
	informat Numerator 32. ;
	informat Denominator 32. ;
	informat Month 32. ;
	informat Year 32. ;
	informat IsSuppressed 32. ;

input 
	ReporterID $
	MeasureID
	Numerator
	Denominator
	Month
	Year
	IsSuppressed
;

data SScom2019;
	retain ReporterID MeasureID Numerator Denominator Month Year IsSuppressed;
set SScom2019;
    format MeasureID BEST32. ;
	format Numerator BEST32. ;
	format Denominator BEST32. ;
	format Month BEST32. ;
	format Year BEST32. ;
	format IsSuppressed BEST32. ;
RUN;

QUIT;

/****************************
***************************
***************************/

/*In this section we are merging all the prior data files*/
data SSCom;
set SScomMar2022 SScomFeb2022 SScomJan2022 SScomDec2021 SScomNov2021 SScomOct2021 SScomSep2021 SScomAug2021 SScomJul2021 SScomJun2021 SScomMay2021 SScomApr2021 SScomMar2021 SScomFeb2021 SScomJan2021 SScom2020 SScom2019;
Notes='';
Stratification='';
run;

Data SScom;
retain ReporterId MeasureId Numerator Denominator Month Year IsSuppressed Notes Stratification;
set SScom;
informat Notes $50. ;
informat Stratification $50. ;
run;

proc contents data=SScom;
run;

Proc sort data=SScom;
by reporterid year month stratification;
run;


/*Running some data checks to make sure the merge was processed correctly.*/
proc means data=sscom min max n nmiss;
class measureid year month;
var numerator;
run;

proc freq data=sscom;
tables measureid*year*month;
run;

Libname SS 'C:\Users\wfd14\Box\1 Healing Communities\DATA_NYS\Data and Documentation\DATA Downloads\1 1 Pending\SSLibrary';

data ss.sscom;
set sscom;
run;

