/**************************************************************************
 |                                                                         
 |           NATIONAL SURVEY OF FAMILY GROWTH (NSFG), 2011-2013
 |
 |                     STATA Male Data Setup File
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do nsfg_female_setup.do)
 |
 **************************************************************************/

set mem 50m  /* Allocating 50 megabyte(s) of RAM for Stata SE to read the
                 data file into memory. */


set more off  /* This prevents the Stata output viewer from pausing the
                 process */

/****************************************************

Section 1: File Specifications
   This section assigns local macros to the necessary files.
   Please edit:
        "data-filename" ==> The name of data file downloaded from NCHS
        "dictionary-filename" ==> The name of the dictionary file downloaded.
        "stata-datafile" ==> The name you wish to call your Stata data file.

   Note:  We assume that the raw data, dictionary, and setup (this do file) all
          reside in the same directory (or folder).  If that is not the case
          you will need to include paths as well as filenames in the macros.

********************************************************/

local raw_data "2011_2013_MaleData.dat"
local dict "2011_2013_MaleSetup.dct"
local outfile "2011_2013_MaleData.dta"

/********************************************************

Section 2: Infile Command

This section reads the raw data into Stata format.  If Section 1 was defined
properly, there should be no reason to modify this section.  These macros
should inflate automatically.

**********************************************************/

infile using `dict', using (`raw_data') clear


/*********************************************************

Section 3: Value Label Definitions
This section defines labels for the individual values of each variable.
We suggest that users do not modify this section.

**********************************************************/

label data "National Survey of Family Growth (NSFG), 2011-2013"


#delimit ;
 label define RSCRNINF
   1 "YES"
   5 "NO";

 label define RSCRAGE
  15 "15 YEARS"
  16 "16 YEARS"
  17 "17 YEARS"
  18 "18 YEARS"
  19 "19 YEARS"
  20 "20 YEARS"
  21 "21 YEARS"
  22 "22 YEARS"
  23 "23 YEARS"
  24 "24 YEARS"
  25 "25 YEARS"
  26 "26 YEARS"
  27 "27 YEARS"
  28 "28 YEARS"
  29 "29 YEARS"
  30 "30 YEARS"
  31 "31 YEARS"
  32 "32 YEARS"
  33 "33 YEARS"
  34 "34 YEARS"
  35 "35 YEARS"
  36 "36 YEARS"
  37 "37 YEARS"
  38 "38 YEARS"
  39 "39 YEARS"
  40 "40 YEARS"
  41 "41 YEARS"
  42 "42 YEARS"
  43 "43 YEARS"
  44 "44 YEARS";

 label define RSCRHISP
   1 "Yes"
   5 "No";

 label define RSCRRACE
   4 "BLACK OR AFRICAN AMERICAN"
   5 "WHITE"
   6 "HISPANIC";

 label define AGE_A
  15 "15 YEARS"
  16 "16 YEARS"
  17 "17 YEARS"
  18 "18 YEARS"
  19 "19 YEARS"
  20 "20 YEARS"
  21 "21 YEARS"
  22 "22 YEARS"
  23 "23 YEARS"
  24 "24 YEARS"
  25 "25 YEARS"
  26 "26 YEARS"
  27 "27 YEARS"
  28 "28 YEARS"
  29 "29 YEARS"
  30 "30 YEARS"
  31 "31 YEARS"
  32 "32 YEARS"
  33 "33 YEARS"
  34 "34 YEARS"
  35 "35 YEARS"
  36 "36 YEARS"
  37 "37 YEARS"
  38 "38 YEARS"
  39 "39 YEARS"
  40 "40 YEARS"
  41 "41 YEARS"
  42 "42 YEARS"
  43 "43 YEARS";

 label define AGE_R
  15 "15 years"
  16 "16 years"
  17 "17 years"
  18 "18 years"
  19 "19 years"
  20 "20 years"
  21 "21 years"
  22 "22 years"
  23 "23 years"
  24 "24 years"
  25 "25 years"
  26 "26 years"
  27 "27 years"
  28 "28 years"
  29 "29 years"
  30 "30 years"
  31 "31 years"
  32 "32 years"
  33 "33 years"
  34 "34 years"
  35 "35 years"
  36 "36 years"
  37 "37 years"
  38 "38 years"
  39 "39 years"
  40 "40 years"
  41 "41 years"
  42 "42 years"
  43 "43 years";

 label define AGESCRN
  15 "15 years"
  16 "16 years"
  17 "17 years"
  18 "18 years"
  19 "19 years"
  20 "20 years"
  21 "21 years"
  22 "22 years"
  23 "23 years"
  24 "24 years"
  25 "25 years"
  26 "26 years"
  27 "27 years"
  28 "28 years"
  29 "29 years"
  30 "30 years"
  31 "31 years"
  32 "32 years"
  33 "33 years"
  34 "34 years"
  35 "35 years"
  36 "36 years"
  37 "37 years"
  38 "38 years"
  39 "39 years"
  40 "40 years"
  41 "41 years"
  42 "42 years"
  43 "43 years"
  44 "44 years";

 label define MARSTAT
   1 "MARRIED TO A PERSON OF THE OPPOSITE SEX"
   2 "NOT MARRIED BUT LIVING TOGETHER WITH A PARTNER OF THE OPPOSITE SEX"
   3 "WIDOWED"
   4 "DIVORCED OR ANNULLED"
   5 "SEPARATED, BECAUSE YOU AND YOUR SPOUSE ARE NOT GETTING ALONG"
   6 "NEVER BEEN MARRIED";

 label define FMARSTAT
   3 "WIDOWED"
   4 "DIVORCED OR ANNULLED"
   5 "SEPARATED, BECAUSE YOU AND YOUR SPOUSE ARE NOT GETTING ALONG"
   6 "NEVER BEEN MARRIED";

 label define FMARIT
   1 "MARRIED"
   2 "WIDOWED"
   3 "DIVORCED"
   4 "SEPARATED"
   5 "NEVER MARRIED";

 label define EVRMARRY
   0 "NEVER MARRIED"
   1 "EVER MARRIED";

 label define HISP
   1 "YES"
   5 "NO"
   9 "DON'T KNOW";

 label define HISPGRP
   1 "MEXICAN OR MEXICAN-AMERICAN"
   2 "ALL OTHER HISPANIC OR LATINO GROUPS"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define PRIMLANG1
   1 "ENGLISH"
   2 "SPANISH"
   7 "OTHER";

 label define PRIMLANG2
   1 "ENGLISH"
   2 "SPANISH"
   7 "OTHER";

 label define PRIMLANG3
   1 "ENGLISH"
   7 "OTHER";

 label define FL_RAGE
   0 "NO"
   1 "YES";

 label define FL_RRACE
   0 "NO"
   1 "YES";

 label define FL_RHISP
   0 "NO"
   1 "YES";

 label define ROSCNT
   1 "1 HOUSEHOLD MEMBER"
   2 "2 HOUSEHOLD MEMBERS"
   3 "3 HOUSEHOLD MEMBERS"
   4 "4 HOUSEHOLD MEMBERS"
   5 "5 HOUSEHOLD MEMBERS"
   6 "6 HOUSEHOLD MEMBERS"
   7 "7 HOUSEHOLD MEMBERS"
   8 "8 OR MORE HOUSEHOLD MEMBERS";

 label define WPLOCALE
   1 "IN HOUSEHOLD"
   2 "LIVES ELSEWHERE";

 label define WOMREL
   1 "WIFE"
   2 "PARTNER";

 label define GOSCHOL
   1 "Yes"
   5 "No";

 label define VACA
   1 "YES"
   5 "NO";

 label define HIGRADE
   9 "9TH GRADE OR LESS"
  10 "10TH GRADE"
  11 "11TH GRADE"
  12 "12TH GRADE"
  13 "1 YEAR OF COLLEGE OR LESS"
  14 "2 YEARS OF COLLEGE"
  15 "3 YEARS OF COLLEGE"
  16 "4 YEARS OF COLLEGE/GRAD SCHOOL"
  17 "5 YEARS OF COLLEGE/GRAD SCHOOL"
  18 "6 YEARS OF COLLEGE/GRAD SCHOOL"
  19 "7 OR MORE YEARS OF COLLEGE AND/OR GRAD SCHOOL"
  99 "DON'T KNOW";

 label define COMPGRD
   1 "YES"
   5 "NO"
   9 "DON'T KNOW";

 label define DIPGED
   1 "HIGH SCHOOL DIPLOMA"
   2 "GED ONLY"
   3 "BOTH"
   5 "NEITHER"
   9 "DON'T KNOW";

 label define EARNHS_M
  13 "WINTER"
  14 "SPRING"
  15 "SUMMER"
  16 "FALL"
  99 "DON'T KNOW";

 label define EARNHS_Y
9999 "DON'T KNOW";

 label define CMHSGRAD
9999 "DON'T KNOW";

 label define HISCHGRD
   6 "6TH GRADE"
   8 "8TH GRADE"
   9 "9TH GRADE"
  10 "10TH GRADE"
  11 "11TH GRADE"
  12 "12TH GRADE"
  99 "DON'T KNOW";

 label define LSTGRADE
   0 "NO FORMAL SCHOOLING"
   9 "9TH GRADE"
  10 "10TH GRADE"
  11 "11TH GRADE"
  12 "12TH GRADE"
  97 "NOT ASCERTAINED";

 label define MYSCHOL_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  99 "Don't know";

 label define MYSCHOL_Y
9999 "Don't know";

 label define CMLSTSCH
9999 "Don't know";

 label define HAVEDEG
   1 "Yes"
   5 "No";

 label define DEGREES
   1 "ASSOCIATE'S DEGREE"
   2 "BACHELOR'S DEGREE"
   3 "MASTER'S DEGREE"
   4 "DOCTORATE DEGREE"
   5 "PROFESSIONAL SCHOOL DEGREE"
   9 "DON'T KNOW";

 label define EARNBA_M
  14 "SPRING"
  15 "SUMMER"
  16 "FALL"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define EARNBA_Y
9998 "REFUSED"
9999 "DON'T KNOW";

 label define CMBAGRAD
9998 "REFUSED"
9999 "DON'T KNOW";

 label define WTHPARNW
   1 "BOTH BIOLOGICAL OR ADOPTIVE PARENTS"
   2 "OTHER OR NO PARENTAL FIGURES";

 label define ONOWN
   1 "YES"
   5 "NO"
   8 "REFUSED";

 label define ONOWN18
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define INTACT
   1 "Yes"
   5 "No"
   8 "Refused";

 label define PARMARR
   1 "YES"
   5 "NO"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define INTACT18
   1 "YES"
   2 "NO"
   9 "DON'T KNOW";

 label define LVSIT14F
   1 "BIOLOGICAL MOTHER OR ADOPTIVE MOTHER"
   2 "OTHER MOTHER FIGURE"
   3 "NO MOTHER FIGURE";

 label define LVSIT14M
   1 "BIOLOGICAL FATHER OR ADOPTIVE FATHER"
   2 "STEP-FATHER"
   3 "NO FATHER FIGURE"
   4 "OTHER FATHER FIGURE";

 label define WOMRASDU
   1 "BIOLOGICAL MOTHER"
   2 "OTHER MOTHER FIGURE"
   3 "NO MOTHER FIGURE"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define MOMDEGRE
   1 "LESS THAN HIGH SCHOOL"
   2 "HIGH SCHOOL GRADUATE OR GED"
   3 "SOME COLLEGE, INCLUDING 2-YEAR DEGREES"
   4 "BACHELOR'S DEGREE OR HIGHER"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define MOMWORKD
   1 "FULL-TIME"
   2 "PART-TIME"
   3 "EQUAL AMOUNTS FULL-TIME AND PART-TIME"
   4 "NOT AT ALL (FOR PAY)"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define MOMFSTCH
   1 "LESS THAN 18 YEARS"
   2 "18-19 YEARS"
   3 "20-24 YEARS"
   4 "25-29 YEARS"
   5 "30 OR OLDER"
  96 "MOTHER-FIGURE HAD NO CHILDREN"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define MOM18
   1 "UNDER 18"
   2 "18-19"
   3 "20-24"
   4 "25 OR OLDER"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define MANRASDU
   1 "BIOLOGICAL FATHER"
   2 "STEP-FATHER"
   3 "NO FATHER FIGURE"
   4 "OTHER FATHER FIGURE"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define R_FOSTER
   1 "YES FOSTER"
   3 "NO FOSTER, NOT INTACT"
   5 "NO FOSTER, INTACT";

 label define EVRFSTER
   1 "Yes"
   5 "No";

 label define MNYFSTER
   1 "1 SETTING OR LOCATION"
   2 "2 SETTINGS OR LOCATIONS"
   3 "3 SETTINGS OR LOCATIONS"
  99 "DON'T KNOW";

 label define DURFSTER
   1 "LESS THAN SIX MONTHS"
   2 "AT LEAST SIX MONTHS, BUT LESS THAN A YEAR"
   3 "AT LEAST A YEAR BUT LESS THAN TWO YEARS"
   4 "AT LEAST TWO YEARS BUT LESS THAN THREE YEARS"
   5 "THREE YEARS OR MORE"
   9 "DON'T KNOW";

 label define TIMESMAR
   1 "1 TIME MARRIED"
   2 "2 TIMES MARRIED"
   3 "3 TIMES MARRIED"
  99 "DON'T KNOW";

 label define EVCOHAB1
   1 "YES"
   5 "NO"
   7 "NOT ASCERTAINED";

 label define NUMCOH1
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
  98 "REFUSED";

 label define EVCOHAB2
   1 "Yes"
   5 "No";

 label define NUMCOH2
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
  99 "DON'T KNOW";

 label define EVRCOHAB
   0 "NO"
   1 "YES";

 label define NUMWIFE
   0 "NEVER MARRIED"
   1 "1 TIME MARRIED"
   2 "2 TIMES MARRIED"
   3 "3 TIMES MARRIED"
 999 "DON'T KNOW";

 label define NUMCOHAB
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
 998 "REFUSED"
 999 "DON'T KNOW";

 label define EVERSEX
   1 "YES"
   5 "NO"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define RHADSEX
   0 "DON'T KNOW/REFUSED"
   1 "YES"
   2 "NO";

 label define SXMTONCE
   1 "Yes"
   5 "No";

 label define YNOSEX
   1 "AGAINST RELIGION OR MORALS"
   2 "DON'T WANT TO GET A FEMALE PREGNANT"
   3 "DON'T WANT TO GET A SEXUALLY TRANSMITTED DISEASE"
   4 "HAVEN'T FOUND THE RIGHT PERSON YET"
   5 "IN A RELATIONSHIP, BUT WAITING FOR THE RIGHT TIME"
   6 "OTHER"
   9 "DON'T KNOW";

 label define TALKPAR1
   1 "HOW TO SAY NO TO SEX"
   2 "METHODS OF BIRTH CONTROL"
   3 "WHERE TO GET BIRTH CONTROL"
   4 "SEXUALLY TRANSMITTED DISEASES"
   5 "HOW TO PREVENT HIV/AIDS"
   6 "HOW TO USE A CONDOM"
   7 "NONE OF THE ABOVE"
   8 "REFUSED";

 label define TALKPAR2
   1 "HOW TO SAY NO TO SEX"
   2 "METHODS OF BIRTH CONTROL"
   3 "WHERE TO GET BIRTH CONTROL"
   4 "SEXUALLY TRANSMITTED DISEASES"
   5 "HOW TO PREVENT HIV/AIDS"
   6 "HOW TO USE A CONDOM";

 label define TALKPAR3
   1 "How to say no to sex"
   2 "Methods of birth control"
   3 "Where to get birth control"
   4 "Sexually transmitted diseases"
   5 "How to prevent HIV/AIDS"
   6 "How to use a condom";

 label define TALKPAR4
   1 "How to say no to sex"
   2 "Methods of birth control"
   3 "Where to get birth control"
   4 "Sexually transmitted diseases"
   5 "How to prevent HIV/AIDS"
   6 "How to use a condom";

 label define TALKPAR5
   1 "How to say no to sex"
   2 "Methods of birth control"
   3 "Where to get birth control"
   4 "Sexually transmitted diseases"
   5 "How to prevent HIV/AIDS"
   6 "How to use a condom";

 label define TALKPAR6
   1 "HOW TO SAY NO TO SEX"
   2 "METHODS OF BIRTH CONTROL"
   3 "WHERE TO GET BIRTH CONTROL"
   5 "HOW TO PREVENT HIV/AIDS"
   6 "HOW TO USE A CONDOM";

 label define SEDNO
   1 "Yes"
   5 "No";

 label define SEDNOG
   1 "1ST GRADE"
   2 "2ND GRADE"
   3 "3RD GRADE"
   4 "4TH GRADE"
   5 "5TH GRADE"
   6 "6TH GRADE"
   7 "7TH GRADE"
   8 "8TH GRADE"
   9 "9TH GRADE"
  10 "10TH GRADE"
  11 "11TH GRADE"
  12 "12TH GRADE"
  96 "NOT IN SCHOOL WHEN RECEIVED INSTRUCTION"
  99 "DON'T KNOW";

 label define SEDNOSX
   1 "BEFORE"
   2 "AFTER"
   9 "DON'T KNOW";

 label define SEDBC
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define SEDBCG
   2 "2ND GRADE"
   3 "3RD GRADE"
   4 "4TH GRADE"
   5 "5TH GRADE"
   6 "6TH GRADE"
   7 "7TH GRADE"
   8 "8TH GRADE"
   9 "9TH GRADE"
  10 "10TH GRADE"
  11 "11TH GRADE"
  12 "12TH GRADE"
  13 "1ST YEAR OF COLLEGE"
  96 "NOT IN SCHOOL WHEN RECEIVED INSTRUCTION"
  99 "DON'T KNOW";

 label define SEDBCSX
   1 "Before"
   2 "After"
   9 "Don't know";

 label define SEDWHBC
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define SEDWHBCG
   2 "2nd grade"
   3 "3rd grade"
   4 "4th grade"
   5 "5th grade"
   6 "6th grade"
   7 "7th grade"
   8 "8th grade"
   9 "9th grade"
  10 "10th grade"
  11 "11th grade"
  12 "12th grade"
  13 "1st year of college"
  96 "Not in school when received instruction"
  99 "Don't know";

 label define SEDWBCSX
   1 "Before"
   2 "After"
   9 "Don't know";

 label define SEDCOND
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define SEDCONDG
   2 "2ND GRADE"
   3 "3RD GRADE"
   4 "4TH GRADE"
   5 "5TH GRADE"
   6 "6TH GRADE"
   7 "7TH GRADE"
   8 "8TH GRADE"
   9 "9TH GRADE"
  10 "10TH GRADE"
  11 "11TH GRADE"
  12 "12TH GRADE";

 label define SEDCONSX
   1 "BEFORE"
   2 "AFTER";

 label define SEDSTD
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define SEDSTDG
   2 "2ND GRADE"
   3 "3RD GRADE"
   4 "4TH GRADE"
   5 "5TH GRADE"
   6 "6TH GRADE"
   7 "7TH GRADE"
   8 "8TH GRADE"
   9 "9TH GRADE"
  10 "10TH GRADE"
  11 "11TH GRADE"
  12 "12TH GRADE"
  14 "2ND YEAR OF COLLEGE"
  96 "NOT IN SCHOOL WHEN RECEIVED INSTRUCTION"
  99 "DON'T KNOW";

 label define SEDSTDSX
   1 "Before"
   2 "After"
   9 "Don't know";

 label define SEDHIV
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define SEDHIVG
   1 "1st grade"
   2 "2nd grade"
   3 "3rd grade"
   4 "4th grade"
   5 "5th grade"
   6 "6th grade"
   7 "7th grade"
   8 "8th grade"
   9 "9th grade"
  10 "10th grade"
  11 "11th grade"
  12 "12th grade"
  96 "Not in school when received instruction"
  99 "Don't know";

 label define SEDHIVSX
   1 "Before"
   2 "After"
   9 "Don't know";

 label define SEDABST
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define SEDABSTG
   1 "1ST GRADE"
   2 "2ND GRADE"
   3 "3RD GRADE"
   4 "4TH GRADE"
   5 "5TH GRADE"
   6 "6TH GRADE"
   7 "7TH GRADE"
   8 "8TH GRADE"
   9 "9TH GRADE"
  10 "10TH GRADE"
  11 "11TH GRADE"
  12 "12TH GRADE"
  13 "1ST YEAR OF COLLEGE"
  96 "NOT IN SCHOOL WHEN RECEIVED INSTRUCTION"
  99 "DON'T KNOW";

 label define SEDABSSX
   1 "Before"
   2 "After"
   9 "Don't know";

 label define EVEROPER
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define TYPEOPER
   1 "VASECTOMY"
   2 "OTHER OPERATION";

 label define STEROPER
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define VASEC_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  99 "Don't know";

 label define VASEC_Y
9999 "Don't know";

 label define CMVASEC
9999 "Don't know";

 label define PLCSTROP
   1 "PRIVATE DOCTOR'S OFFICE"
   2 "HMO FACILITY"
   3 "COMMUNITY HEALTH CLINIC, COMMUNITY CLINIC, PUBLIC HEALTH CLINIC"
   5 "EMPLOYER OR COMPANY CLINIC"
   6 "SCHOOL OR SCHOOL-BASED CLINIC"
   7 "HOSPITAL OUTPATIENT CLINIC"
   9 "HOSPITAL REGULAR ROOM"
  10 "URGENT CARE CENTER, URGI-CARE, OR WALK-IN FACILITY"
  20 "SOME OTHER PLACE";

 label define RVRSVAS
   1 "Yes"
   5 "No";

 label define RSURGSTR
   0 "NO"
   1 "YES";

 label define FATHPOSS
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FATHDIFF
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define RSTRSTAT
   0 "NOT STERILE"
   1 "SURGICALLY STERILE"
   2 "NONSURGICALLY STERILE";

 label define LIFEPRT
   1 "ONE"
   2 "TWO"
   3 "THREE"
   4 "FOUR"
   5 "FIVE"
   6 "SIX"
   7 "SEVEN OR MORE"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define LIFEPRTS
   0 "NONE"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 PARTNERS"
   7 "7 OR MORE PARTNERS";

 label define SXMON12
   1 "Yes"
   5 "No"
   8 "Refused";

 label define MON12PRT
   0 "NONE"
   1 "ONE"
   2 "TWO"
   3 "THREE"
   4 "FOUR"
   5 "FIVE"
   6 "SIX"
   7 "SEVEN OR MORE"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define MON12PRTS
   0 "NONE"
   1 "1 partner"
   2 "2 partners"
   3 "3 partners"
   4 "4 partners"
   5 "5 partners"
   6 "6 partners"
   7 "7 or more partners";

 label define SEXSTAT
   0 "NEVER HAD SEX"
   1 "1 PARTNER EVER/SEX IN LAST 12 MOS/SEX ONLY ONCE"
   2 "1 PARTNER EVER/SEX IN LAST 12 MOS/SEX > ONCE"
   3 "1 PARTNER EVER/NO SEX IN LAST 12 MOS/SEX ONLY ONCE"
   4 "1 PARTNER EVER/NO SEX IN LAST 12 MOS/SEX > ONCE"
   5 ">1 PARTNER EVER/NO SEX IN LAST 12 MOS"
   6 ">1 PARTNER EVER/SEX IN LAST 12 MOS";

 label define P12MOCONO
   1 "Yes"
   5 "No"
   8 "Refused";

 label define P12MOCON
   1 "EVERY TIME"
   2 "MOST OF THE TIME"
   3 "ABOUT HALF OF THE TIME"
   4 "SOME OF THE TIME"
   5 "NONE OF THE TIME"
   8 "REFUSED";

 label define SEXFREQ
   0 "NONE"
   1 "1"
   2 "2"
   3 "3"
   4 "4"
   5 "5"
 998 "REFUSED"
 999 "DON'T KNOW";

 label define CONFREQ
   0 "NONE"
   1 "1"
   2 "2"
   3 "3"
   4 "4"
   5 "5";

 label define P1RLTN1
   1 "Yes"
   5 "No"
   8 "Refused";

 label define P1CURRWIFE
   1 "Yes"
   5 "No";

 label define P1CURRSEP
   1 "Yes"
   5 "No";

 label define P1RLTN2
   1 "Yes"
   5 "No";

 label define P1COHABIT
   1 "Yes"
   5 "No";

 label define P1SXLAST_M
  13 "WINTER"
  14 "SPRING"
  15 "SUMMER"
  16 "FALL"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define P1SXLAST_Y
9998 "Refused"
9999 "Don't know";

 label define CMLSXP1
9998 "Refused"
9999 "Don't know";

 label define P2RLTN1
   1 "Yes"
   5 "No";

 label define P2CURRWIFE
   1 "YES";

 label define P2CURRSEP
   1 "Yes";

 label define P2RLTN2
   1 "Yes"
   5 "No";

 label define P2COHABIT
   5 "NO";

 label define P2SXLAST_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define P2SXLAST_Y
9998 "Refused"
9999 "Don't know";

 label define CMLSXP2
9998 "Refused"
9999 "Don't know";

 label define P3RLTN1
   1 "Yes"
   5 "No";

 label define P3CURRSEP
   1 "Yes";

 label define P3RLTN2
   1 "Yes"
   5 "No";

 label define P3COHABIT
   5 "No";

 label define P3SXLAST_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define P3SXLAST_Y
9998 "Refused"
9999 "Don't know";

 label define CMLSXP3
9998 "Refused"
9999 "Don't know";

 label define P1RELATION
   1 "CURRENT WIFE, NOT SEPARATED"
   2 "CURRENT WIFE, SEPARATED"
   3 "CURRENT COHABITING PARTNER"
   4 "FORMER WIFE"
   5 "FORMER COHABITING PARTNER"
   6 "NEVER IN A MARITAL OR COHAB UNION WITH P"
   8 "REFUSED";

 label define P2RELATION
   1 "CURRENT WIFE, NOT SEPARATED"
   2 "CURRENT WIFE, SEPARATED"
   4 "FORMER WIFE"
   5 "FORMER COHABITING PARTNER"
   6 "NEVER IN A MARITAL OR COHAB UNION WITH P";

 label define P3RELATION
   2 "CURRENT WIFE, SEPARATED"
   4 "FORMER WIFE"
   5 "FORMER COHABITING PARTNER"
   6 "NEVER IN A MARITAL OR COHAB UNION WITH P";

 label define FIRST
   1 "YES, [NAME OF LAST P]"
   2 "YES, [NAME OF 2ND-TO-LAST P]"
   3 "YES,[NAME OF 3RD-TO-LAST P]"
   5 "NO";

 label define MARRDATE_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  99 "Don't know";

 label define MARRDATE_Y
9998 "Refused"
9999 "Don't know";

 label define CMCURMAR
9998 "Refused"
9999 "Don't know";

 label define HISAGEM
  99 "DON'T KNOW";

 label define LIVTOGWF
   1 "Yes"
   5 "No";

 label define STRTWFCP_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  99 "Don't know";

 label define STRTWFCP_Y
9999 "Don't know";

 label define CMCURCOH
9999 "Don't know";

 label define HISAGEC
  99 "DON'T KNOW";

 label define CMSTRTWP
9999 "Don't know";

 label define ENGATHEN
   1 "YES, ENGAGED TO BE MARRIED"
   3 "NOT ENGAGED BUT HAD DEFINITE PLANS TO GET MARRIED"
   5 "NO, NEITHER ENGAGED NOR HAD DEFINITE PLANS"
   9 "DON'T KNOW";

 label define WILLMARR
   1 "DEFINITELY YES"
   2 "PROBABLY YES"
   3 "PROBABLY  NO"
   4 "DEFINITELY NO"
   9 "DON'T KNOW";

 label define CWPDOB_M
  14 "SPRING"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define CWPDOB_Y
9998 "Refused"
9999 "Don't know";

 label define CMCWPDOB
9998 "REFUSED"
9999 "DON'T KNOW";

 label define CWPAGE
  98 "REFUSED";

 label define CWPMULT
   1 "YES, MULTIPLE RACES REPORTED"
   2 "NO, MULTIPLE RACES NOT REPORTED"
   3 "NA/DK/RF";

 label define CWPRACE
   1 "BLACK"
   2 "WHITE"
   3 "OTHER"
   4 "NA/DK/RF";

 label define CWPHRACE
   1 "HISPANIC"
   2 "NON-HISPANIC WHITE"
   3 "NON-HISPANIC BLACK"
   4 "NON-HISPANIC OTHER"
   5 "NA/DK/RF";

 label define CWPNRACE
   1 "HISPANIC"
   2 "NON-HISPANIC WHITE, SINGLE RACE"
   3 "NON-HISPANIC BLACK, SINGLE RACE"
   4 "NON-HISPANIC OTHER OR MULTIPLE RACE"
   5 "NA/DK/RF";

 label define CWPEDUCN
   1 "LESS THAN HIGH SCHOOL"
   2 "HIGH SCHOOL GRADUATE OR GED"
   3 "SOME COLLEGE BUT NO DEGREE"
   4 "2-YEAR COLLEGE DEGREE (E G , ASSOCIATE'S DEGREE)"
   5 "4-YEAR COLLEGE GRADUATE (E G , BA, BS)"
   6 "GRADUATE OR PROFESSIONAL SCHOOL"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define CWPBORN
   1 "Yes"
   5 "No";

 label define CWPMARBF
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define CWPSX1WN_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define CWPSX1WN_Y
9998 "Refused"
9999 "Don't know";

 label define CWPSX1AG
  98 "REFUSED"
  99 "DON'T KNOW";

 label define CMFSXCWP
9998 "Refused"
9999 "Don't know";

 label define AGEFSXCWP
99998 "REFUSED"
99999 "DON'T KNOW";

 label define CWPSX1RL
   1 "MARRIED TO HER"
   2 "ENGAGED TO HER, AND LIVING TOGETHER"
   3 "ENGAGED TO HER, BUT NOT LIVING TOGETHER"
   4 "LIVING TOGETHER IN A SEXUAL RELATIONSHIP, BUT NOT ENGAGED"
   5 "GOING WITH HER OR GOING STEADY"
   6 "GOING OUT WITH HER ONCE IN A WHILE"
   7 "JUST FRIENDS"
   8 "HAD JUST MET HER"
   9 "SOMETHING ELSE"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define CWPFUSE
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPFMET01
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   3 "VASECTOMY OR MALE STERILIZATION"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   8 "HORMONAL IMPLANT (NORPLANT OR IMPLANON)"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH (ORTHO-EVRA)"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE";

 label define CWPFMET02
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   3 "VASECTOMY OR MALE STERILIZATION"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH (ORTHO-EVRA)"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE";

 label define CWPFMET03
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   3 "VASECTOMY OR MALE STERILIZATION"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH (ORTHO-EVRA)";

 label define CWPOPSTR
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define CWPTYPOP1
   1 "TUBAL LIGATION OR TUBAL STERILIZATION"
   2 "HYSTERECTOMY"
   3 "SOMETHING ELSE"
   9 "DON'T KNOW";

 label define CWPTYPOP2
   2 "HYSTERECTOMY"
   3 "SOMETHING ELSE";

 label define CWPTOTST
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define CWPREVST
   1 "Yes"
   5 "No";

 label define PSURGSTR
   0 "NO"
   1 "YES";

 label define CWPPOSS
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPDIFF
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PSTRSTAT
   0 "NOT STERILE"
   1 "SURGICALLY STERILE"
   2 "NONSURGICALLY STERILE";

 label define CWPLSXWN_M
  98 "REFUSED"
  99 "DON'T KNOW";

 label define CWPLSXWN_Y
9998 "Refused"
9999 "Don't know";

 label define CMLSXCWP
9998 "Refused"
9999 "Don't know";

 label define CWPLUSE1
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPLMET11
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   3 "VASECTOMY OR MALE STERILIZATION"
  10 "SOMETHING ELSE";

 label define CWPLMET12
   2 "WITHDRAWAL OR PULLING OUT"
  10 "SOMETHING ELSE";

 label define CWPLUSE2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define DKCWPLUSE
   2 "NEVER KNEW";

 label define CWPLMET201
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT (NORPLANT OR IMPLANON)"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH (ORTHO-EVRA)"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE"
  99 "DON'T KNOW";

 label define CWPLMET202
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT (NORPLANT OR IMPLANON)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE";

 label define DKCWPLMET
   2 "Never knew";

 label define CWPLSXUSE
   0 "NONE OR NO METHOD IDENTIFIED"
   1 "ANY METHOD IDENTIFIED";

 label define CWPRECBC
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define CWPALLBC01
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   3 "VASECTOMY OR MALE STERILIZATION"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT (NORPLANT OR IMPLANON)"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH (ORTHO-EVRA)"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE"
  99 "DON'T KNOW";

 label define CWPALLBC02
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   3 "VASECTOMY OR MALE STERILIZATION"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT (NORPLANT OR IMPLANON)"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH (ORTHO-EVRA)"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE";

 label define CWPALLBC03
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   3 "VASECTOMY OR MALE STERILIZATION"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT (NORPLANT OR IMPLANON)"
   9 "RHYTHM OR SAFE PERIOD"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE";

 label define CWPALLBC04
   2 "WITHDRAWAL OR PULLING OUT"
   4 "PILL"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   9 "RHYTHM OR SAFE PERIOD"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)";

 label define CWPBCMST
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  99 "Don't know";

 label define CONDFREQ
 999 "DON'T KNOW";

 label define CWPNOFRQ
   1 "EVERY TIME"
   2 "MOST OF THE TIME"
   3 "ABOUT HALF OF THE TIME"
   4 "SOME OF THE TIME"
   5 "NONE OF THE TIME"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define CWPBIOKD
   1 "Yes"
   5 "No";

 label define CWPNUMKD
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define PARTFATH
   0 "NO"
   1 "YES";

 label define CWPCHSEX
   1 "MALE"
   2 "FEMALE";

 label define CWPCHDOB_M
  13 "WINTER"
  16 "FALL"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define CWPCHDOB_Y
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB
9998 "Refused"
9999 "Don't know";

 label define CWPCHMAR
   1 "Yes"
   5 "No";

 label define CWPCHRES
   1 "Yes"
   5 "No";

 label define CWPCHLRN
   1 "DURING THE PREGNANCY"
   2 "AFTER THE CHILD WAS BORN";

 label define CWPCHLIV1
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "AWAY AT SCHOOL OR COLLEGE"
   4 "LIVING ON OWN"
   5 "LIVING WITH OTHER RELATIVES"
   6 "DECEASED"
   7 "PLACED FOR ADOPTION OR ADOPTED"
   8 "PLACED IN FOSTER CARE"
   9 "SOMEPLACE ELSE";

 label define CWPCHLIV2
   3 "AWAY AT SCHOOL OR COLLEGE"
   5 "LIVING WITH OTHER RELATIVES";

 label define CWPCHAGE
   1 "LESS THAN 5 YEARS OLD"
   2 "5-18 YEARS OLD"
   3 "19 YEARS OR OLDER";

 label define CWPCHSIG
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define CWPCHCRT
   1 "Yes"
   5 "No";

 label define CWPCHGEN
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define CWPCHEVR
   1 "Yes";

 label define CWPCHFAR
99999 "DON'T KNOW";

 label define CWPCHWNT
   1 "DEFINITELY YES"
   2 "PROBABLY YES"
   3 "PROBABLY NO"
   4 "DEFINITELY NO";

 label define CWPCHSON
   1 "TOO SOON"
   2 "RIGHT TIME"
   3 "LATER"
   4 "DIDN'T CARE";

 label define CWPCHHPY
   0 "VERY UNHAPPY"
   5 "5"
  10 "VERY HAPPY";

 label define CWPCHSEX2
   1 "Male"
   2 "Female";

 label define CWPCHDOB_M2
  13 "WINTER"
  15 "SUMMER"
  16 "FALL"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define CWPCHDOB_Y2
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB2
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT2
   1 "Yes"
   5 "No";

 label define CWPCHMAR2
   1 "Yes"
   5 "No";

 label define CWPCHRES2
   1 "Yes"
   5 "No";

 label define CWPCHLRN2
   1 "DURING THE PREGNANCY";

 label define CWPCHLIV10
   1 "IN THIS HOUSEHOLD FULL-TIME"
   3 "AWAY AT SCHOOL OR COLLEGE"
   4 "LIVING ON OWN"
   5 "LIVING WITH OTHER RELATIVES"
   6 "DECEASED"
   9 "SOMEPLACE ELSE";

 label define CWPCHAGE2
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older";

 label define CWPCHSIG2
   1 "Yes"
   5 "No";

 label define CWPCHCRT2
   1 "Yes"
   5 "No";

 label define CWPCHGEN2
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define CWPCHEVR2
   1 "Yes"
   5 "No";

 label define CWPCHFAR2
99999 "DON'T KNOW";

 label define CWPCHWNT2
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define CWPCHSON2
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care";

 label define CWPCHHPY2
   0 "Very unhappy"
   5 "5"
  10 "Very happy";

 label define CWPCHSEX3
   1 "Male"
   2 "Female";

 label define CWPCHDOB_M3
  99 "DON'T KNOW";

 label define CWPCHDOB_Y3
9999 "Don't know";

 label define CMCHDOB3
9999 "Don't know";

 label define MULTBIRT3
   1 "Yes";

 label define CWPCHMAR3
   1 "Yes"
   5 "No";

 label define CWPCHRES3
   1 "Yes";

 label define CWPCHLRN3
   1 "During the pregnancy";

 label define CWPCHLIV19
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "AWAY AT SCHOOL OR COLLEGE"
   4 "LIVING ON OWN"
   5 "LIVING WITH OTHER RELATIVES"
   6 "DECEASED"
   9 "SOMEPLACE ELSE";

 label define CWPCHAGE3
   1 "LESS THAN 5 YEARS OLD"
   2 "5-18 YEARS OLD";

 label define CWPCHSIG3
   1 "Yes"
   5 "No";

 label define CWPCHCRT3
   5 "No";

 label define CWPCHGEN3
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define CWPCHEVR3
   1 "Yes";

 label define CWPCHFAR3
99999 "DON'T KNOW";

 label define CWPCHWNT3
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define CWPCHSON3
   1 "TOO SOON"
   2 "RIGHT TIME"
   3 "LATER"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define CWPCHHPY3
   0 "Very unhappy"
   5 "5"
  10 "Very happy";

 label define CWPCHSEX4
   1 "Male"
   2 "Female";

 label define CWPCHDOB_M4
  99 "Don't know";

 label define CWPCHDOB_Y4
9999 "Don't know";

 label define CMCHDOB4
9999 "Don't know";

 label define MULTBIRT4
   1 "Yes";

 label define CWPCHRES4
   1 "Yes"
   5 "No";

 label define CWPCHLRN4
   1 "During the pregnancy";

 label define CWPCHLIV28
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   4 "LIVING ON OWN"
   5 "LIVING WITH OTHER RELATIVES";

 label define CWPCHAGE4
   1 "LESS THAN 5 YEARS OLD";

 label define CWPCHSIG4
   1 "Yes"
   5 "No";

 label define CWPCHCRT4
   5 "No";

 label define CWPCHGEN4
   5 "No";

 label define CWPCHEVR4
   1 "Yes";

 label define CWPCHFAR4
99998 "REFUSED";

 label define CWPCHWNT4
   1 "DEFINITELY YES"
   2 "PROBABLY YES"
   3 "PROBABLY NO"
   4 "DEFINITELY NO"
   8 "REFUSED";

 label define CWPCHSON4
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care";

 label define CWPCHHPY4
   5 "5"
  10 "VERY HAPPY";

 label define CWPCHSEX5
   1 "Male"
   2 "Female";

 label define CWPCHRES5
   1 "Yes";

 label define CWPCHLIV37
   1 "IN THIS HOUSEHOLD FULL-TIME"
   5 "LIVING WITH OTHER RELATIVES";

 label define CWPCHSIG5
   1 "Yes";

 label define CWPCHCRT5
   5 "No";

 label define CWPCHGEN5
   5 "No";

 label define CWPCHEVR5
   1 "Yes";

 label define CWPCHFAR5
99999 "DON'T KNOW";

 label define CWPCHWNT5
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused";

 label define CWPCHSON5
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care";

 label define CWPCHHPY5
  10 "VERY HAPPY";

 label define CWPCHSEX6
   1 "Male"
   2 "Female";

 label define CWPCHRES6
   1 "Yes";

 label define CWPCHLIV46
   1 "IN THIS HOUSEHOLD FULL-TIME";

 label define CWPCHSIG6
   1 "Yes";

 label define CWPCHCRT6
   5 "No";

 label define CWPCHGEN6
   5 "No";

 label define CWPCHWNT6
   1 "DEFINITELY YES"
   2 "PROBABLY YES"
   4 "DEFINITELY NO";

 label define CWPCHSON6
   2 "RIGHT TIME"
   8 "REFUSED";

 label define CWPCHHPY6
  10 "VERY HAPPY";

 label define CWPCHSEX7
   1 "Male"
   2 "Female";

 label define CWPCHLIV55
   1 "In this household full-time";

 label define CWPCHWNT7
   1 "DEFINITELY YES"
   2 "PROBABLY YES"
   8 "REFUSED";

 label define CWPCHSON7
   1 "TOO SOON"
   2 "RIGHT TIME";

 label define CWPCHHPY7
  10 "Very happy";

 label define CWPCHSEX8
   1 "Male"
   2 "Female";

 label define CWPCHLIV64
   1 "In this household full-time";

 label define CWPCHWNT8
   2 "PROBABLY YES"
   8 "REFUSED";

 label define CWPCHSON8
   2 "RIGHT TIME";

 label define CWPCHHPY8
  10 "Very happy";

 label define CWPCHSEX9
   2 "FEMALE";

 label define CWPCHLIV73
   1 "In this household full-time";

 label define CWPCHWNT9
   8 "REFUSED";

 label define CWPPRGNW
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define CWPTRYPG
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define CWPCPWNT
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define CWPCPSON
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care";

 label define CWPCPHPY
   5 "5"
  10 "Very happy";

 label define C_OKAKIDS
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN";

 label define CWPOTKID
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define CWPOKNUM
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
   4 "4 CHILDREN";

 label define CWPOKWTH
   1 "Yes"
   5 "No";

 label define CWPOKWTHN
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children";

 label define CWPOKSEX
   1 "Male"
   2 "Female";

 label define CWPOKAD
   1 "YES, ADOPTED"
   3 "YES, BECAME GUARDIAN"
   5 "NO, NEITHER";

 label define CWPOKTRY
   1 "Yes"
   5 "No";

 label define CWPOKTHR
   1 "YES, TRYING TO ADOPT"
   3 "YES, TRYING TO BECOME GUARDIAN"
   5 "NO, NEITHER"
   9 "DON'T KNOW";

 label define CWPOKLIV1
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "AWAY AT SCHOOL OR COLLEGE"
   4 "LIVING ON OWN"
   5 "LIVING WITH OTHER RELATIVES"
   6 "DECEASED"
   7 "SOMEPLACE ELSE";

 label define CWPOKLIV2
   3 "Away at school or college"
   5 "Living with other relatives";

 label define CWPOKFAR
99999 "Don't know";

 label define CWPOKAGE
  98 "REFUSED";

 label define CWPOKSEX2
   1 "Male"
   2 "Female";

 label define CWPOKAD2
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither";

 label define CWPOKTRY2
   1 "Yes"
   5 "No";

 label define CWPOKTHR2
   1 "YES, TRYING TO ADOPT"
   3 "YES, TRYING TO BECOME GUARDIAN"
   5 "NO, NEITHER";

 label define CWPOKLIV8
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "AWAY AT SCHOOL OR COLLEGE"
   4 "LIVING ON OWN"
   5 "LIVING WITH OTHER RELATIVES"
   7 "SOMEPLACE ELSE";

 label define CWPOKLIV9
   5 "LIVING WITH OTHER RELATIVES";

 label define CWPOKFAR2
99999 "Don't know";

 label define CWPOKSEX3
   1 "Male"
   2 "Female";

 label define CWPOKAD3
   3 "YES, BECAME GUARDIAN"
   5 "NO, NEITHER";

 label define CWPOKTRY3
   5 "No";

 label define CWPOKTHR3
   1 "Yes, trying to adopt"
   3 "Yes, trying to become guardian"
   5 "No, neither";

 label define CWPOKLIV15
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   4 "LIVING ON OWN"
   5 "LIVING WITH OTHER RELATIVES"
   7 "SOMEPLACE ELSE";

 label define CWPOKLIV16
   5 "Living with other relatives";

 label define CWPOKFAR3
99999 "Don't know";

 label define CWPOKSEX4
   1 "Male"
   2 "Female";

 label define CWPOKAD4
   5 "NO, NEITHER";

 label define CWPOKTHR4
   5 "No, neither";

 label define CWPOKLIV22
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   4 "LIVING ON OWN"
   7 "SOMEPLACE ELSE";

 label define CWPOKLIV23
   5 "Living with other relatives";

 label define CWPOKFAR4
99999 "DON'T KNOW";

 label define CWPOKSEX5
   1 "Male"
   2 "Female";

 label define CWPOKAD5
   3 "Yes, became guardian"
   5 "No, neither";

 label define CWPOKTRY5
   5 "No";

 label define CWPOKTHR5
   5 "No, neither";

 label define CWPOKLIV29
   1 "IN THIS HOUSEHOLD FULL-TIME"
   4 "LIVING ON OWN"
   7 "SOMEPLACE ELSE";

 label define CWPOKSEX6
   1 "MALE";

 label define CWPOKAD6
   5 "No, neither";

 label define CWPOKTHR6
   5 "No, neither";

 label define CWPOKLIV36
   1 "In this household full-time";

 label define CWPOKSEX7
   2 "Female";

 label define CWPOKAD7
   5 "No, neither";

 label define CWPOKTHR7
   5 "No, neither";

 label define CWPOKLIV43
   2 "IN THIS HOUSEHOLD PART-TIME";

 label define CWPOKSEX8
   1 "Male";

 label define CWPOKAD8
   5 "No, neither";

 label define CWPOKTHR8
   5 "No, neither";

 label define CWPOKLIV50
   2 "In this household part-time";

 label define C_NBAKIDS
   0 "None"
   1 "1 child"
   2 "2 children";

 label define CWPNBEVR
   1 "Yes"
   5 "No";

 label define CWPNBNUM
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children";

 label define CWPNBREL
   1 "YES, BY BLOOD"
   3 "YES, BY MARRIAGE"
   5 "NO";

 label define CWPNBFOS
   1 "Yes"
   5 "No";

 label define CWPNBSEX
   1 "Male"
   2 "Female";

 label define CWPNBAD
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither";

 label define CWPNBTRY
   1 "Yes"
   5 "No";

 label define CWPNBTHR
   5 "No, neither";

 label define CWPNBLIV1
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "AWAY AT SCHOOL OR COLLEGE"
   4 "LIVING ON OWN"
   5 "LIVING WITH OTHER RELATIVES"
   6 "DECEASED"
   7 "SOMEPLACE ELSE"
   9 "DON'T KNOW";

 label define CWPNBFAR
99999 "Don't know";

 label define CWPNBREL2
   1 "Yes, by blood"
   3 "Yes, by marriage"
   5 "No";

 label define CWPNBFOS2
   1 "Yes"
   5 "No";

 label define CWPNBSEX2
   1 "Male"
   2 "Female";

 label define CWPNBAD2
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither";

 label define CWPNBTRY2
   1 "Yes"
   5 "No";

 label define CWPNBTHR2
   5 "No, neither";

 label define CWPNBLIV8
   1 "IN THIS HOUSEHOLD FULL-TIME"
   3 "AWAY AT SCHOOL OR COLLEGE"
   4 "LIVING ON OWN"
   5 "LIVING WITH OTHER RELATIVES"
   7 "SOMEPLACE ELSE"
   9 "DON'T KNOW";

 label define CWPNBFAR2
99999 "Don't know";

 label define CWPNBREL3
   1 "Yes, by blood"
   3 "Yes, by marriage"
   5 "No";

 label define CWPNBFOS3
   1 "Yes"
   5 "No";

 label define CWPNBSEX3
   1 "Male"
   2 "Female";

 label define CWPNBAD3
   3 "Yes, became guardian"
   5 "No, neither";

 label define CWPNBTRY3
   1 "Yes"
   5 "No";

 label define CWPNBTHR3
   5 "No, neither";

 label define CWPNBLIV15
   1 "IN THIS HOUSEHOLD FULL-TIME"
   4 "LIVING ON OWN"
   5 "LIVING WITH OTHER RELATIVES"
   7 "SOMEPLACE ELSE"
   9 "DON'T KNOW";

 label define CWPNBFAR3
99999 "Don't know";

 label define CWPNBREL4
   1 "Yes, by blood"
   3 "Yes, by marriage"
   5 "No";

 label define CWPNBFOS4
   1 "Yes"
   5 "No";

 label define CWPNBSEX4
   1 "Male"
   2 "Female";

 label define CWPNBAD4
   3 "Yes, became guardian"
   5 "No, neither";

 label define CWPNBTRY4
   1 "Yes"
   5 "No";

 label define CWPNBTHR4
   5 "No, neither";

 label define CWPNBLIV22
   1 "IN THIS HOUSEHOLD FULL-TIME"
   5 "LIVING WITH OTHER RELATIVES"
   7 "SOMEPLACE ELSE";

 label define CWPNBFAR4
99999 "Don't know";

 label define CWPNBREL5
   5 "No";

 label define CWPNBFOS5
   1 "Yes";

 label define CWPNBSEX5
   2 "Female";

 label define CWPNBAD5
   3 "Yes, became guardian"
   5 "No, neither";

 label define CWPNBTRY5
   5 "No";

 label define CWPNBTHR5
   5 "No, neither";

 label define CWPNBLIV29
   7 "SOMEPLACE ELSE"
   9 "DON'T KNOW";

 label define CWPNBREL6
   5 "No";

 label define CWPNBFOS6
   1 "Yes";

 label define CWPNBSEX6
   2 "Female";

 label define CWPNBAD6
   3 "Yes, became guardian"
   5 "No, neither";

 label define CWPNBTRY6
   5 "No";

 label define CWPNBTHR6
   5 "No, neither";

 label define CWPNBLIV36
   7 "Someplace else"
   9 "Don't know";

 label define CWPNBREL7
   5 "No";

 label define CWPNBFOS7
   1 "Yes";

 label define CWPNBSEX7
   2 "Female";

 label define CWPNBAD7
   5 "No, neither";

 label define CWPNBTHR7
   5 "No, neither";

 label define CWPNBLIV43
   9 "DON'T KNOW";

 label define CWPNBREL8
   5 "No";

 label define CWPNBFOS8
   1 "Yes";

 label define CWPNBSEX8
   2 "Female";

 label define CWPNBAD8
   5 "No, neither";

 label define CWPNBTHR8
   5 "No, neither";

 label define CWPNBLIV50
   9 "Don't know";

 label define CWPNBREL9
   5 "No";

 label define CWPNBFOS9
   1 "Yes";

 label define CWPNBSEX9
   2 "Female";

 label define CWPNBAD9
   5 "No, neither";

 label define CWPNBTHR9
   5 "No, neither";

 label define CWPNBLIV57
   9 "Don't know";

 label define CWPNBREL10
   5 "No";

 label define CWPNBFOS10
   1 "Yes";

 label define CWPNBSEX10
   1 "Male";

 label define CWPNBAD10
   5 "No, neither";

 label define CWPNBTHR10
   5 "No, neither";

 label define CWPNBLIV64
   9 "Don't know";

 label define MARDATEN_M
  13 "WINTER"
  15 "SUMMER"
  99 "DON'T KNOW";

 label define MARDATEN_Y
9999 "Don't know";

 label define CMMARP
9999 "DON'T KNOW";

 label define LIVTOGN
   1 "Yes"
   5 "No";

 label define STRTLIVE_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STRTLIVE_Y
9998 "Refused"
9999 "Don't know";

 label define CMCOHP
9998 "Refused"
9999 "Don't know";

 label define AGELIV
  98 "REFUSED"
  99 "DON'T KNOW";

 label define CMUNIONP
9998 "Refused"
9999 "Don't know";

 label define ENGAGTHN
   1 "YES, ENGAGED TO BE MARRIED"
   3 "NOT ENGAGED BUT HAD DEFINITE PLANS TO GET MARRIED"
   5 "NO, NEITHER ENGAGED NOR HAD DEFINITE PLANS"
   9 "DON'T KNOW";

 label define MARREND
   2 "DIVORCE"
   3 "ANNULMENT"
   4 "SEPARATION";

 label define DIVORFIN_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  99 "Don't know";

 label define STOPLIVE_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STOPLIVE_Y
9998 "Refused"
9999 "Don't know";

 label define CMSTOPP
9998 "Refused"
9999 "Don't know";

 label define LIVTOGN2
   1 "Yes"
   5 "No";

 label define STRTLIVE_M2
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  99 "Don't know";

 label define STRTLIVE_Y2
9999 "Don't know";

 label define CMCOHP2
9999 "Don't know";

 label define AGELIV2
  99 "Don't know";

 label define CMUNIONP2
9999 "Don't know";

 label define ENGAGTHN2
   1 "YES, ENGAGED TO BE MARRIED"
   3 "NOT ENGAGED BUT HAD DEFINITE PLANS TO GET MARRIED"
   5 "NO, NEITHER ENGAGED NOR HAD DEFINITE PLANS";

 label define MARREND2
   2 "DIVORCE"
   4 "SEPARATION";

 label define DIVORFIN_M2
  99 "Don't know";

 label define DIVORFIN_Y2
9999 "Don't know";

 label define CMDIVP2
9999 "Don't know";

 label define STOPLIVE_M2
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  99 "Don't know";

 label define MARDATEN_M3
  14 "SPRING";

 label define LIVTOGN3
   1 "Yes"
   5 "No";

 label define STRTLIVE_M3
  13 "WINTER"
  15 "SUMMER"
  16 "FALL"
  99 "DON'T KNOW";

 label define ENGAGTHN3
   1 "YES, ENGAGED TO BE MARRIED"
   3 "NOT ENGAGED BUT HAD DEFINITE PLANS TO GET MARRIED"
   5 "NO, NEITHER ENGAGED NOR HAD DEFINITE PLANS";

 label define MARREND3
   2 "Divorce"
   4 "Separation";

 label define DIVORFIN_M3
  99 "Don't know";

 label define DIVORFIN_Y3
9999 "Don't know";

 label define CMDIVP3
9999 "DON'T KNOW";

 label define STOPLIVE_M3
  13 "WINTER"
  14 "SPRING"
  99 "DON'T KNOW";

 label define CURRPRTS
   0 "INAPP/DK/RF"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS";

 label define PXCURR
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCURRPRT
   0 "NO"
   1 "YES";

 label define PXMARRY
   1 "DEFINITELY YES"
   2 "PROBABLY YES"
   3 "PROBABLY NO"
   4 "DEFINITELY NO"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define PXCURR2
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define PXCURRPRT2
   0 "NO"
   1 "YES";

 label define PXMARRY2
   1 "DEFINITELY YES"
   2 "PROBABLY YES"
   3 "PROBABLY NO"
   4 "DEFINITELY NO"
   9 "DON'T KNOW";

 label define PXCURR3
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define PXCURRPRT3
   0 "NO"
   1 "YES";

 label define PXMARRY3
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define PXLRUSE
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXLRMETH1
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
  10 "Something else";

 label define PXLRMETH2
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
  10 "Something else";

 label define PXLRMETH3
   3 "VASECTOMY OR MALE STERILIZATION"
  10 "SOMETHING ELSE";

 label define PXLPUSE
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define DKPXLPUSE
   1 "DON'T RECALL"
   2 "NEVER KNEW"
   9 "DON'T KNOW";

 label define PXLPMETH01
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  99 "Don't know";

 label define PXLPMETH02
   4 "PILL"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH (ORTHO-EVRA)"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE";

 label define PXLPMETH03
  10 "CONTRACEPTIVE PATCH (ORTHO-EVRA)"
  12 "IUD, COIL, OR LOOP";

 label define DKPXLPMETH
   1 "DON'T RECALL"
   2 "NEVER KNEW";

 label define LSXUSEP
   0 "NONE OR NO METHOD IDENTIFIED"
   1 "ANY METHOD IDENTIFIED";

 label define MTONCEP
   0 "NOT ASCERTAINED"
   1 "YES (MORE THAN ONCE)"
   2 "NO (ONCE)";

 label define PXLSXPRB
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXMTONCE
   1 "Yes"
   5 "No"
   8 "Refused";

 label define PXPAGE
  98 "REFUSED"
  99 "DON'T KNOW";

 label define PXRELAGE
   1 "OLDER"
   2 "YOUNGER"
   3 "SAME AGE"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define PXRELYRS
   1 "1-2 YEARS"
   2 "3-5 YEARS"
   3 "6-10 YEARS"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define PXFRLTN1
   1 "MARRIED TO HER"
   2 "ENGAGED TO HER, AND LIVING TOGETHER"
   3 "ENGAGED TO HER, BUT NOT LIVING TOGETHER"
   4 "LIVING TOGETHER IN A SEXUAL RELATIONSHIP, BUT NOT ENGAGED"
   5 "GOING WITH HER OR GOING STEADY"
   6 "GOING OUT WITH HER ONCE IN A WHILE"
   7 "JUST FRIENDS"
   8 "HAD JUST MET HER"
   9 "SOMETHING ELSE"
  98 "REFUSED";

 label define P1YMULT1
   1 "Yes, multiple races reported"
   2 "No, multiple races not reported"
   3 "NA/DK/RF";

 label define P1YRACE1
   1 "Black"
   2 "White"
   3 "Other"
   4 "NA/DK/RF";

 label define P1YHRACE1
   1 "Hispanic"
   2 "Non-Hispanic White"
   3 "Non-Hispanic Black"
   4 "Non-Hispanic Other"
   5 "NA/DK/RF";

 label define P1YNRACE1
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race"
   5 "NA/DK/RF";

 label define PXLRUSE2
   1 "Yes"
   5 "No";

 label define PXLRMETH5
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
  10 "Something else";

 label define PXLRMETH6
   2 "WITHDRAWAL OR PULLING OUT"
   3 "VASECTOMY OR MALE STERILIZATION"
  10 "SOMETHING ELSE";

 label define PXLPUSE2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define DKPXLPUSE2
   1 "Don't recall"
   2 "Never knew"
   9 "Don't know";

 label define PXLPMETH11
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   8 "HORMONAL IMPLANT (NORPLANT OR IMPLANON)"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH (ORTHO-EVRA)"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE"
  99 "DON'T KNOW";

 label define PXLPMETH12
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   9 "RHYTHM OR SAFE PERIOD"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE";

 label define DKPXLPMETH2
   1 "Don't recall"
   2 "Never knew";

 label define LSXUSEP2
   0 "NONE OR NO METHOD IDENTIFIED"
   1 "ANY METHOD IDENTIFIED";

 label define MTONCEP2
   0 "NOT ASCERTAINED"
   1 "YES (MORE THAN ONCE)"
   2 "NO (ONCE)";

 label define PXLSXPRB2
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define PXMTONCE2
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXPAGE2
  99 "DON'T KNOW";

 label define PXRELAGE2
   1 "OLDER"
   2 "YOUNGER"
   3 "SAME AGE"
   9 "DON'T KNOW";

 label define PXRELYRS2
   1 "1-2 YEARS"
   2 "3-5 YEARS"
   3 "6-10 YEARS"
   4 "MORE THAN 10 YEARS"
   9 "DON'T KNOW";

 label define PXFRLTN3
   1 "Married to her"
   2 "Engaged to her, and living together"
   3 "Engaged to her, but not living together"
   4 "Living together in a sexual relationship, but not engaged"
   5 "Going with her or going steady"
   6 "Going out with her once in a while"
   7 "Just friends"
   8 "Had just met her"
   9 "Something else"
  98 "Refused"
  99 "Don't know";

 label define P1YMULT2
   1 "Yes, multiple races reported"
   2 "No, multiple races not reported"
   3 "NA/DK/RF";

 label define P1YRACE2
   1 "Black"
   2 "White"
   3 "Other"
   4 "NA/DK/RF";

 label define P1YHRACE2
   1 "HISPANIC"
   2 "NON-HISPANIC WHITE"
   3 "NON-HISPANIC BLACK"
   4 "NON-HISPANIC OTHER";

 label define P1YNRACE2
   1 "HISPANIC"
   2 "NON-HISPANIC WHITE, SINGLE RACE"
   3 "NON-HISPANIC BLACK, SINGLE RACE"
   4 "NON-HISPANIC OTHER OR MULTIPLE RACE";

 label define PXLRUSE3
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define PXLRMETH9
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
  10 "Something else";

 label define PXLRMETH10
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   3 "VASECTOMY OR MALE STERILIZATION";

 label define PXLPUSE3
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define DKPXLPUSE3
   1 "Don't recall"
   2 "Never knew"
   9 "Don't know";

 label define PXLPMETH21
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT (NORPLANT OR IMPLANON)"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH (ORTHO-EVRA)"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE";

 label define PXLPMETH22
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   9 "RHYTHM OR SAFE PERIOD";

 label define LSXUSEP3
   0 "NONE OR NO METHOD IDENTIFIED"
   1 "ANY METHOD IDENTIFIED";

 label define MTONCEP3
   0 "NOT ASCERTAINED"
   1 "YES (MORE THAN ONCE)"
   2 "NO (ONCE)";

 label define PXLSXPRB3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXMTONCE3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXPAGE3
  98 "Refused"
  99 "Don't know";

 label define PXRELAGE3
   1 "Older"
   2 "Younger"
   3 "Same age"
   8 "Refused"
   9 "Don't know";

 label define PXRELYRS3
   1 "1-2 YEARS"
   2 "3-5 YEARS"
   3 "6-10 YEARS"
   4 "MORE THAN 10 YEARS"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define PXFRLTN5
   1 "Married to her"
   2 "Engaged to her, and living together"
   3 "Engaged to her, but not living together"
   4 "Living together in a sexual relationship, but not engaged"
   5 "Going with her or going steady"
   6 "Going out with her once in a while"
   7 "Just friends"
   8 "Had just met her"
   9 "Something else"
  98 "Refused"
  99 "Don't know";

 label define P1YMULT3
   1 "Yes, multiple races reported"
   2 "No, multiple races not reported"
   3 "NA/DK/RF";

 label define P1YRACE3
   1 "Black"
   2 "White"
   3 "Other"
   4 "NA/DK/RF";

 label define P1YHRACE3
   1 "Hispanic"
   2 "Non-Hispanic White"
   3 "Non-Hispanic Black"
   4 "Non-Hispanic Other";

 label define P1YNRACE3
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race";

 label define PXDOB_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXDOB_Y
9998 "Refused"
9999 "Don't know";

 label define CMDOBP
9998 "Refused"
9999 "Don't know";

 label define PXEDUC
   1 "Less than high school"
   2 "High school graduate or GED"
   3 "Some college but no degree"
   4 "2-year college degree (e g , Associate's degree)"
   5 "4-year college graduate (e g , BA, BS)"
   6 "Graduate or professional school"
   8 "Refused"
   9 "Don't know";

 label define PXMARBF
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXANYCH
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXANYCHN
   1 "1 CHILD"
   2 "2 CHILDREN"
  99 "DON'T KNOW";

 label define PXABLECH
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXDOB_M2
  16 "FALL"
  99 "DON'T KNOW";

 label define PXDOB_Y2
9999 "Don't know";

 label define CMDOBP2
9999 "Don't know";

 label define PXEDUC2
   1 "LESS THAN HIGH SCHOOL"
   2 "HIGH SCHOOL GRADUATE OR GED"
   3 "SOME COLLEGE BUT NO DEGREE"
   4 "2-YEAR COLLEGE DEGREE (E G , ASSOCIATE'S DEGREE)"
   5 "4-YEAR COLLEGE GRADUATE (E G , BA, BS)"
   6 "GRADUATE OR PROFESSIONAL SCHOOL"
   9 "DON'T KNOW";

 label define PXMARBF2
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define PXANYCH2
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define PXANYCHN2
   1 "1 CHILD"
   2 "2 CHILDREN"
  99 "Don't know";

 label define PXABLECH2
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define PXDOB_M3
  99 "Don't know";

 label define PXDOB_Y3
9999 "Don't know";

 label define CMDOBP3
9999 "Don't know";

 label define PXEDUC3
   1 "Less than high school"
   2 "High school graduate or GED"
   3 "Some college but no degree"
   4 "2-year college degree (e g , Associate's degree)"
   5 "4-year college graduate (e g , BA, BS)"
   6 "Graduate or professional school"
   9 "Don't know";

 label define PXMARBF3
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define PXANYCH3
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define PXANYCHN3
   1 "1 CHILD"
   2 "2 CHILDREN";

 label define PXABLECH3
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define PXSXFRST_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXSXFRST_Y
9998 "Refused"
9999 "Don't know";

 label define CMFSXP
9998 "Refused"
9999 "Don't know";

 label define AGEFSXP
9998 "REFUSED"
9999 "DON'T KNOW";

 label define PXAGFRST
  98 "Refused"
  99 "Don't know";

 label define PXFRLTN2
   1 "Married to her"
   2 "Engaged to her, and living together"
   3 "Engaged to her, but not living together"
   4 "Living together in a sexual relationship, but not engaged"
   5 "Going with her or going steady"
   6 "Going out with her once in a while"
   7 "Just friends"
   8 "Had just met her"
   9 "Something else"
  98 "Refused"
  99 "Don't know";

 label define PXFUSE
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXFMETH01
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   3 "VASECTOMY OR MALE STERILIZATION"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   8 "HORMONAL IMPLANT (NORPLANT OR IMPLANON)"
  10 "CONTRACEPTIVE PATCH (ORTHO-EVRA)"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE"
  99 "DON'T KNOW";

 label define PXFMETH02
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else";

 label define PXFMETH03
   2 "WITHDRAWAL OR PULLING OUT"
   3 "VASECTOMY OR MALE STERILIZATION"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH (ORTHO-EVRA)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE";

 label define PXFMETH04
   9 "RHYTHM OR SAFE PERIOD";

 label define PXSXFRST_M2
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  99 "Don't know";

 label define PXSXFRST_Y2
9999 "Don't know";

 label define CMFSXP2
9999 "Don't know";

 label define AGEFSXP2
9999 "DON'T KNOW";

 label define PXAGFRST2
  99 "Don't know";

 label define PXFRLTN4
   2 "ENGAGED TO HER, AND LIVING TOGETHER"
   3 "ENGAGED TO HER, BUT NOT LIVING TOGETHER"
   4 "LIVING TOGETHER IN A SEXUAL RELATIONSHIP, BUT NOT ENGAGED"
   5 "GOING WITH HER OR GOING STEADY"
   6 "GOING OUT WITH HER ONCE IN A WHILE"
   7 "JUST FRIENDS"
   8 "HAD JUST MET HER"
   9 "SOMETHING ELSE"
  98 "REFUSED";

 label define PXFUSE2
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define PXFMETH14
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   3 "VASECTOMY OR MALE STERILIZATION"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   8 "HORMONAL IMPLANT (NORPLANT OR IMPLANON)"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE";

 label define PXFMETH15
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   8 "Hormonal implant (Norplant or Implanon)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else";

 label define PXFMETH16
   2 "WITHDRAWAL OR PULLING OUT"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   9 "RHYTHM OR SAFE PERIOD"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE";

 label define PXFMETH17
   9 "Rhythm or safe period";

 label define PXSXFRST_M3
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define PXSXFRST_Y3
9998 "Refused"
9999 "Don't know";

 label define CMFSXP3
9998 "Refused"
9999 "Don't know";

 label define AGEFSXP3
9998 "Refused"
9999 "Don't know";

 label define PXAGFRST3
  98 "Refused"
  99 "Don't know";

 label define PXFRLTN6
   2 "ENGAGED TO HER, AND LIVING TOGETHER"
   4 "LIVING TOGETHER IN A SEXUAL RELATIONSHIP, BUT NOT ENGAGED"
   5 "GOING WITH HER OR GOING STEADY"
   6 "GOING OUT WITH HER ONCE IN A WHILE"
   7 "JUST FRIENDS"
   8 "HAD JUST MET HER"
   9 "SOMETHING ELSE"
  98 "REFUSED";

 label define PXFUSE3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXFMETH27
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE";

 label define PXFMETH28
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   3 "VASECTOMY OR MALE STERILIZATION"
   4 "PILL"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   8 "HORMONAL IMPLANT (NORPLANT OR IMPLANON)"
   9 "RHYTHM OR SAFE PERIOD"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE";

 label define PXFMETH29
   1 "CONDOM OR RUBBER"
   4 "PILL"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT (NORPLANT OR IMPLANON)"
   9 "RHYTHM OR SAFE PERIOD"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)";

 label define PXFMETH30
   9 "Rhythm or safe period";

 label define PXANYUSE
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXMETHOD01
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   3 "VASECTOMY OR MALE STERILIZATION"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   8 "HORMONAL IMPLANT (NORPLANT OR IMPLANON)"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH (ORTHO-EVRA)"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE"
  99 "DON'T KNOW";

 label define PXMETHOD02
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else";

 label define PXMETHOD03
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else";

 label define PXMETHOD04
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   4 "PILL"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT (NORPLANT OR IMPLANON)"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH (ORTHO-EVRA)"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE";

 label define PXMETHOD05
   9 "RHYTHM OR SAFE PERIOD"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  13 "SOMETHING ELSE";

 label define PXMSTUSE
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   3 "VASECTOMY OR MALE STERILIZATION"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT (NORPLANT OR IMPLANON)"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH (ORTHO-EVRA)"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define PXCONFRQ
 999 "Don't know";

 label define PXNOFREQ
   1 "EVERY TIME"
   2 "MOST OF THE TIME"
   3 "ABOUT HALF OF THE TIME"
   4 "SOME OF THE TIME"
   5 "NONE OF THE TIME"
   9 "DON'T KNOW";

 label define PXANYUSE2
   1 "Yes"
   5 "No";

 label define PXMETHOD14
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)";

 label define PXMETHOD15
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   3 "VASECTOMY OR MALE STERILIZATION"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT (NORPLANT OR IMPLANON)"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  12 "IUD, COIL, OR LOOP";

 label define PXMETHOD16
   2 "WITHDRAWAL OR PULLING OUT"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   9 "RHYTHM OR SAFE PERIOD"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE";

 label define PXMETHOD17
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)";

 label define PXMETHOD18
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)";

 label define PXMSTUSE2
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   3 "VASECTOMY OR MALE STERILIZATION"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   8 "HORMONAL IMPLANT (NORPLANT OR IMPLANON)"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)";

 label define PXCONFRQ2
 998 "REFUSED";

 label define PXNOFREQ2
   1 "Every time"
   2 "Most of the time"
   3 "About half of the time"
   4 "Some of the time"
   5 "None of the time"
   8 "Refused"
   9 "Don't know";

 label define PXANYUSE3
   1 "Yes"
   5 "No";

 label define PXMETHOD27
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   4 "PILL"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE";

 label define PXMETHOD28
   2 "WITHDRAWAL OR PULLING OUT"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   9 "RHYTHM OR SAFE PERIOD";

 label define PXMETHOD29
   4 "PILL"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY";

 label define PXMETHOD30
   4 "PILL";

 label define PXMSTUSE3
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION";

 label define PXCONFRQ3
 998 "REFUSED"
 999 "DON'T KNOW";

 label define PXNOFREQ3
   1 "Every time"
   2 "Most of the time"
   3 "About half of the time"
   4 "Some of the time"
   5 "None of the time"
   8 "Refused"
   9 "Don't know";

 label define PXCHILD
   1 "Yes"
   5 "No"
   8 "Refused";

 label define PXCHILDN
   1 "1 CHILD"
   2 "2 CHILDREN";

 label define PXCXSEX
   1 "Male"
   2 "Female";

 label define PXCXBORN_M
  13 "WINTER"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define PXCXBORN_Y
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB11
9998 "Refused"
9999 "Don't know";

 label define PXCXRES
   1 "Yes"
   5 "No";

 label define PXCXKNOW
   1 "During the pregnancy"
   2 "After the child was born";

 label define PXCXLIV01
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   5 "LIVING ON OWN"
   6 "LIVING WITH OTHER RELATIVES"
   7 "DECEASED"
   9 "PLACED IN FOSTER CARE";

 label define PXCXLIV02
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   6 "LIVING WITH OTHER RELATIVES";

 label define PXCXLIV03
   6 "LIVING WITH OTHER RELATIVES";

 label define PXCXAGE
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older";

 label define PXCXSIG
   1 "Yes"
   5 "No";

 label define PXCXCRT
   1 "Yes"
   5 "No";

 label define PXCXGEN
   1 "Yes"
   5 "No";

 label define PXCXEVER
   1 "Yes"
   5 "No";

 label define PXWANT
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   9 "Don't know";

 label define PXSOON
   1 "TOO SOON"
   2 "RIGHT TIME"
   3 "LATER"
   4 "DIDN'T CARE"
   9 "DON'T KNOW";

 label define PXHPYPG
   0 "Very unhappy"
   5 "5"
  10 "Very happy";

 label define PXCXSEX2
   1 "Male"
   2 "Female";

 label define PXCXBORN_M2
  98 "Refused"
  99 "Don't know";

 label define PXCXBORN_Y2
9998 "REFUSED";

 label define CMCHDOB12
9998 "REFUSED";

 label define PXCXRES2
   1 "Yes"
   5 "No";

 label define PXCXKNOW2
   1 "During the pregnancy";

 label define PXCXLIV11
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   5 "LIVING ON OWN"
   9 "PLACED IN FOSTER CARE";

 label define PXCXLIV12
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER";

 label define PXCXAGE2
   2 "5-18 YEARS OLD"
   3 "19 YEARS OR OLDER";

 label define PXCXSIG2
   1 "Yes"
   5 "No";

 label define PXCXCRT2
   1 "Yes"
   5 "No";

 label define PXCXGEN2
   1 "Yes"
   5 "No";

 label define PXCXEVER2
   1 "Yes"
   5 "No";

 label define PXWANT2
   1 "DEFINITELY YES"
   2 "PROBABLY YES"
   3 "PROBABLY NO";

 label define PXSOON2
   1 "TOO SOON"
   2 "RIGHT TIME"
   3 "LATER";

 label define PXHPYPG2
   5 "5"
  10 "Very happy";

 label define PXCXSEX3
   1 "Male"
   2 "Female";

 label define PXCXBORN_M3
  99 "Don't know";

 label define MULTBIRT13
   1 "Yes";

 label define PXCXRES3
   1 "Yes"
   5 "No";

 label define PXCXKNOW3
   1 "During the pregnancy";

 label define PXCXLIV21
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   9 "PLACED IN FOSTER CARE";

 label define PXCXLIV22
   5 "LIVING ON OWN";

 label define PXCXAGE3
   2 "5-18 YEARS OLD";

 label define PXCXSIG3
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define PXCXCRT3
   5 "No";

 label define PXCXGEN3
   1 "Yes"
   5 "No";

 label define PXCXEVER3
   1 "Yes"
   5 "No";

 label define PXWANT3
   1 "DEFINITELY YES"
   3 "PROBABLY NO"
   4 "DEFINITELY NO";

 label define PXSOON3
   2 "RIGHT TIME"
   3 "LATER";

 label define PXHPYPG3
   5 "5"
  10 "VERY HAPPY";

 label define PXCXSEX4
   1 "Male"
   2 "Female";

 label define PXCXRES4
   5 "No";

 label define PXCXKNOW4
   1 "During the pregnancy";

 label define PXCXLIV31
   3 "WITH HIS/HER MOTHER";

 label define PXCXSIG4
   1 "Yes";

 label define PXCXCRT4
   5 "No";

 label define PXCXGEN4
   5 "No";

 label define PXCXEVER4
   1 "Yes"
   5 "No";

 label define PXWANT4
   1 "DEFINITELY YES"
   4 "DEFINITELY NO";

 label define PXSOON4
   2 "Right time";

 label define PXHPYPG4
  10 "VERY HAPPY";

 label define PXCHILD2
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define PXCHILDN2
   1 "1 child"
   2 "2 children";

 label define PXCXSEX11
   1 "MALE"
   2 "FEMALE"
   8 "REFUSED";

 label define PXCXBORN_M11
  13 "Winter"
  98 "Refused"
  99 "Don't know";

 label define PXCXBORN_Y11
9999 "Don't know";

 label define CMCHDOB21
9999 "Don't know";

 label define PXCXRES11
   1 "Yes"
   5 "No";

 label define PXCXKNOW11
   1 "During the pregnancy"
   2 "After the child was born";

 label define PXCXLIV101
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   5 "LIVING ON OWN"
   6 "LIVING WITH OTHER RELATIVES"
   7 "DECEASED";

 label define PXCXLIV102
   2 "In this household part-time"
   3 "With his/her mother"
   6 "Living with other relatives";

 label define PXCXAGE11
   2 "5-18 years old";

 label define PXCXSIG11
   1 "Yes"
   5 "No";

 label define PXCXCRT11
   1 "Yes"
   5 "No";

 label define PXCXGEN11
   1 "Yes"
   5 "No";

 label define PXCXEVER11
   1 "Yes"
   5 "No";

 label define PXWANT11
   1 "Definitely yes"
   2 "Probably yes"
   4 "Definitely no";

 label define PXSOON11
   1 "Too soon"
   2 "Right time"
   3 "Later";

 label define PXHPYPG11
   0 "Very unhappy"
   5 "5"
  10 "Very happy";

 label define PXCXSEX12
   1 "Male"
   2 "Female";

 label define PXCXRES12
   1 "Yes"
   5 "No";

 label define PXCXKNOW12
   1 "During the pregnancy";

 label define PXCXLIV111
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   6 "LIVING WITH OTHER RELATIVES";

 label define PXCXLIV112
   2 "In this household part-time"
   3 "With his/her mother";

 label define PXCXSIG12
   1 "Yes"
   5 "No";

 label define PXCXCRT12
   5 "No";

 label define PXCXGEN12
   5 "No";

 label define PXCXEVER12
   1 "Yes"
   5 "No";

 label define PXWANT12
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define PXSOON12
   1 "Too soon"
   2 "Right time";

 label define PXHPYPG12
  10 "Very happy";

 label define PXCXSEX13
   1 "Male"
   2 "Female";

 label define PXCXKNOW13
   1 "During the pregnancy";

 label define PXCXLIV121
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER";

 label define PXCXLIV122
   3 "With his/her mother";

 label define PXCXSIG13
   1 "Yes";

 label define PXCXCRT13
   5 "No";

 label define PXCXGEN13
   5 "No";

 label define PXCXEVER13
   5 "No";

 label define PXWANT13
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define PXSOON13
   1 "Too soon"
   2 "Right time"
   3 "Later";

 label define PXHPYPG13
  10 "Very happy";

 label define PXCXSEX14
   2 "Female";

 label define PXCXLIV131
   2 "In this household part-time";

 label define PXCXLIV132
   3 "With his/her mother";

 label define PXWANT14
   1 "DEFINITELY YES";

 label define PXSOON14
   2 "Right time";

 label define PXHPYPG14
  10 "Very happy";

 label define PXCXSEX15
   1 "Male";

 label define PXCXLIV141
   2 "In this household part-time";

 label define PXCXLIV142
   3 "With his/her mother";

 label define PXWANT15
   1 "Definitely yes";

 label define PXSOON15
   2 "Right time";

 label define PXHPYPG15
  10 "Very happy";

 label define PXCHILD3
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PXCHILDN3
   1 "1"
   2 "2";

 label define PXCXSEX21
   1 "Male"
   2 "Female";

 label define PXCXRES21
   1 "Yes"
   5 "No";

 label define PXCXKNOW21
   1 "During the pregnancy";

 label define PXCXLIV201
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   6 "Living with other relatives";

 label define PXCXLIV202
   3 "With his/her mother";

 label define PXCXSIG21
   1 "Yes"
   5 "No";

 label define PXCXCRT21
   1 "Yes"
   5 "No";

 label define PXCXGEN21
   1 "Yes"
   5 "No";

 label define PXCXEVER21
   1 "Yes"
   5 "No";

 label define PXWANT21
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define PXSOON21
   1 "Too soon"
   2 "Right time";

 label define PXHPYPG21
   0 "Very unhappy"
   5 "5"
  10 "Very happy";

 label define PXCXSEX22
   2 "Female";

 label define PXCXRES22
   1 "Yes";

 label define PXCXLIV211
   2 "In this household part-time"
   3 "With his/her mother"
   6 "Living with other relatives";

 label define PXCXSIG22
   1 "Yes"
   5 "No";

 label define PXCXCRT22
   1 "Yes"
   5 "No";

 label define PXCXGEN22
   5 "No";

 label define PXCXEVER22
   1 "Yes";

 label define PXWANT22
   1 "Definitely yes";

 label define PXSOON22
   2 "Right time";

 label define PXHPYPG22
  10 "Very happy";

 label define PXCPREG
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define PXTRYING
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define PXRWANT
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define PXRSOON
   1 "Too soon"
   2 "Right time"
   3 "Later";

 label define PXCPFEEL
   0 "Very unhappy"
   5 "5"
  10 "Very happy";

 label define PXCPREG2
   5 "NO"
   9 "DON'T KNOW";

 label define PXTRYING2
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define PXCPREG3
   5 "No";

 label define PXTRYING3
   1 "Yes"
   5 "No";

 label define CURRPREG
   0 "INAPP/DK/RF"
   1 "YES";

 label define D_OKAKIDS
   0 "NONE"
   1 "1 CHILD";

 label define PXOTKID
   1 "Yes"
   5 "No"
   8 "Refused";

 label define PXOKWTH
   1 "Yes"
   5 "No";

 label define PXOKWTHN
   1 "1 child"
   2 "2 children"
   3 "3 children";

 label define PXOKSEX
   1 "Male"
   2 "Female";

 label define PXOKAD
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither";

 label define PXOKLIV1
   1 "IN THIS HOUSEHOLD FULL-TIME"
   3 "WITH HIS/HER MOTHER";

 label define PXOKSEX2
   1 "Male"
   2 "Female";

 label define PXOKAD2
   3 "Yes, became guardian"
   5 "No, neither";

 label define PXOKLIV9
   3 "With his/her mother";

 label define PXOKSEX3
   1 "Male"
   2 "Female";

 label define PXOKAD3
   5 "No, neither";

 label define PXOKSEX4
   1 "Male"
   2 "Female";

 label define PXOKAD4
   5 "No, neither";

 label define PXOKSEX5
   1 "Male";

 label define PXOKAD5
   5 "No, neither";

 label define PXOKSEX6
   2 "Female";

 label define PXOKAD6
   5 "No, neither";

 label define D_OKAKIDS2
   0 "NONE";

 label define PXOTKID2
   1 "Yes"
   5 "No";

 label define PXOKWTH2
   1 "Yes"
   5 "No";

 label define PXOKWTHN2
   1 "1 child"
   2 "2 children"
   3 "3 children";

 label define PXOKSEX11
   1 "Male"
   2 "Female";

 label define PXOKAD11
   3 "Yes, became guardian"
   5 "No, neither";

 label define PXOKLIV81
   3 "With his/her mother";

 label define PXOKAGE11
  98 "REFUSED"
  99 "DON'T KNOW";

 label define PXOKSEX12
   1 "Male"
   2 "Female";

 label define PXOKAD12
   3 "Yes, became guardian"
   5 "No, neither";

 label define PXOKLIV89
   3 "With his/her mother";

 label define PXOKAGE12
  99 "DON'T KNOW";

 label define PXOKSEX13
   1 "Male"
   2 "Female";

 label define PXOKAD13
   5 "No, neither";

 label define PXOKAGE13
  99 "DON'T KNOW";

 label define PXOKSEX14
   2 "Female";

 label define PXOKAD14
   5 "No, neither";

 label define D_OKAKIDS3
   0 "None";

 label define PXOTKID3
   1 "Yes"
   5 "No";

 label define PXOKWTH3
   1 "Yes"
   5 "No";

 label define PXOKWTHN3
   1 "1 child"
   2 "2 children"
   3 "3 children";

 label define PXOKSEX21
   1 "Male"
   2 "Female";

 label define PXOKAD21
   5 "No, neither";

 label define PXOKSEX22
   1 "Male"
   2 "Female";

 label define PXOKAD22
   5 "No, neither";

 label define PXOKSEX23
   1 "Male"
   2 "Female";

 label define PXOKAD23
   5 "No, neither";

 label define PXOKSEX24
   2 "Female";

 label define PXOKAD24
   5 "No, neither";

 label define D_NBAKIDS
   0 "None";

 label define PXNBEVR
   1 "Yes"
   5 "No"
   8 "Refused";

 label define PXNBREL
   1 "Yes";

 label define PXNBFOS
   1 "Yes"
   5 "No";

 label define PXNBSEX
   1 "Male"
   2 "Female";

 label define PXNBAD
   3 "Yes, became guardian"
   5 "No, neither";

 label define PXNBLIV1
   1 "IN THIS HOUSEHOLD FULL-TIME"
   8 "SOMEPLACE ELSE";

 label define PXNBFAR
99999 "Don't know";

 label define PXNBREL2
   1 "Yes";

 label define PXNBFOS2
   1 "Yes"
   5 "No";

 label define PXNBSEX2
   1 "Male"
   2 "Female";

 label define PXNBAD2
   3 "Yes, became guardian"
   5 "No, neither";

 label define PXNBLIV9
   8 "SOMEPLACE ELSE";

 label define PXNBFAR2
99999 "Don't know";

 label define PXNBREL3
   1 "Yes";

 label define PXNBFOS3
   1 "Yes"
   5 "No";

 label define PXNBSEX3
   2 "Female";

 label define PXNBAD3
   5 "No, neither";

 label define PXNBREL4
   1 "Yes";

 label define PXNBFOS4
   1 "Yes";

 label define PXNBSEX4
   2 "Female";

 label define PXNBAD4
   5 "No, neither";

 label define PXNBREL5
   1 "Yes";

 label define PXNBFOS5
   1 "Yes";

 label define PXNBSEX5
   2 "Female";

 label define PXNBAD5
   5 "No, neither";

 label define D_NBAKIDS2
   0 "None";

 label define PXNBEVR2
   1 "Yes"
   5 "No";

 label define PXNBREL11
   5 "No";

 label define PXNBFOS11
   5 "No";

 label define PXNBSEX11
   1 "Male";

 label define PXNBAD11
   5 "No, neither";

 label define D_NBAKIDS3
   0 "None";

 label define PXNBEVR3
   5 "No";

 label define FPFIRST_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FPFIRST_Y
9998 "Refused"
9999 "Don't know";

 label define CMFSTSEX
9998 "Refused"
9999 "Don't know";

 label define FSTSEXAGE
  98 "Refused"
  99 "Don't know";

 label define FPAGE
  98 "REFUSED"
  99 "DON'T KNOW";

 label define FPAGE18
   1 "LESS THAN 18"
   2 "18 YEARS OR OLDER"
   8 "REFUSED";

 label define FPAGE15
   1 "LESS THAN 15"
   2 "15 YEARS OR OLDER"
   8 "REFUSED";

 label define FPAGE20
   1 "LESS THAN 20"
   2 "20 YEARS OR OLDER";

 label define RFSXAGEGP
   0 "0"
   1 "LESS THAN 15"
   2 "15 OR OLDER BUT LESS THAN 18"
   3 "18 OR OLDER BUT LESS THAN 20"
   4 "20 OR OLDER";

 label define FPPAGE
  98 "Refused"
  99 "Don't know";

 label define FPRELAGE
   1 "Older"
   2 "Younger"
   3 "Same age"
   8 "Refused"
   9 "Don't know";

 label define FPRELYRS
   1 "1-2 years"
   2 "3-5 years"
   3 "6-10 years"
   4 "More than 10 years"
   8 "Refused"
   9 "Don't know";

 label define FPRLTN
   1 "Married to her"
   2 "Engaged to her, and living together"
   3 "Engaged to her, but not living together"
   4 "Living together in a sexual relationship, but not engaged"
   5 "Going with her or going steady"
   6 "Going out with her once in a while"
   7 "Just friends"
   8 "Had just met her"
   9 "Something else"
  98 "Refused"
  99 "Don't know";

 label define FPUSE
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FPMETH01
   1 "Condom or rubber"
   2 "Withdrawal or pulling out"
   3 "Vasectomy or male sterilization"
   4 "Pill"
   5 "Tubal sterilization or other female sterilization"
   6 "Injection (Depo-Provera or Lunelle)"
   7 "Spermicidal foam/jelly/cream/film/suppository"
   8 "Hormonal implant (Norplant or Implanon)"
   9 "Rhythm or safe period"
  10 "Contraceptive patch (Ortho-Evra)"
  11 "Vaginal contraceptive ring (Nuva Ring)"
  12 "IUD, coil, or loop"
  13 "Something else"
  99 "Don't know";

 label define FPMETH02
   1 "CONDOM OR RUBBER"
   2 "WITHDRAWAL OR PULLING OUT"
   4 "PILL"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH (ORTHO-EVRA)"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  12 "IUD, COIL, OR LOOP"
  13 "SOMETHING ELSE";

 label define FPMETH03
   2 "WITHDRAWAL OR PULLING OUT"
   4 "PILL"
   5 "TUBAL STERILIZATION OR OTHER FEMALE STERILIZATION"
   6 "INJECTION (DEPO-PROVERA OR LUNELLE)"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   9 "RHYTHM OR SAFE PERIOD"
  11 "VAGINAL CONTRACEPTIVE RING (NUVA RING)"
  13 "SOMETHING ELSE";

 label define FPPROBE
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define NFORMWIFE
   0 "NONE"
   1 "1 FORMER WIFE"
   2 "2 FORMER WIVES"
   3 "3 FORMER WIVES"
   4 "4 FORMER WIVES"
 999 "DON'T KNOW";

 label define NFORMCOHAB
   0 "NONE"
   1 "1 FORMER COHABITING PARTNER"
   2 "2 FORMER COHABITING PARTNERS"
 998 "REFUSED"
 999 "DON'T KNOW";

 label define FWVERIFY
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define FWVER
   0 "NO"
   1 "YES";

 label define FWVERIFY2
   1 "Yes"
   5 "No";

 label define FWVER2
   0 "NO"
   1 "YES";

 label define FWVERIFY3
   1 "Yes"
   5 "No";

 label define FWVER3
   0 "NO"
   1 "YES";

 label define FWVERIFY4
   5 "No";

 label define FWVER4
   1 "YES";

 label define FCVER
   0 "NO"
   1 "YES";

 label define FCVERIFY
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define EXRELATION
   1 "FORMER WIFE";

 label define FWMAREND_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWMAREND_Y
9998 "Refused"
9999 "Don't know";

 label define CMMARW
9998 "Refused"
9999 "Don't know";

 label define AGEMARRN
  98 "Refused"
  99 "Don't know";

 label define LIVTOGN4
   1 "Yes"
   5 "No"
   8 "Refused";

 label define STRTLIVE_M4
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STRTLIVE_Y4
9998 "Refused"
9999 "Don't know";

 label define CMCOHW
9998 "Refused"
9999 "Don't know";

 label define AGELIV4
  99 "Don't know";

 label define CMUNIONW
9998 "Refused"
9999 "Don't know";

 label define ENGAGTHN4
   1 "YES, ENGAGED TO BE MARRIED"
   3 "NOT ENGAGED BUT HAD DEFINITE PLANS TO GET MARRIED"
   5 "NO, NEITHER ENGAGED NOR HAD DEFINITE PLANS"
   9 "DON'T KNOW";

 label define MARREND4
   1 "DEATH OF WIFE"
   2 "DIVORCE"
   3 "ANNULMENT"
   4 "SEPARATION";

 label define DIVORFIN_M4
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define DIVORFIN_Y4
9998 "Refused"
9999 "Don't know";

 label define CMDIVW
9998 "Refused"
9999 "Don't know";

 label define ANNULLED_M4
  14 "SPRING"
  15 "SUMMER"
  16 "FALL";

 label define STOPLIVE_M4
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STOPLIVE_Y4
9998 "Refused"
9999 "Don't know";

 label define CMSTOPW
9998 "REFUSED"
9999 "DON'T KNOW";

 label define EXRELATION2
   1 "FORMER WIFE";

 label define FWMAREND_M2
  13 "WINTER"
  14 "SPRING"
  15 "SUMMER"
  99 "DON'T KNOW";

 label define FWMAREND_Y2
9999 "Don't know";

 label define CMMARW2
9999 "Don't know";

 label define LIVTOGN5
   1 "Yes"
   5 "No"
   8 "Refused";

 label define STRTLIVE_M5
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  99 "Don't know";

 label define STRTLIVE_Y5
9999 "Don't know";

 label define CMCOHW2
9999 "Don't know";

 label define CMUNIONW2
9999 "Don't know";

 label define ENGAGTHN5
   1 "YES, ENGAGED TO BE MARRIED"
   3 "NOT ENGAGED BUT HAD DEFINITE PLANS TO GET MARRIED"
   5 "NO, NEITHER ENGAGED NOR HAD DEFINITE PLANS";

 label define MARREND5
   1 "DEATH OF WIFE"
   2 "DIVORCE"
   4 "SEPARATION"
   9 "DON'T KNOW";

 label define DIVORFIN_M5
  13 "Winter"
  15 "Summer"
  99 "Don't know";

 label define STOPLIVE_M5
  13 "WINTER"
  14 "SPRING"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define STOPLIVE_Y5
9998 "Refused"
9999 "Don't know";

 label define CMSTOPW2
9998 "Refused"
9999 "Don't know";

 label define EXRELATION3
   1 "FORMER WIFE";

 label define LIVTOGN6
   1 "Yes"
   5 "No";

 label define ENGAGTHN6
   3 "NOT ENGAGED BUT HAD DEFINITE PLANS TO GET MARRIED"
   5 "NO, NEITHER ENGAGED NOR HAD DEFINITE PLANS";

 label define MARREND6
   2 "Divorce"
   4 "Separation";

 label define EXRELATION4
   1 "FORMER WIFE";

 label define LIVTOGN7
   1 "Yes";

 label define ENGAGTHN7
   1 "YES, ENGAGED TO BE MARRIED"
   5 "NO, NEITHER ENGAGED NOR HAD DEFINITE PLANS";

 label define MARREND7
   2 "DIVORCE";

 label define EXRELATION11
   0 "FORMER COHAB PARTNER";

 label define STRTLIVE_M14
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STRTLIVE_Y14
9998 "Refused"
9999 "Don't know";

 label define AGELIV14
  98 "Refused"
  99 "Don't know";

 label define ENGAGTHN14
   1 "YES, ENGAGED TO BE MARRIED"
   3 "NOT ENGAGED BUT HAD DEFINITE PLANS TO GET MARRIED"
   5 "NO, NEITHER ENGAGED NOR HAD DEFINITE PLANS"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define STOPLIVE_M14
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define STOPLIVE_Y14
9998 "Refused"
9999 "Don't know";

 label define CMSTOPFC11
9998 "Refused"
9999 "Don't know";

 label define FWPDOB_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  99 "Don't know";

 label define FWPDOB_Y
9999 "Don't know";

 label define CMFWPDOB
9999 "Don't know";

 label define FWPAGE
  99 "DON'T KNOW";

 label define WIF1MULT
   1 "Yes, multiple races reported"
   2 "No, multiple races not reported"
   3 "NA/DK/RF";

 label define WIF1RACE
   1 "Black"
   2 "White"
   3 "Other"
   4 "NA/DK/RF";

 label define WIF1HRACE
   1 "Hispanic"
   2 "Non-Hispanic White"
   3 "Non-Hispanic Black"
   4 "Non-Hispanic Other"
   5 "NA/DK/RF";

 label define WIF1NRACE
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race"
   5 "NA/DK/RF";

 label define FWPMARBF
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define FWPDOB_M2
  13 "Winter"
  15 "Summer"
  99 "Don't know";

 label define FWPDOB_Y2
9999 "Don't know";

 label define CMFWPDOB2
9999 "Don't know";

 label define FWPAGE2
  99 "DON'T KNOW";

 label define FWPMARBF2
   1 "Yes"
   5 "No"
   8 "Refused";

 label define FWPDOB_M3
  99 "Don't know";

 label define FWPMARBF3
   1 "Yes"
   5 "No";

 label define FWPMARBF4
   1 "Yes";

 label define FWPDOB_M11
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define FWPDOB_Y11
9998 "Refused"
9999 "Don't know";

 label define CMFWPDOB11
9998 "Refused"
9999 "Don't know";

 label define FWPAGE11
  98 "Refused"
  99 "Don't know";

 label define COH1MULT
   1 "Yes, multiple races reported"
   2 "No, multiple races not reported"
   3 "NA/DK/RF";

 label define COH1RACE
   1 "Black"
   2 "White"
   3 "Other"
   4 "NA/DK/RF";

 label define COH1HRACE
   1 "Hispanic"
   2 "Non-Hispanic White"
   3 "Non-Hispanic Black"
   4 "Non-Hispanic Other"
   5 "NA/DK/RF";

 label define COH1NRACE
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race"
   5 "NA/DK/RF";

 label define FWPMARBF11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPBIOKD
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define FWPNUMKD
   1 "1 child"
   2 "2 children"
   3 "3 children"
   4 "4 children";

 label define FWPCHSEX
   1 "Male"
   2 "Female";

 label define FWPCHDOB_M
  99 "Don't know";

 label define FWPCHDOB_Y
9999 "Don't know";

 label define CMCHDOB41
9999 "Don't know";

 label define FWCHMARB
   1 "Yes"
   5 "No";

 label define FWPCHRES
   1 "Yes"
   5 "No";

 label define FWPCHLRN
   1 "During the pregnancy"
   2 "After the child was born";

 label define FWPCHLIV01
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   4 "AWAY AT SCHOOL OR COLLEGE"
   5 "LIVING ON OWN"
   6 "LIVING WITH OTHER RELATIVES"
   7 "DECEASED"
   9 "PLACED IN FOSTER CARE"
  10 "SOMEPLACE ELSE";

 label define FWPCHLIV02
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   4 "AWAY AT SCHOOL OR COLLEGE"
  10 "SOMEPLACE ELSE";

 label define FWPCHLIV03
   6 "LIVING WITH OTHER RELATIVES"
  10 "SOMEPLACE ELSE";

 label define FWPCHAGE
   2 "5-18 years old"
   3 "19 years or older";

 label define FWPCHSIG
   1 "Yes"
   5 "No";

 label define FWPCHCRT
   1 "Yes"
   5 "No";

 label define FWPCHGEN
   1 "Yes"
   5 "No";

 label define FWPCHEVR
   1 "Yes"
   5 "No";

 label define FWPCHFAR
99999 "Don't know";

 label define FWPRWANT
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define FWPSOON
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care";

 label define FWPHPYPG
   0 "Very unhappy"
   5 "5"
  10 "Very happy";

 label define FWPCHSEX2
   1 "Male"
   2 "Female";

 label define FWPCHDOB_M2
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y2
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB42
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT42
   1 "Yes";

 label define FWCHMARB2
   1 "Yes";

 label define FWPCHRES2
   1 "Yes"
   5 "No";

 label define FWPCHLRN2
   1 "During the pregnancy";

 label define FWPCHLIV11
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   4 "AWAY AT SCHOOL OR COLLEGE"
   5 "LIVING ON OWN"
   6 "LIVING WITH OTHER RELATIVES"
   7 "DECEASED"
   8 "PLACED FOR ADOPTION OR ADOPTED"
  10 "SOMEPLACE ELSE";

 label define FWPCHLIV12
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   4 "AWAY AT SCHOOL OR COLLEGE";

 label define FWPCHAGE2
   2 "5-18 years old";

 label define FWPCHSIG2
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define FWPCHCRT2
   1 "Yes"
   5 "No";

 label define FWPCHGEN2
   1 "Yes"
   5 "No";

 label define FWPCHEVR2
   1 "Yes"
   5 "No";

 label define FWPCHFAR2
99999 "Don't know";

 label define FWPRWANT2
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define FWPSOON2
   1 "Too soon"
   2 "Right time"
   3 "Later";

 label define FWPHPYPG2
   0 "Very unhappy"
   5 "5"
  10 "Very happy";

 label define FWPCHSEX3
   1 "Male"
   2 "Female";

 label define FWPCHDOB_M3
  99 "Don't know";

 label define FWPCHDOB_Y3
9999 "Don't know";

 label define CMCHDOB43
9999 "Don't know";

 label define MULTBIRT43
   1 "Yes";

 label define FWPCHRES3
   1 "Yes";

 label define FWPCHLRN3
   1 "During the pregnancy";

 label define FWPCHLIV21
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased";

 label define FWPCHLIV22
   2 "In this household part-time"
   3 "With his/her mother";

 label define FWPCHAGE3
   2 "5-18 years old";

 label define FWPCHSIG3
   1 "Yes";

 label define FWPCHCRT3
   1 "Yes"
   5 "No";

 label define FWPCHGEN3
   1 "Yes"
   5 "No";

 label define FWPCHEVR3
   1 "Yes";

 label define FWPCHFAR3
99999 "Don't know";

 label define FWPRWANT3
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define FWPSOON3
   1 "Too soon"
   2 "Right time"
   3 "Later";

 label define FWPHPYPG3
   0 "Very unhappy"
   5 "5"
  10 "Very happy";

 label define FWPCHSEX4
   1 "Male"
   2 "Female";

 label define FWPCHDOB_M4
  99 "Don't know";

 label define FWPCHRES4
   1 "Yes";

 label define FWPCHLRN4
   1 "During the pregnancy";

 label define FWPCHLIV31
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   6 "LIVING WITH OTHER RELATIVES"
  10 "SOMEPLACE ELSE";

 label define FWPCHAGE4
   2 "5-18 years old";

 label define FWPCHSIG4
   1 "Yes";

 label define FWPCHCRT4
   5 "No";

 label define FWPCHGEN4
   1 "Yes"
   5 "No";

 label define FWPCHEVR4
   1 "Yes";

 label define FWPRWANT4
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define FWPSOON4
   1 "Too soon"
   2 "Right time";

 label define FWPHPYPG4
   0 "VERY UNHAPPY"
   5 "5"
  10 "VERY HAPPY";

 label define FWPCHSEX5
   1 "Male";

 label define FWPCHLIV41
   6 "Living with other relatives";

 label define FWPRWANT5
   3 "PROBABLY NO";

 label define FWPBIOKD2
   1 "Yes"
   5 "No";

 label define FWPNUMKD2
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define FWPCHSEX11
   1 "Male"
   2 "Female"
   8 "Refused";

 label define FWPCHDOB_M11
  98 "REFUSED";

 label define FWPCHDOB_Y11
9998 "Refused";

 label define CMCHDOB51
9998 "REFUSED";

 label define FWCHMARB11
   1 "Yes"
   5 "No"
   8 "Refused";

 label define FWPCHRES11
   1 "Yes"
   5 "No"
   8 "Refused";

 label define FWPCHLRN11
   1 "DURING THE PREGNANCY"
   8 "REFUSED";

 label define FWPCHLIV101
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   5 "LIVING ON OWN"
   6 "LIVING WITH OTHER RELATIVES"
  98 "REFUSED";

 label define FWPCHLIV102
   3 "WITH HIS/HER MOTHER"
   6 "LIVING WITH OTHER RELATIVES";

 label define FWPCHAGE11
   8 "Refused";

 label define FWPCHSIG11
   1 "Yes"
   5 "No";

 label define FWPCHCRT11
   1 "Yes"
   5 "No";

 label define FWPCHGEN11
   1 "Yes"
   5 "No";

 label define FWPCHEVR11
   1 "Yes";

 label define FWPCHFAR11
99999 "Don't know";

 label define FWPRWANT11
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   9 "Don't know";

 label define FWPSOON11
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care";

 label define FWPHPYPG11
   0 "VERY UNHAPPY"
  10 "VERY HAPPY";

 label define FWPCHSEX12
   1 "Male"
   2 "Female"
   8 "Refused";

 label define FWPCHDOB_M12
  98 "Refused";

 label define FWPCHDOB_Y12
9998 "Refused";

 label define CMCHDOB52
9998 "REFUSED";

 label define FWCHMARB12
   8 "Refused";

 label define FWPCHRES12
   1 "YES"
   8 "REFUSED";

 label define FWPCHLRN12
   1 "During the pregnancy"
   8 "Refused";

 label define FWPCHLIV111
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
  98 "REFUSED";

 label define FWPCHLIV112
   3 "With his/her mother";

 label define FWPCHAGE12
   8 "Refused";

 label define FWPCHSIG12
   1 "Yes";

 label define FWPCHCRT12
   5 "No";

 label define FWPCHGEN12
   5 "No";

 label define FWPCHEVR12
   1 "Yes";

 label define FWPCHFAR12
99999 "DON'T KNOW";

 label define FWPRWANT12
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define FWPSOON12
   1 "Too soon"
   2 "Right time";

 label define FWPHPYPG12
   0 "VERY UNHAPPY"
  10 "VERY HAPPY";

 label define FWPCHSEX13
   1 "Male"
   2 "Female";

 label define FWCHMARB13
   1 "Yes";

 label define FWPCHLRN13
   1 "During the pregnancy";

 label define FWPCHLIV121
   1 "In this household full-time"
   3 "With his/her mother";

 label define FWPCHSIG13
   1 "Yes"
   5 "No";

 label define FWPCHCRT13
   5 "No";

 label define FWPCHGEN13
   5 "No";

 label define FWPCHEVR13
   1 "Yes";

 label define FWPRWANT13
   3 "PROBABLY NO"
   4 "DEFINITELY NO";

 label define FWPHPYPG13
  10 "VERY HAPPY";

 label define FWPBIOKD3
   1 "Yes"
   5 "No";

 label define FWPNUMKD3
   1 "1 child"
   2 "2 children"
   3 "3 children";

 label define FWPCHSEX21
   1 "Male"
   2 "Female";

 label define FWPCHRES21
   1 "Yes";

 label define FWPCHLIV201
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother";

 label define FWPCHLIV202
   3 "With his/her mother";

 label define FWPCHSIG21
   1 "Yes";

 label define FWPCHCRT21
   5 "No";

 label define FWPCHGEN21
   1 "Yes"
   5 "No";

 label define FWPCHEVR21
   1 "Yes";

 label define FWPRWANT21
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define FWPSOON21
   1 "TOO SOON";

 label define FWPHPYPG21
   5 "5"
  10 "Very happy";

 label define FWPCHSEX22
   1 "Male"
   2 "Female";

 label define FWPCHRES22
   1 "Yes";

 label define FWPCHLIV211
   1 "In this household full-time"
   3 "With his/her mother";

 label define FWPCHSIG22
   1 "Yes";

 label define FWPCHCRT22
   5 "No";

 label define FWPCHGEN22
   5 "No";

 label define FWPCHEVR22
   1 "Yes";

 label define FWPRWANT22
   2 "PROBABLY YES"
   3 "PROBABLY NO";

 label define FWPSOON22
   2 "Right time";

 label define FWPHPYPG22
   5 "5";

 label define FWPCHSEX23
   2 "Female";

 label define FWPCHRES23
   1 "Yes";

 label define FWPCHLIV221
   1 "In this household full-time";

 label define FWPCHSIG23
   1 "Yes";

 label define FWPCHCRT23
   5 "No";

 label define FWPCHGEN23
   5 "No";

 label define FWPRWANT23
   1 "Definitely yes";

 label define FWPSOON23
   1 "Too soon";

 label define FWPHPYPG23
   9 "9";

 label define FWPBIOKD4
   5 "No";

 label define FWPBIOKD11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNUMKD11
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define FWPCHSEX101
   1 "MALE"
   2 "FEMALE"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define FWPCHDOB_M101
  98 "Refused"
  99 "Don't know";

 label define FWPCHDOB_Y101
9999 "Don't know";

 label define CMCHDOB141
9999 "Don't know";

 label define FWPCHRES101
   1 "Yes"
   5 "No"
   8 "Refused";

 label define FWPCHLRN101
   1 "During the pregnancy"
   2 "After the child was born";

 label define FWPCHLIV1001
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   4 "AWAY AT SCHOOL OR COLLEGE"
   5 "LIVING ON OWN"
   6 "LIVING WITH OTHER RELATIVES"
   7 "DECEASED"
   8 "PLACED FOR ADOPTION OR ADOPTED"
  10 "SOMEPLACE ELSE"
  99 "DON'T KNOW";

 label define FWPCHLIV1002
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   6 "LIVING WITH OTHER RELATIVES"
  10 "SOMEPLACE ELSE";

 label define FWPCHLIV1003
   6 "Living with other relatives"
  10 "Someplace else";

 label define FWPCHAGE101
   2 "5-18 YEARS OLD"
   3 "19 YEARS OR OLDER"
   9 "DON'T KNOW";

 label define FWPCHSIG101
   1 "Yes"
   5 "No";

 label define FWPCHCRT101
   1 "Yes"
   5 "No";

 label define FWPCHGEN101
   1 "Yes"
   5 "No";

 label define FWPCHEVR101
   1 "Yes"
   5 "No";

 label define FWPCHFAR101
99998 "REFUSED"
99999 "DON'T KNOW";

 label define FWPRWANT101
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define FWPSOON101
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care";

 label define FWPHPYPG101
   0 "Very unhappy"
   5 "5"
  10 "Very happy";

 label define FWPCHSEX102
   1 "MALE"
   2 "FEMALE"
   9 "DON'T KNOW";

 label define FWPCHDOB_M102
  99 "Don't know";

 label define FWPCHDOB_Y102
9999 "Don't know";

 label define CMCHDOB142
9999 "Don't know";

 label define MULTBIRT142
   1 "Yes";

 label define FWPCHRES102
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define FWPCHLRN102
   1 "During the pregnancy"
   2 "After the child was born";

 label define FWPCHLIV1011
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   4 "AWAY AT SCHOOL OR COLLEGE"
   5 "LIVING ON OWN"
   6 "LIVING WITH OTHER RELATIVES"
   7 "DECEASED"
   8 "PLACED FOR ADOPTION OR ADOPTED";

 label define FWPCHLIV1012
   2 "In this household part-time"
   3 "With his/her mother"
   6 "Living with other relatives";

 label define FWPCHAGE102
   9 "Don't know";

 label define FWPCHSIG102
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define FWPCHCRT102
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define FWPCHGEN102
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define FWPCHEVR102
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define FWPCHFAR102
99999 "Don't know";

 label define FWPRWANT102
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define FWPSOON102
   1 "Too soon"
   2 "Right time";

 label define FWPHPYPG102
   0 "Very unhappy"
   5 "5"
  10 "Very happy";

 label define FWPCHSEX103
   1 "Male"
   2 "Female"
   9 "Don't know";

 label define FWPCHDOB_M103
  99 "Don't know";

 label define FWPCHDOB_Y103
9999 "Don't know";

 label define CMCHDOB143
9999 "Don't know";

 label define FWPCHRES103
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define FWPCHLRN103
   1 "DURING THE PREGNANCY"
   9 "DON'T KNOW";

 label define FWPCHLIV1021
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   6 "LIVING WITH OTHER RELATIVES"
  99 "DON'T KNOW";

 label define FWPCHLIV1022
   3 "With his/her mother";

 label define FWPCHAGE103
   9 "Don't know";

 label define FWPCHSIG103
   1 "Yes"
   5 "No";

 label define FWPCHCRT103
   5 "No";

 label define FWPCHGEN103
   1 "Yes"
   5 "No";

 label define FWPCHEVR103
   1 "Yes"
   5 "No";

 label define FWPRWANT103
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define FWPSOON103
   1 "Too soon"
   2 "Right time";

 label define FWPHPYPG103
   0 "VERY UNHAPPY"
   5 "5"
  10 "VERY HAPPY";

 label define FWPCHSEX104
   1 "Male";

 label define FWPCHRES104
   5 "No";

 label define FWPCHLRN104
   1 "During the pregnancy";

 label define FWPCHLIV1031
   6 "Living with other relatives";

 label define FWPCHSIG104
   5 "No";

 label define FWPCHCRT104
   5 "No";

 label define FWPCHGEN104
   5 "No";

 label define FWPCHEVR104
   1 "Yes";

 label define FWPRWANT104
   3 "Probably no";

 label define FWPHPYPG104
   0 "VERY UNHAPPY";

 label define FWPCHSEX105
   1 "Male";

 label define FWPCHRES105
   5 "No";

 label define FWPCHLRN105
   1 "During the pregnancy";

 label define FWPCHLIV1041
   3 "With his/her mother";

 label define FWPCHSIG105
   5 "No";

 label define FWPCHCRT105
   5 "No";

 label define FWPCHGEN105
   5 "No";

 label define FWPCHEVR105
   1 "Yes";

 label define FWPRWANT105
   4 "DEFINITELY NO";

 label define FWPHPYPG105
   0 "Very unhappy";

 label define FWPCHSEX106
   2 "Female";

 label define FWPCHRES106
   1 "Yes";

 label define FWPCHLIV1051
   3 "With his/her mother";

 label define FWPCHSIG106
   1 "Yes";

 label define FWPCHCRT106
   5 "No";

 label define FWPCHGEN106
   5 "No";

 label define FWPCHEVR106
   1 "Yes";

 label define FWPRWANT106
   1 "Definitely yes";

 label define FWPSOON106
   2 "Right time";

 label define FWPHPYPG106
  10 "Very happy";

 label define E_OKAKIDS
   0 "NONE";

 label define FWPOTKID
   1 "Yes"
   5 "No";

 label define FWPOKWTH
   1 "Yes"
   5 "No";

 label define FWPOKSEX
   1 "Male"
   2 "Female";

 label define FWPOKAD
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither";

 label define FWPOKLIV1
   3 "WITH HIS/HER MOTHER"
   5 "LIVING ON OWN"
   6 "LIVING WITH OTHER RELATIVES"
   8 "SOMEPLACE ELSE";

 label define FWPOKFAR
99998 "REFUSED"
99999 "DON'T KNOW";

 label define FWPOKAGE
  99 "Don't know";

 label define FWPOKSEX2
   1 "Male"
   2 "Female";

 label define FWPOKAD2
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither";

 label define FWPOKLIV9
   3 "WITH HIS/HER MOTHER"
   4 "AWAY AT SCHOOL OR COLLEGE"
   5 "LIVING ON OWN"
  99 "DON'T KNOW";

 label define FWPOKLIV10
   2 "In this household part-time";

 label define FWPOKAGE2
  99 "Don't know";

 label define FWPOKSEX3
   1 "Male"
   2 "Female";

 label define FWPOKAD3
   3 "Yes, became guardian"
   5 "No, neither";

 label define FWPOKLIV17
   5 "LIVING ON OWN"
  99 "DON'T KNOW";

 label define FWPOKAGE3
  99 "Don't know";

 label define FWPOKSEX4
   1 "Male"
   2 "Female";

 label define FWPOKAD4
   5 "No, neither";

 label define FWPOKSEX5
   1 "Male"
   2 "Female";

 label define FWPOKAD5
   5 "No, neither";

 label define FWPOKSEX6
   1 "Male";

 label define FWPOKAD6
   5 "No, neither";

 label define FWPOKSEX7
   2 "Female";

 label define FWPOKAD7
   5 "No, neither";

 label define E_OKAKIDS2
   0 "None";

 label define FWPOTKID2
   1 "Yes"
   5 "No"
   8 "Refused";

 label define FWPOKWTH2
   1 "Yes"
   5 "No";

 label define FWPOKSEX11
   1 "Male"
   2 "Female";

 label define FWPOKAD11
   5 "No, neither";

 label define FWPOKSEX12
   1 "Male"
   2 "Female";

 label define FWPOKAD12
   5 "No, neither";

 label define FWPOKSEX13
   1 "Male"
   2 "Female";

 label define FWPOKAD13
   5 "No, neither";

 label define FWPOKSEX14
   1 "Male"
   2 "Female";

 label define FWPOKAD14
   5 "No, neither";

 label define E_OKAKIDS3
   0 "None";

 label define FWPOTKID3
   1 "Yes"
   5 "No";

 label define FWPOKWTH3
   1 "Yes";

 label define FWPOKSEX21
   1 "Male"
   2 "Female";

 label define FWPOKAD21
   5 "No, neither";

 label define FWPOKSEX22
   1 "Male"
   2 "Female";

 label define FWPOKAD22
   5 "No, neither";

 label define FWPOKSEX23
   2 "Female";

 label define FWPOKAD23
   5 "No, neither";

 label define E_OKAKIDS4
   0 "None";

 label define FWPOTKID4
   1 "Yes";

 label define FWPOKWTH4
   1 "Yes"
   5 "No";

 label define FWPOKSEX31
   1 "Male";

 label define FWPOKAD31
   5 "No, neither";

 label define FWPOKAGE31
  16 "5-18 YEARS";

 label define E_OKAKIDS11
   0 "None";

 label define FWPOTKID11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPOKWTH11
   1 "Yes"
   5 "No";

 label define FWPOKSEX101
   1 "Male"
   2 "Female";

 label define FWPOKAD101
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither";

 label define FWPOKLIV801
   3 "WITH HIS/HER MOTHER"
   5 "LIVING ON OWN";

 label define FWPOKAGE101
  99 "Don't know";

 label define FWPOKSEX102
   1 "Male"
   2 "Female";

 label define FWPOKAD102
   3 "Yes, became guardian"
   5 "No, neither";

 label define FWPOKLIV809
   5 "Living on own";

 label define FWPOKAGE102
  99 "Don't know";

 label define FWPOKSEX103
   1 "Male"
   2 "Female";

 label define FWPOKAD103
   5 "NO, NEITHER"
   9 "DON'T KNOW";

 label define FWPOKAGE103
  99 "Don't know";

 label define FWPOKSEX104
   1 "Male"
   2 "Female";

 label define FWPOKAD104
   5 "No, neither";

 label define FWPOKSEX105
   1 "Male"
   2 "Female";

 label define FWPOKAD105
   5 "No, neither";

 label define FWPOKSEX106
   2 "Female";

 label define FWPOKAD106
   5 "No, neither";

 label define FWPOKSEX107
   2 "Female";

 label define FWPOKAD107
   5 "No, neither";

 label define FWPOKSEX108
   1 "Male";

 label define FWPOKAD108
   5 "No, neither";

 label define FWPOKSEX109
   1 "Male";

 label define FWPOKAD109
   5 "No, neither";

 label define FWPOKSEX110
   1 "Male";

 label define FWPOKAD110
   5 "No, neither";

 label define E_NBAKIDS
   0 "None";

 label define FWPNBEVR
   1 "Yes"
   5 "No";

 label define FWPNBREL
   1 "Yes"
   5 "No";

 label define FWPNBFOS
   1 "Yes"
   5 "No";

 label define FWPNBSEX
   1 "Male"
   2 "Female";

 label define FWPNBAD
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither";

 label define FWPNBLIV1
   3 "With his/her mother"
   5 "Living on own";

 label define FWPNBREL2
   5 "No";

 label define FWPNBFOS2
   5 "No";

 label define FWPNBSEX2
   2 "Female";

 label define FWPNBAD2
   5 "No, neither";

 label define FWPNBREL3
   5 "No";

 label define FWPNBFOS3
   5 "No";

 label define FWPNBSEX3
   1 "Male";

 label define FWPNBAD3
   5 "No, neither";

 label define E_NBAKIDS2
   0 "None";

 label define FWPNBEVR2
   1 "Yes"
   5 "No"
   8 "Refused";

 label define FWPNBREL11
   5 "No";

 label define FWPNBFOS11
   1 "Yes";

 label define FWPNBSEX11
   2 "Female";

 label define FWPNBAD11
   5 "No, neither";

 label define FWPNBREL12
   5 "No";

 label define FWPNBFOS12
   1 "Yes";

 label define FWPNBSEX12
   1 "Male";

 label define FWPNBAD12
   5 "No, neither";

 label define E_NBAKIDS3
   0 "None";

 label define FWPNBEVR3
   5 "No";

 label define E_NBAKIDS4
   0 "None";

 label define FWPNBEVR4
   5 "No";

 label define E_NBAKIDS11
   0 "None";

 label define FWPNBEVR11
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define FWPNBREL101
   1 "Yes"
   5 "No";

 label define FWPNBFOS101
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define FWPNBSEX101
   1 "Male"
   2 "Female";

 label define FWPNBAD101
   3 "YES, BECAME GUARDIAN"
   5 "NO, NEITHER"
   9 "DON'T KNOW";

 label define FWPNBLIV801
   5 "Living on own";

 label define FWPNBAGE101
  99 "Don't know";

 label define FWPNBREL102
   1 "Yes"
   5 "No";

 label define FWPNBFOS102
   5 "No";

 label define FWPNBSEX102
   1 "Male"
   2 "Female";

 label define FWPNBAD102
   5 "No, neither";

 label define OTBCHIL
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTBPROBE
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTBCHILN
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  98 "REFUSED";

 label define OTBSAME
   1 "Yes"
   5 "No";

 label define OBCSEXX
   1 "Male"
   2 "Female"
   8 "Refused";

 label define OBCDOB_M
  15 "SUMMER"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define OBCDOB_Y
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB151
9998 "Refused"
9999 "Don't know";

 label define OBCMAGEX
  98 "Refused"
  99 "Don't know";

 label define OBCMLIV
   1 "Yes"
   5 "No";

 label define OBCKNOWX
   1 "DURING THE PREGNANCY"
   2 "AFTER THE CHILD WAS BORN"
   8 "REFUSED";

 label define OBCLIVEX01
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   4 "AWAY AT SCHOOL OR COLLEGE"
   5 "LIVING ON OWN"
   6 "LIVING WITH OTHER RELATIVES"
   7 "DECEASED"
   8 "PLACED FOR ADOPTION OR ADOPTED"
   9 "PLACED IN FOSTER CARE"
  10 "SOMEPLACE ELSE"
  99 "DON'T KNOW";

 label define OBCLIVEX02
   2 "In this household part-time"
   3 "With his/her mother"
   6 "Living with other relatives"
  10 "Someplace else";

 label define OBCLIVEX03
   6 "Living with other relatives"
  10 "Someplace else";

 label define OBCAGE
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older";

 label define OBCCHSIG
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define OBCCHCRT
   1 "Yes"
   5 "No";

 label define OBCCHGEN
   1 "Yes"
   5 "No";

 label define OBCEVER
   1 "Yes"
   5 "No";

 label define OBCFAR
99999 "Don't know";

 label define OBCRWANX
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define OBCSOONX
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   9 "Don't know";

 label define OBCHPYX
   0 "VERY UNHAPPY"
   5 "5"
  10 "VERY HAPPY"
  99 "DON'T KNOW";

 label define OBCSEXX2
   1 "Male"
   2 "Female";

 label define OBCDOB_M2
  15 "Summer"
  98 "Refused"
  99 "Don't know";

 label define OBCDOB_Y2
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB152
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT152
   1 "Yes";

 label define OBCMAGEX2
  98 "Refused"
  99 "Don't know";

 label define OBCMLIV2
   1 "Yes"
   5 "No"
   8 "Refused";

 label define OBCKNOWX2
   1 "During the pregnancy"
   2 "After the child was born";

 label define OBCLIVEX11
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
  10 "Someplace else";

 label define OBCLIVEX12
   2 "In this household part-time"
   3 "With his/her mother"
   6 "Living with other relatives";

 label define OBCLIVEX13
  10 "SOMEPLACE ELSE";

 label define OBCAGE2
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older";

 label define OBCCHSIG2
   1 "Yes"
   5 "No";

 label define OBCCHCRT2
   1 "Yes"
   5 "No";

 label define OBCCHGEN2
   1 "Yes"
   5 "No";

 label define OBCEVER2
   1 "Yes"
   5 "No";

 label define OBCFAR2
99999 "Don't know";

 label define OBCRWANX2
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define OBCSOONX2
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care";

 label define OBCHPYX2
   0 "Very unhappy"
   5 "5"
  10 "Very happy";

 label define OBCSEXX3
   1 "Male"
   2 "Female";

 label define OBCDOB_M3
  13 "Winter"
  98 "Refused"
  99 "Don't know";

 label define OBCDOB_Y3
9998 "Refused"
9999 "Don't know";

 label define CMCHDOB153
9998 "Refused"
9999 "Don't know";

 label define MULTBIRT153
   1 "Yes";

 label define OBCMAGEX3
  98 "Refused"
  99 "Don't know";

 label define OBCMLIV3
   1 "Yes"
   5 "No";

 label define OBCKNOWX3
   1 "During the pregnancy"
   2 "After the child was born";

 label define OBCLIVEX21
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   5 "LIVING ON OWN"
   6 "LIVING WITH OTHER RELATIVES"
   7 "DECEASED"
  10 "SOMEPLACE ELSE";

 label define OBCLIVEX22
   2 "In this household part-time"
   3 "With his/her mother";

 label define OBCLIVEX23
  10 "Someplace else";

 label define OBCLIVEX24
   6 "Living with other relatives";

 label define OBCAGE3
   1 "Less than 5 years old"
   2 "5-18 years old"
   3 "19 years or older";

 label define OBCCHSIG3
   1 "Yes"
   5 "No";

 label define OBCCHCRT3
   1 "Yes"
   5 "No";

 label define OBCCHGEN3
   1 "Yes"
   5 "No";

 label define OBCEVER3
   1 "Yes"
   5 "No";

 label define OBCFAR3
99999 "Don't know";

 label define OBCRWANX3
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define OBCSOONX3
   1 "Too soon"
   2 "Right time";

 label define OBCHPYX3
   0 "Very unhappy"
   5 "5"
  10 "Very happy";

 label define OBCSEXX4
   1 "Male"
   2 "Female";

 label define OBCDOB_M4
  15 "SUMMER";

 label define OBCDOB_Y4
9999 "Don't know";

 label define CMCHDOB154
9999 "Don't know";

 label define OBCMLIV4
   1 "Yes"
   5 "No";

 label define OBCKNOWX4
   1 "During the pregnancy"
   2 "After the child was born";

 label define OBCLIVEX31
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   5 "LIVING ON OWN"
   6 "LIVING WITH OTHER RELATIVES";

 label define OBCLIVEX32
   3 "With his/her mother";

 label define OBCAGE4
   2 "5-18 years old"
   3 "19 years or older";

 label define OBCCHSIG4
   1 "Yes"
   5 "No";

 label define OBCCHCRT4
   1 "Yes"
   5 "No";

 label define OBCCHGEN4
   1 "Yes"
   5 "No";

 label define OBCEVER4
   1 "Yes"
   5 "No";

 label define OBCRWANX4
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define OBCSOONX4
   1 "Too soon"
   2 "Right time";

 label define OBCHPYX4
   0 "Very unhappy"
   5 "5"
  10 "Very happy";

 label define OBCSEXX5
   1 "Male"
   2 "Female";

 label define OBCDOB_M5
  99 "Don't know";

 label define OBCDOB_Y5
9999 "Don't know";

 label define CMCHDOB155
9999 "Don't know";

 label define OBCMLIV5
   1 "Yes"
   5 "No";

 label define OBCKNOWX5
   1 "During the pregnancy"
   2 "After the child was born";

 label define OBCLIVEX41
   3 "With his/her mother"
   5 "Living on own";

 label define OBCAGE5
   2 "5-18 years old";

 label define OBCCHSIG5
   1 "Yes"
   5 "No";

 label define OBCCHCRT5
   1 "Yes"
   5 "No";

 label define OBCCHGEN5
   1 "Yes"
   5 "No";

 label define OBCEVER5
   1 "Yes"
   5 "No";

 label define OBCRWANX5
   1 "Definitely yes"
   2 "Probably yes"
   4 "Definitely no";

 label define OBCSOONX5
   1 "Too soon"
   2 "Right time";

 label define OBCHPYX5
   0 "Very unhappy"
  10 "Very happy";

 label define OBCSEXX6
   1 "Male"
   2 "Female";

 label define OBCDOB_M6
  15 "Summer";

 label define OBCDOB_Y6
9999 "Don't know";

 label define CMCHDOB156
9999 "Don't know";

 label define OBCMAGEX6
  99 "DON'T KNOW";

 label define OBCMLIV6
   5 "No";

 label define OBCKNOWX6
   1 "During the pregnancy"
   2 "After the child was born";

 label define OBCLIVEX51
   3 "With his/her mother"
   5 "Living on own";

 label define OBCAGE6
   2 "5-18 years old"
   3 "19 years or older";

 label define OBCCHSIG6
   1 "Yes";

 label define OBCCHCRT6
   1 "Yes";

 label define OBCCHGEN6
   1 "Yes";

 label define OBCEVER6
   5 "No";

 label define OBCSEXX7
   1 "Male";

 label define OBCDOB_M7
  15 "Summer";

 label define OBCMLIV7
   1 "Yes";

 label define OBCLIVEX61
   3 "With his/her mother";

 label define OBCAGE7
   2 "5-18 years old";

 label define OBCCHSIG7
   1 "Yes";

 label define OBCCHCRT7
   1 "Yes";

 label define OBCCHGEN7
   1 "Yes";

 label define OBCEVER7
   1 "Yes";

 label define OBCRWANX7
   2 "PROBABLY YES"
   4 "DEFINITELY NO";

 label define OBCSOONX7
   3 "LATER";

 label define OBCHPYX7
   0 "Very unhappy";

 label define OBCSEXX8
   2 "Female";

 label define OBCMLIV8
   5 "No";

 label define OBCKNOWX8
   1 "During the pregnancy";

 label define OBCLIVEX71
   3 "With his/her mother";

 label define OBCCHSIG8
   1 "Yes";

 label define OBCCHCRT8
   1 "Yes";

 label define OBCCHGEN8
   1 "Yes";

 label define OBCEVER8
   5 "No";

 label define OBCRWANX8
   4 "Definitely no";

 label define OBCHPYX8
   0 "Very unhappy";

 label define F_AKIDS
   0 "None";

 label define OTACHIL
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTACHILN
   1 "1 CHILD";

 label define OTNBREL
   1 "Yes"
   5 "No";

 label define OTNBFOS
   1 "Yes"
   5 "No";

 label define OTNBSEX
   1 "Male"
   2 "Female";

 label define OTNBAD
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither";

 label define OTNBLIV1
   1 "IN THIS HOUSEHOLD FULL-TIME"
   3 "WITH HIS/HER BIOLOGICAL PARENT(S)"
   5 "LIVING ON OWN"
   8 "SOMEPLACE ELSE";

 label define OTNBAGE
  99 "Don't know";

 label define OTNBREL2
   1 "Yes"
   5 "No";

 label define OTNBFOS2
   1 "Yes"
   5 "No";

 label define OTNBSEX2
   1 "Male"
   2 "Female";

 label define OTNBAD2
   1 "Yes, adopted"
   3 "Yes, became guardian"
   5 "No, neither";

 label define OTNBLIV9
   1 "IN THIS HOUSEHOLD FULL-TIME"
   3 "WITH HIS/HER BIOLOGICAL PARENT(S)";

 label define OTNBAGE2
  99 "Don't know";

 label define OTNBREL3
   1 "Yes"
   5 "No";

 label define OTNBFOS3
   1 "Yes"
   5 "No";

 label define OTNBSEX3
   1 "Male"
   2 "Female";

 label define OTNBAD3
   3 "Yes, became guardian"
   5 "No, neither";

 label define OTNBLIV17
   5 "Living on own";

 label define OTNBAGE3
  99 "Don't know";

 label define OTNBREL4
   1 "Yes"
   5 "No";

 label define OTNBFOS4
   5 "No";

 label define OTNBSEX4
   1 "Male"
   2 "Female";

 label define OTNBAD4
   5 "No, neither";

 label define OTNBAGE4
  99 "Don't know";

 label define OTNBREL5
   1 "Yes"
   5 "No";

 label define OTNBFOS5
   5 "No";

 label define OTNBSEX5
   1 "Male"
   2 "Female";

 label define OTNBAD5
   5 "No, neither";

 label define OTNBREL6
   1 "Yes"
   5 "No";

 label define OTNBFOS6
   5 "No";

 label define OTNBSEX6
   1 "Male"
   2 "Female";

 label define OTNBAD6
   5 "No, neither";

 label define OTNBREL7
   1 "Yes"
   5 "No";

 label define OTNBFOS7
   5 "No";

 label define OTNBSEX7
   1 "Male"
   2 "Female";

 label define OTNBAD7
   5 "No, neither";

 label define OTNBREL8
   1 "Yes"
   5 "No";

 label define OTNBFOS8
   5 "No";

 label define OTNBSEX8
   1 "Male";

 label define OTNBAD8
   5 "No, neither";

 label define OTNBREL9
   1 "Yes"
   5 "No";

 label define OTNBFOS9
   5 "No";

 label define OTNBSEX9
   1 "Male"
   2 "Female";

 label define OTNBAD9
   5 "No, neither";

 label define OTNBREL10
   1 "Yes"
   5 "No";

 label define OTNBFOS10
   5 "No";

 label define OTNBSEX10
   1 "Male"
   2 "Female";

 label define OTNBAD10
   5 "No, neither";

 label define OTPREG
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTPRGPRB
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define OTPRGN
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
  98 "REFUSED";

 label define OTPRGEND
   1 "MISCARRIAGE"
   2 "STILLBIRTH"
   3 "ABORTION"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define OTMSN
   0 "NONE"
  98 "REFUSED";

 label define OTSTN
   0 "NONE"
  98 "Refused";

 label define OTABN
  98 "REFUSED";

 label define TOTPRG
   0 "NONE"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 PREGNANCIES"
   5 "5 PREGNANCIES"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define OTPREGS
   0 "NONE"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES";

 label define TOTPREGS_C
   0 "NONE"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 PREGNANCIES"
   5 "5 PREGNANCIES"
 998 "REFUSED";

 label define TOTPREGS_R
   0 "NONE"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 PREGNANCIES"
   5 "5 PREGNANCIES"
 998 "REFUSED"
 999 "DON'T KNOW";

 label define BIOKIDS
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define ADOPKIDS
   0 "NONE";

 label define ANYKIDS
   0 "NO"
   1 "YES";

 label define BIOADOPT
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define PREGSNOW
   0 "INAPP/DK/RF"
   1 "1 WOMAN"
   2 "2 WOMEN";

 label define NUMLIFE
  50 "50 OR MORE PARTNERS"
 998 "REFUSED"
 999 "DON'T KNOW";

 label define BIODOB1
9998 "Refused"
9999 "Don't know";

 label define BIODOB2
9998 "Refused"
9999 "Don't know";

 label define BIODOB3
9999 "Don't know";

 label define BIODOB4
9998 "Refused"
9999 "Don't know";

 label define BIODOB5
9998 "Refused"
9999 "Don't know";

 label define BIODOB6
9998 "Refused"
9999 "Don't know";

 label define BIODOB7
9999 "DON'T KNOW";

 label define BIODOB8
9999 "Don't know";

 label define BIODOB9
9999 "Don't know";

 label define BIOSEX1
   1 "Male"
   2 "Female"
   8 "Refused";

 label define BIOSEX2
   1 "Male"
   2 "Female"
   8 "Refused";

 label define BIOSEX3
   1 "Male"
   2 "Female"
   8 "Refused";

 label define BIOSEX4
   1 "Male"
   2 "Female";

 label define BIOSEX5
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define BIOSEX6
   1 "Male"
   2 "Female"
   8 "Refused"
   9 "Don't know";

 label define BIOSEX7
   1 "Male"
   2 "Female"
   9 "Don't know";

 label define BIOSEX8
   1 "Male"
   2 "Female";

 label define BIOSEX9
   2 "Female";

 label define BIOAGE1
 998 "REFUSED"
 999 "DON'T KNOW";

 label define BIOAGE2
 998 "Refused"
 999 "Don't know";

 label define BIOAGE3
 999 "DON'T KNOW";

 label define BIOAGE4
 998 "Refused"
 999 "Don't know";

 label define BIOAGE5
 998 "REFUSED"
 999 "DON'T KNOW";

 label define BIOAGE6
 998 "Refused"
 999 "Don't know";

 label define BIOAGE7
 999 "DON'T KNOW";

 label define BIOAGE8
 999 "Don't know";

 label define BIOAGE9
 999 "Don't know";

 label define BIOAGEGP1
   1 "UNDER 5 YEARS"
   2 "5-18 YEARS"
   3 "19 OR OLDER";

 label define BIOAGEGP2
   1 "UNDER 5 YEARS"
   2 "5-18 YEARS"
   3 "19 OR OLDER"
  97 "NOT ASCERTAINED";

 label define BIOAGEGP3
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not ascertained";

 label define BIOAGEGP4
   1 "Under 5 years"
   2 "5-18 years"
   3 "19 or older"
  97 "Not ascertained";

 label define BIOAGEGP5
   1 "UNDER 5 YEARS"
   2 "5-18 YEARS"
   3 "19 OR OLDER"
  97 "NOT ASCERTAINED"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define BIOAGEGP6
   1 "UNDER 5 YEARS"
   2 "5-18 YEARS"
   3 "19 OR OLDER"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define BIOAGEGP7
   1 "UNDER 5 YEARS"
   2 "5-18 YEARS"
  99 "DON'T KNOW";

 label define BIOAGEGP8
   1 "UNDER 5 YEARS"
   2 "5-18 YEARS";

 label define BIOAGEGP9
   1 "Under 5 years"
   2 "5-18 years";

 label define BIOHH1
   1 "IN HOUSEHOLD"
   2 "ALIVE, NOT ADOPTED/FOSTER, BUT NOT IN HH"
   3 "DEAD OR ADOPTED/FOSTER OR DK/RF";

 label define BIOHH2
   1 "In household"
   2 "Alive, not adopted/foster, but not in HH"
   3 "Dead or adopted/foster or DK/RF";

 label define BIOHH3
   1 "In household"
   2 "Alive, not adopted/foster, but not in HH"
   3 "Dead or adopted/foster or DK/RF";

 label define BIOHH4
   1 "In household"
   2 "Alive, not adopted/foster, but not in HH"
   3 "Dead or adopted/foster or DK/RF";

 label define BIOHH5
   1 "In household"
   2 "Alive, not adopted/foster, but not in HH"
   3 "Dead or adopted/foster or DK/RF";

 label define BIOHH6
   1 "In household"
   2 "Alive, not adopted/foster, but not in HH"
   3 "Dead or adopted/foster or DK/RF";

 label define BIOHH7
   1 "In household"
   2 "Alive, not adopted/foster, but not in HH"
   3 "Dead or adopted/foster or DK/RF";

 label define BIOHH8
   1 "IN HOUSEHOLD"
   2 "ALIVE, NOT ADOPTED/FOSTER, BUT NOT IN HH";

 label define BIOHH9
   1 "In household"
   2 "Alive, not adopted/foster, but not in HH";

 label define BIOMOM1
   1 "CURRENT WIFE"
   2 "CURRENT COHABITING PARTNER"
   3 "RECENT OR LAST PARTNER (UP TO 3 MOST RECENT IN LAST 12 MONTHS), ALSO AN FORMER WIFE OR COHABITING PARTNER"
   4 "RECENT OR LAST PARTNER (UP TO 3 MOST RECENT IN LAST 12 MONTHS), NOT A FORMER WIFE OR COHABITING PARTNER"
   5 "FORMER WIFE (REPORTED IN SECTION E)"
   6 "FIRST COHABITING PARTNER (REPORTED IN SECTION E)"
   7 "OTHER SEXUAL PARTNER, NOT OTHERWISE CLASSIFIED IN CODES 1-6";

 label define BIOMOM2
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define BIOMOM3
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define BIOMOM4
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define BIOMOM5
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define BIOMOM6
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define BIOMOM7
   1 "CURRENT WIFE"
   2 "CURRENT COHABITING PARTNER"
   3 "RECENT OR LAST PARTNER (UP TO 3 MOST RECENT IN LAST 12 MONTHS), ALSO AN FORMER WIFE OR COHABITING PARTNER"
   6 "FIRST COHABITING PARTNER (REPORTED IN SECTION E)"
   7 "OTHER SEXUAL PARTNER, NOT OTHERWISE CLASSIFIED IN CODES 1-6";

 label define BIOMOM8
   1 "CURRENT WIFE"
   3 "RECENT OR LAST PARTNER (UP TO 3 MOST RECENT IN LAST 12 MONTHS), ALSO AN FORMER WIFE OR COHABITING PARTNER"
   7 "OTHER SEXUAL PARTNER, NOT OTHERWISE CLASSIFIED IN CODES 1-6";

 label define BIOMOM9
   1 "Current wife"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define BIOMAR1
   0 "NO"
   1 "YES";

 label define BIOMAR2
   0 "NO"
   1 "YES";

 label define BIOMAR3
   0 "NO"
   1 "YES";

 label define BIOMAR4
   0 "NO"
   1 "YES";

 label define BIOMAR5
   0 "NO"
   1 "YES";

 label define BIOMAR6
   0 "NO"
   1 "YES";

 label define BIOMAR7
   0 "NO"
   1 "YES";

 label define BIOMAR8
   0 "NO"
   1 "YES";

 label define BIOMAR9
   0 "NO"
   1 "YES";

 label define BIOCOHB1
   0 "NO"
   1 "YES";

 label define BIOCOHB2
   0 "NO"
   1 "YES";

 label define BIOCOHB3
   0 "NO"
   1 "YES";

 label define BIOCOHB4
   0 "NO"
   1 "YES";

 label define BIOCOHB5
   0 "NO"
   1 "YES";

 label define BIOCOHB6
   0 "NO"
   1 "YES";

 label define BIOCOHB7
   0 "NO"
   1 "YES";

 label define BIOCOHB8
   0 "NO"
   1 "YES";

 label define BIOCOHB9
   0 "NO"
   1 "YES";

 label define BIOLRNPG1
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused";

 label define BIOLRNPG2
   1 "During the pregnancy"
   2 "After the child was born";

 label define BIOLRNPG3
   1 "During the pregnancy"
   2 "After the child was born";

 label define BIOLRNPG4
   1 "During the pregnancy"
   2 "After the child was born";

 label define BIOLRNPG5
   1 "During the pregnancy"
   2 "After the child was born"
   8 "Refused";

 label define BIOLRNPG6
   1 "During the pregnancy"
   8 "Refused";

 label define BIOLRNPG7
   1 "During the pregnancy"
   9 "Don't know";

 label define BIOLRNPG8
   1 "During the pregnancy";

 label define BIOLRNPG9
   1 "During the pregnancy"
   2 "After the child was born";

 label define BIOLIVNG11
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   8 "Placed for adoption or adopted"
   9 "Placed in foster care"
  10 "Someplace else"
  99 "Don't know";

 label define BIOLIVNG12
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   4 "AWAY AT SCHOOL OR COLLEGE"
   6 "LIVING WITH OTHER RELATIVES"
  10 "SOMEPLACE ELSE";

 label define BIOLIVNG13
   6 "Living with other relatives"
  10 "Someplace else";

 label define BIOLIVNG21
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   4 "AWAY AT SCHOOL OR COLLEGE"
   5 "LIVING ON OWN"
   6 "LIVING WITH OTHER RELATIVES"
   7 "DECEASED"
   8 "PLACED FOR ADOPTION OR ADOPTED"
   9 "PLACED IN FOSTER CARE"
  10 "SOMEPLACE ELSE";

 label define BIOLIVNG22
   2 "In this household part-time"
   3 "With his/her mother"
   6 "Living with other relatives";

 label define BIOLIVNG23
  10 "Someplace else";

 label define BIOLIVNG31
   1 "In this household full-time"
   2 "In this household part-time"
   3 "With his/her mother"
   4 "Away at school or college"
   5 "Living on own"
   6 "Living with other relatives"
   7 "Deceased"
   9 "Placed in foster care"
  10 "Someplace else";

 label define BIOLIVNG32
   2 "In this household part-time"
   3 "With his/her mother"
   5 "Living on own"
   6 "Living with other relatives";

 label define BIOLIVNG33
  10 "Someplace else";

 label define BIOLIVNG41
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   5 "LIVING ON OWN"
   6 "LIVING WITH OTHER RELATIVES"
   7 "DECEASED"
   8 "PLACED FOR ADOPTION OR ADOPTED"
  10 "SOMEPLACE ELSE";

 label define BIOLIVNG42
   3 "With his/her mother";

 label define BIOLIVNG43
  10 "Someplace else";

 label define BIOLIVNG44
   6 "Living with other relatives";

 label define BIOLIVNG51
   1 "IN THIS HOUSEHOLD FULL-TIME"
   2 "IN THIS HOUSEHOLD PART-TIME"
   3 "WITH HIS/HER MOTHER"
   5 "LIVING ON OWN"
   6 "LIVING WITH OTHER RELATIVES"
   7 "DECEASED"
  10 "SOMEPLACE ELSE"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define BIOLIVNG52
   2 "In this household part-time"
   3 "With his/her mother";

 label define BIOLIVNG61
   1 "IN THIS HOUSEHOLD FULL-TIME"
   3 "WITH HIS/HER MOTHER"
   5 "LIVING ON OWN"
  10 "SOMEPLACE ELSE"
  98 "REFUSED";

 label define BIOLIVNG71
   1 "IN THIS HOUSEHOLD FULL-TIME"
   3 "WITH HIS/HER MOTHER"
  99 "DON'T KNOW";

 label define BIOLIVNG81
   1 "In this household full-time"
   3 "With his/her mother";

 label define BIOLIVNG91
   1 "In this household full-time"
   3 "With his/her mother";

 label define BIOCHSIG1
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define BIOCHSIG2
   1 "Yes"
   5 "No";

 label define BIOCHSIG3
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define BIOCHSIG4
   1 "Yes"
   5 "No";

 label define BIOCHSIG5
   1 "Yes"
   5 "No";

 label define BIOCHSIG6
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define BIOCHSIG7
   1 "Yes";

 label define BIOCHSIG8
   1 "Yes";

 label define BIOCHSIG9
   1 "Yes";

 label define BIOCHCRT1
   1 "Yes"
   5 "No";

 label define BIOCHCRT2
   1 "Yes"
   5 "No";

 label define BIOCHCRT3
   1 "Yes"
   5 "No";

 label define BIOCHCRT4
   1 "Yes"
   5 "No";

 label define BIOCHCRT5
   1 "Yes"
   5 "No";

 label define BIOCHCRT6
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define BIOCHCRT7
   1 "Yes"
   5 "No";

 label define BIOCHCRT8
   1 "Yes"
   5 "No";

 label define BIOCHCRT9
   1 "Yes"
   5 "No";

 label define BIOCHGEN1
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define BIOCHGEN2
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define BIOCHGEN3
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define BIOCHGEN4
   1 "Yes"
   5 "No";

 label define BIOCHGEN5
   1 "Yes"
   5 "No";

 label define BIOCHGEN6
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define BIOCHGEN7
   1 "Yes"
   5 "No";

 label define BIOCHGEN8
   5 "No";

 label define BIOCHGEN9
   1 "Yes"
   5 "No";

 label define BIOLVEVR1
   1 "Yes"
   5 "No";

 label define BIOLVEVR2
   1 "Yes"
   5 "No";

 label define BIOLVEVR3
   1 "Yes"
   5 "No";

 label define BIOLVEVR4
   1 "Yes"
   5 "No";

 label define BIOLVEVR5
   1 "Yes"
   5 "No";

 label define BIOLVEVR6
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define BIOLVEVR7
   1 "Yes";

 label define BIOLVEVR8
   1 "Yes"
   5 "No";

 label define BIOLVEVR9
   5 "No";

 label define BIOHWFAR1
99998 "Refused"
99999 "Don't know";

 label define BIOHWFAR2
99999 "Don't know";

 label define BIOHWFAR3
99999 "Don't know";

 label define BIOHWFAR4
99998 "Refused"
99999 "Don't know";

 label define BIOHWFAR5
99999 "Don't know";

 label define BIOHWFAR6
99999 "DON'T KNOW";

 label define BIOWANT1
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   9 "Don't know";

 label define BIOWANT2
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   9 "Don't know";

 label define BIOWANT3
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define BIOWANT4
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused";

 label define BIOWANT5
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused";

 label define BIOWANT6
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no";

 label define BIOWANT7
   1 "DEFINITELY YES"
   2 "PROBABLY YES"
   4 "DEFINITELY NO"
   8 "REFUSED";

 label define BIOWANT8
   1 "Definitely yes"
   2 "Probably yes"
   8 "Refused";

 label define BIOWANT9
   1 "DEFINITELY YES"
   8 "REFUSED";

 label define BIOHSOON1
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care"
   9 "Don't know";

 label define BIOHSOON2
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care";

 label define BIOHSOON3
   1 "TOO SOON"
   2 "RIGHT TIME"
   3 "LATER"
   4 "DIDN'T CARE"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define BIOHSOON4
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care";

 label define BIOHSOON5
   1 "Too soon"
   2 "Right time"
   3 "Later"
   4 "Didn't care";

 label define BIOHSOON6
   1 "TOO SOON"
   2 "RIGHT TIME"
   3 "LATER"
   8 "REFUSED";

 label define BIOHSOON7
   1 "Too soon"
   2 "Right time";

 label define BIOHSOON8
   1 "Too soon"
   2 "Right time";

 label define BIOHSOON9
   2 "Right time";

 label define BIOHPYPG1
   0 "Very unhappy"
   5 "5"
  10 "Very happy"
  99 "Don't know";

 label define BIOHPYPG2
   0 "Very unhappy"
   5 "5"
  10 "Very happy";

 label define BIOHPYPG3
   0 "Very unhappy"
   5 "5"
  10 "Very happy";

 label define BIOHPYPG4
   0 "Very unhappy"
   5 "5"
  10 "Very happy";

 label define BIOHPYPG5
   0 "Very unhappy"
   5 "5"
  10 "Very happy";

 label define BIOHPYPG6
   0 "Very unhappy"
  10 "Very happy";

 label define BIOHPYPG7
   0 "Very unhappy"
  10 "Very happy";

 label define BIOHPYPG8
  10 "Very happy";

 label define BIOHPYPG9
  10 "Very happy";

 label define CRALL
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
   4 "4 OR MORE CHILDREN";

 label define CRALLU5
   0 "NONE"
   1 "1 CHILD"
   2 "2 OR MORE CHILDREN";

 label define CRALL518
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 OR MORE CHILDREN";

 label define CRMALU5
   0 "NONE"
   1 "1 CHILD"
   2 "2 OR MORE CHILDREN";

 label define CRMAL518
   0 "NONE"
   1 "1 CHILD"
   2 "2 OR MORE CHILDREN";

 label define CRFEMU5
   0 "NONE"
   1 "1 CHILD"
   2 "2 OR MORE CHILDREN";

 label define CRFEM518
   0 "NONE"
   1 "1 CHILD"
   2 "2 OR MORE CHILDREN";

 label define NCALL
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define NCALLU5
   0 "NONE"
   1 "1 CHILD";

 label define NCALL518
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define NCMALU5
   0 "NONE"
   1 "1 CHILD";

 label define NCMAL518
   0 "NONE"
   1 "1 CHILD";

 label define NCFEMU5
   0 "NONE"
   1 "1 CHILD";

 label define NCFEM518
   0 "NONE"
   1 "1 CHILD";

 label define RFAGE
 998 "Refused"
 999 "Don't know";

 label define RFSEX
   1 "MALE"
   2 "FEMALE"
  98 "REFUSED";

 label define ROUTG04
   1 "NOT AT ALL"
   2 "LESS THAN ONCE A WEEK"
   3 "ABOUT ONCE A WEEK"
   4 "SEVERAL TIMES A WEEK"
   5 "EVERY DAY (AT LEAST ONCE A DAY)"
   9 "DON'T KNOW";

 label define RMEAL04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define RERRAND04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define RPLAY04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define RREAD04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define RAFFECT04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define RPRAISE04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define RFEED04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define RBATH04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define RDIAPER04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define RBED04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define RAPPT04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define RDISC04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define ROUTG518
   1 "NOT AT ALL"
   2 "LESS THAN ONCE A WEEK"
   3 "ABOUT ONCE A WEEK"
   4 "SEVERAL TIMES A WEEK"
   5 "EVERY DAY (AT LEAST ONCE A DAY)";

 label define RMEAL518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)";

 label define RERRAND518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)";

 label define RAFFECT518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)";

 label define RPRAISE518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)";

 label define RTAKE518
   1 "NOT AT ALL"
   2 "LESS THAN ONCE A WEEK"
   3 "ABOUT ONCE A WEEK"
   4 "SEVERAL TIMES A WEEK"
   5 "EVERY DAY (AT LEAST ONCE A DAY)"
   7 "NOT ASCERTAINED";

 label define RAPPT518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define RHELP518
   1 "NOT AT ALL"
   2 "LESS THAN ONCE A WEEK"
   3 "ABOUT ONCE A WEEK"
   4 "SEVERAL TIMES A WEEK"
   5 "EVERY DAY (AT LEAST ONCE A DAY)"
   7 "NOT ASCERTAINED"
   9 "DON'T KNOW";

 label define RDISC518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)";

 label define RCLFR518
   1 "KNOWS EVERYTHING"
   2 "KNOWS MOST THINGS"
   3 "KNOWS SOME THINGS"
   4 "KNOWS A LITTLE"
   5 "KNOWS NOTHING"
   7 "NOT ASCERTAINED"
   9 "DON'T KNOW";

 label define RDO518
   1 "KNOWS EVERYTHING"
   2 "KNOWS MOST THINGS"
   3 "KNOWS SOME THINGS"
   4 "KNOWS A LITTLE"
   5 "KNOWS NOTHING"
   7 "NOT ASCERTAINED";

 label define NRFAGE
 998 "Refused"
 999 "Don't know";

 label define NRFSEX
   1 "Male"
   2 "Female"
  98 "Refused";

 label define NRVISIT04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define NRSATVIS04
   0 "0"
   1 "1"
   2 "2"
   3 "3"
   4 "4"
   5 "5"
   6 "6"
   7 "7"
   8 "8"
   9 "9"
  10 "10";

 label define NROUTG04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define NRMEAL04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define NRERRAND04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define NROVRNT04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define NRPLAY04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define NRREAD04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define NRAFFECT04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define NRPRAISE04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define NRFEED04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define NRBATH04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define NRDIAPER04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define NRBED04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define NRAPPT04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define NRDISC04
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   9 "Don't know";

 label define NRVISIT518
   1 "NOT AT ALL"
   2 "LESS THAN ONCE A WEEK"
   3 "ABOUT ONCE A WEEK"
   4 "SEVERAL TIMES A WEEK"
   5 "EVERY DAY (AT LEAST ONCE A DAY)"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define NRSATVIS518
   0 "0"
   1 "1"
   2 "2"
   3 "3"
   4 "4"
   5 "5"
   6 "6"
   7 "7"
   8 "8"
   9 "9"
  10 "10"
  97 "NOT ASCERTAINED"
  99 "DON'T KNOW";

 label define NROUTG518
   1 "NOT AT ALL"
   2 "LESS THAN ONCE A WEEK"
   3 "ABOUT ONCE A WEEK"
   4 "SEVERAL TIMES A WEEK"
   5 "EVERY DAY (AT LEAST ONCE A DAY)"
   7 "NOT ASCERTAINED"
   8 "REFUSED";

 label define NRMEAL518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused";

 label define NRERRAND518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused";

 label define NROVRNT518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused";

 label define NRAFFECT518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused";

 label define NRPRAISE518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused";

 label define NRTAKE518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained";

 label define NRAPPT518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused";

 label define NRHELP518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained";

 label define NRDISC518
   1 "Not at all"
   2 "Less than once a week"
   3 "About once a week"
   4 "Several times a week"
   5 "Every day (at least once a day)"
   7 "Not ascertained"
   8 "Refused";

 label define NRCLFR518
   1 "KNOWS EVERYTHING"
   2 "KNOWS MOST THINGS"
   3 "KNOWS SOME THINGS"
   4 "KNOWS A LITTLE"
   5 "KNOWS NOTHING"
   7 "NOT ASCERTAINED"
   8 "REFUSED";

 label define NRDO518
   1 "Knows everything"
   2 "Knows most things"
   3 "Knows some things"
   4 "Knows a little"
   5 "Knows nothing"
   7 "Not ascertained";

 label define NRMONEY
   1 "Yes"
   5 "No"
   8 "Refused";

 label define NREG
   1 "REGULAR BASIS"
   2 "ONCE IN A WHILE"
   9 "DON'T KNOW";

 label define NRAGREE
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define RWANT
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define PROBWANT
   1 "PROBABLY WANT"
   2 "PROBABLY DO NOT WANT"
   9 "DON'T KNOW";

 label define JINTEND
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define JSUREINT
   1 "VERY SURE"
   2 "SOMEWHAT SURE"
   3 "NOT AT ALL SURE"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define JINTENDN
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define JEXPECTL
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  99 "DON'T KNOW";

 label define JEXPECTS
   0 "NONE"
   1 "1 CHILD";

 label define JINTNEXT
   1 "WITHIN THE NEXT 2 YEARS"
   2 "2-5 YEARS FROM NOW"
   3 "MORE THAN 5 YEARS FROM NOW"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define INTEND
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   9 "Don't know";

 label define INTENDN
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define EXPECTL
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
  99 "DON'T KNOW";

 label define EXPECTS
   0 "NONE"
   1 "1 CHILD"
  99 "DON'T KNOW";

 label define INTNEXT
   1 "Within the next 2 years"
   2 "2-5 years from now"
   3 "More than 5 years from now"
   8 "Refused"
   9 "Don't know";

 label define USUALCAR
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define USLPLACE
   1 "PRIVATE DOCTOR'S OFFICE OR HMO"
   2 "COMMUNITY HEALTH CLINIC, COMMUNITY CLINIC, PUBLIC HEALTH CLINIC"
   3 "FAMILY PLANNING OR PLANNED PARENTHOOD CLINIC"
   4 "EMPLOYER OR COMPANY CLINIC"
   5 "SCHOOL OR SCHOOL-BASED CLINIC"
   6 "HOSPITAL OUTPATIENT CLINIC"
   7 "HOSPITAL EMERGENCY ROOM"
   8 "HOSPITAL REGULAR ROOM"
   9 "URGENT CARE CENTER, URGI-CARE, OR WALK-IN FACILITY"
  10 "SEXUALLY TRANSMITTED DISEASE (STD) CLINIC"
  20 "SOME OTHER PLACE"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define USL12MOS
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define COVER12
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define NUMNOCOV
   1 "1 MONTH"
   2 "2 MONTHS"
   3 "3 MONTHS"
   4 "4 MONTHS"
   5 "5 MONTHS"
   6 "6 MONTHS"
   7 "7 MONTHS"
   8 "8 MONTHS"
   9 "9 MONTHS"
  10 "10 MONTHS"
  11 "11 MONTHS"
  12 "12 MONTHS"
  99 "DON'T KNOW";

 label define COVERHOW01
   1 "PRIVATE HEALTH INSURANCE PLAN (FROM EMPLOYER OR WORKPLACE; PURCHASED DIRECTLY; THROUGH A STATE OR LOCAL GOVERNMENT PROGRAM OR COMMUNITY PROGRAM)"
   2 "MEDICAID-ADDITIONAL NAME(S) FOR MEDICAID IN THIS STATE: [MEDICAID_FILL]"
   3 "MEDICARE"
   4 "MEDI-GAP"
   5 "MILITARY HEALTH CARE INCLUDING: THE VA, CHAMPUS, TRICARE, CHAMP-VA"
   6 "INDIAN HEALTH SERVICE"
   7 "CHIP (CHILDREN'S HEALTH INSURANCE PROGRAM)-ADD'L NAMES: [STATE-SPECIFIC CHIP NAME]"
   8 "SINGLE-SERVICE PLAN (E.G., DENTAL, VISION, PRESCRIPTIONS)"
   9 "STATE-SPONSORED HEALTH PLAN (CALLED [STATE-SPECIFIC PLAN NAME] IN THIS STATE)"
  10 "OTHER GOVERNMENT HEALTH CARE"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define COVERHOW02
   1 "PRIVATE HEALTH INSURANCE PLAN (FROM EMPLOYER OR WORKPLACE; PURCHASED DIRECTLY; THROUGH A STATE OR LOCAL GOVERNMENT PROGRAM OR COMMUNITY PROGRAM)"
   2 "MEDICAID-ADDITIONAL NAMES IN THIS STATE: [STATE-SPECIFIC MEDICAID NAME]"
   3 "MEDICARE"
   4 "MEDI-GAP"
   5 "MILITARY HEALTH CARE INCLUDING: THE VA, CHAMPUS, TRICARE, CHAMP-VA"
   6 "INDIAN HEALTH SERVICE"
   7 "CHIP (CHILDREN'S HEALTH INSURANCE PROGRAM)-ADD'L NAMES: [STATE-SPECIFIC CHIP NAME]"
   8 "SINGLE-SERVICE PLAN (E.G., DENTAL, VISION, PRESCRIPTIONS)"
   9 "STATE-SPONSORED HEALTH PLAN (CALLED [STATE-SPECIFIC PLAN NAME] IN THIS STATE)"
  10 "OTHER GOVERNMENT HEALTH CARE";

 label define COVERHOW03
   1 "PRIVATE HEALTH INSURANCE PLAN (FROM EMPLOYER OR WORKPLACE; PURCHASED DIRECTLY; THROUGH A STATE OR LOCAL GOVERNMENT PROGRAM OR COMMUNITY PROGRAM)"
   2 "MEDICAID-ADDITIONAL NAMES IN THIS STATE: [STATE-SPECIFIC MEDICAID NAME]"
   3 "MEDICARE"
   5 "MILITARY HEALTH CARE INCLUDING: THE VA, CHAMPUS, TRICARE, CHAMP-VA"
   6 "INDIAN HEALTH SERVICE"
   8 "SINGLE-SERVICE PLAN (E.G., DENTAL, VISION, PRESCRIPTIONS)";

 label define NOWCOVER01
   1 "PRIVATE HEALTH INSURANCE PLAN (FROM EMPLOYER OR WORKPLACE; PURCHASED DIRECTLY; THROUGH A STATE OR LOCAL GOVERNMENT PROGRAM OR COMMUNITY PROGRAM)"
   2 "MEDICAID-ADDITIONAL NAMES IN THIS STATE: [STATE-SPECIFIC MEDICAID NAME]"
   3 "MEDICARE"
   5 "MILITARY HEALTH CARE INCLUDING: THE VA, CHAMPUS, TRICARE, CHAMP-VA"
   6 "INDIAN HEALTH SERVICE"
   7 "CHIP (CHILDREN'S HEALTH INSURANCE PROGRAM)-ADD'L NAMES: [STATE-SPECIFIC CHIP NAME]"
   8 "SINGLE-SERVICE PLAN (E.G., DENTAL, VISION, PRESCRIPTIONS)"
   9 "STATE-SPONSORED HEALTH PLAN (CALLED [STATE-SPECIFIC PLAN NAME] IN THIS STATE)"
  10 "OTHER GOVERNMENT HEALTH CARE"
  11 "NOT COVERED BY ANY INSURANCE"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define NOWCOVER02
   1 "PRIVATE HEALTH INSURANCE PLAN (FROM EMPLOYER OR WORKPLACE; PURCHASED DIRECTLY; THROUGH A STATE OR LOCAL GOVERNMENT PROGRAM OR COMMUNITY PROGRAM)"
   2 "MEDICAID-ADDITIONAL NAMES IN THIS STATE: [STATE-SPECIFIC MEDICAID NAME]"
   3 "MEDICARE"
   4 "MEDI-GAP"
   5 "MILITARY HEALTH CARE INCLUDING: THE VA, CHAMPUS, TRICARE, CHAMP-VA"
   6 "INDIAN HEALTH SERVICE"
   8 "SINGLE-SERVICE PLAN (E.G., DENTAL, VISION, PRESCRIPTIONS)"
   9 "STATE-SPONSORED HEALTH PLAN (CALLED [STATE-SPECIFIC PLAN NAME] IN THIS STATE)"
  10 "OTHER GOVERNMENT HEALTH CARE";

 label define NOWCOVER03
   1 "PRIVATE HEALTH INSURANCE PLAN (FROM EMPLOYER OR WORKPLACE; PURCHASED DIRECTLY; THROUGH A STATE OR LOCAL GOVERNMENT PROGRAM OR COMMUNITY PROGRAM)"
   2 "MEDICAID-ADDITIONAL NAMES IN THIS STATE: [STATE-SPECIFIC MEDICAID NAME]"
   3 "MEDICARE"
   8 "SINGLE-SERVICE PLAN (E.G., DENTAL, VISION, PRESCRIPTIONS)";

 label define YOUGOFPC
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define WHENGOFP
   1 "IN THE LAST 12 MONTHS"
   2 "MORE THAN 12 MONTHS AGO";

 label define YOUFPSVC1
   1 "PHYSICAL EXAM"
   2 "INFORMATION OR ADVICE ON BIRTH CONTROL METHODS, INCLUDING CONDOMS"
   3 "HIV TESTING"
   4 "TESTING FOR SEXUALLY TRANSMITTED INFECTION OTHER THAN HIV"
   5 "TREATMENT FOR SEXUALLY TRANSMITTED INFECTION OTHER THAN HIV"
   6 "SOME OTHER SERVICE"
   8 "REFUSED";

 label define YOUFPSVC2
   1 "PHYSICAL EXAM"
   2 "INFORMATION OR ADVICE ON BIRTH CONTROL METHODS, INCLUDING CONDOMS"
   3 "HIV TESTING"
   4 "TESTING FOR SEXUALLY TRANSMITTED INFECTION OTHER THAN HIV"
   5 "TREATMENT FOR SEXUALLY TRANSMITTED INFECTION OTHER THAN HIV"
   6 "SOME OTHER SERVICE";

 label define YOUFPSVC3
   1 "Physical exam"
   2 "Information or advice on birth control methods, including condoms"
   3 "HIV testing"
   4 "Testing for sexually transmitted infection other than HIV"
   5 "Treatment for sexually transmitted infection other than HIV"
   6 "Some other service";

 label define YOUFPSVC4
   1 "Physical exam"
   2 "Information or advice on birth control methods, including condoms"
   3 "HIV testing"
   4 "Testing for sexually transmitted infection other than HIV"
   5 "Treatment for sexually transmitted infection other than HIV"
   6 "Some other service";

 label define YOUFPSVC5
   5 "TREATMENT FOR SEXUALLY TRANSMITTED INFECTION OTHER THAN HIV"
   6 "SOME OTHER SERVICE";

 label define DEAF
   1 "Yes"
   5 "No";

 label define BLIND
   1 "Yes"
   5 "No";

 label define DIFDECIDE
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define DIFWALK
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define DIFDRESS
   1 "Yes"
   5 "No";

 label define DIFOUT
   1 "YES"
   5 "NO"
   8 "REFUSED";

 label define EVRCANCER
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define AGECANCER
  99 "DON'T KNOW";

 label define CANCTYPE
   2 "BONE CANCER"
   6 "COLON CANCER"
   8 "HEAD AND NECK CANCER"
  10 "LEUKEMIA/BLOOD CANCER"
  12 "LUNG CANCER"
  13 "LYMPHOMA INCLUDING HODGKINS DISEASE/LYMPHOMA AND NON-HODGKINS LYMPHOMAS"
  14 "MELANOMA"
  15 "NEUROBLASTOMA"
  19 "PHARYNGEAL (THROAT) CANCER"
  20 "PROSTATE CANCER"
  24 "THYROID CANCER"
  25 "OTHER"
  26 "TESTICULAR CANCER";

 label define VISIT12MO1
   1 "A ROUTINE PHYSICAL EXAM"
   2 "A PHYSICAL EXAM FOR SPORTS OR WORK"
   3 "A DOCTOR VISIT WHEN YOU WERE SICK OR HURT"
   4 "DID NOT HAVE ANY VISITS TO A DOCTOR"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define VISIT12MO2
   1 "A ROUTINE PHYSICAL EXAM"
   2 "A PHYSICAL EXAM FOR SPORTS OR WORK"
   3 "A DOCTOR VISIT WHEN YOU WERE SICK OR HURT";

 label define VISIT12MO3
   1 "A routine physical exam"
   2 "A physical exam for sports or work"
   3 "A doctor visit when you were sick or hurt";

 label define SVC12MO1
   1 "A TESTICULAR EXAM (HAD YOUR TESTICLES EXAMINED)"
   2 "TESTING FOR SEXUALLY TRANSMITTED DISEASE"
   3 "TREATMENT FOR SEXUALLY TRANSMITTED DISEASE"
   4 "INFORMATION OR ADVICE ABOUT USING CONDOMS"
   5 "INFORMATION OR ADVICE ABOUT YOUR PARTNER USING FEMALE METHODS OF BIRTH CONTROL"
   6 "INFORMATION OR ADVICE ABOUT YOU GETTING A VASECTOMY (SURGICALLY STERILIZED)"
   7 "INFORMATION OR ADVICE ABOUT HIV OR AIDS"
   8 "INFORMATION OR ADVICE ABOUT OTHER SEXUALLY TRANSMITTED INFECTIONS, SUCH AS GONORRHEA, CHLAMYDIA, SYPHILIS, OR GENITAL HERPES"
   9 "NONE OF THE ABOVE"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define SVC12MO2
   1 "A TESTICULAR EXAM (HAD YOUR TESTICLES EXAMINED)"
   2 "TESTING FOR SEXUALLY TRANSMITTED DISEASE"
   3 "TREATMENT FOR SEXUALLY TRANSMITTED DISEASE"
   4 "INFORMATION OR ADVICE ABOUT USING CONDOMS"
   5 "INFORMATION OR ADVICE ABOUT YOUR PARTNER USING FEMALE METHODS OF BIRTH CONTROL"
   6 "INFORMATION OR ADVICE ABOUT YOU GETTING A VASECTOMY (SURGICALLY STERILIZED)"
   7 "INFORMATION OR ADVICE ABOUT HIV OR AIDS"
   8 "INFORMATION OR ADVICE ABOUT OTHER SEXUALLY TRANSMITTED INFECTIONS, SUCH AS GONORRHEA, CHLAMYDIA, SYPHILIS, OR GENITAL HERPES";

 label define SVC12MO3
   1 "A testicular exam (had your testicles examined)"
   2 "Testing for sexually transmitted disease"
   3 "Treatment for sexually transmitted disease"
   4 "Information or advice about using condoms"
   5 "Information or advice about your partner using female methods of birth control"
   6 "Information or advice about you getting a vasectomy (surgically sterilized)"
   7 "Information or advice about HIV or AIDS"
   8 "Information or advice about other sexually transmitted infections, such as gonorrhea, Chlamydia, syphilis, or genital herpes";

 label define SVC12MO4
   1 "A TESTICULAR EXAM (HAD YOUR TESTICLES EXAMINED)"
   3 "TREATMENT FOR SEXUALLY TRANSMITTED DISEASE"
   4 "INFORMATION OR ADVICE ABOUT USING CONDOMS"
   5 "INFORMATION OR ADVICE ABOUT YOUR PARTNER USING FEMALE METHODS OF BIRTH CONTROL"
   6 "INFORMATION OR ADVICE ABOUT YOU GETTING A VASECTOMY (SURGICALLY STERILIZED)"
   7 "INFORMATION OR ADVICE ABOUT HIV OR AIDS"
   8 "INFORMATION OR ADVICE ABOUT OTHER SEXUALLY TRANSMITTED INFECTIONS, SUCH AS GONORRHEA, CHLAMYDIA, SYPHILIS, OR GENITAL HERPES";

 label define SVC12MO5
   2 "TESTING FOR SEXUALLY TRANSMITTED DISEASE"
   3 "TREATMENT FOR SEXUALLY TRANSMITTED DISEASE"
   5 "INFORMATION OR ADVICE ABOUT YOUR PARTNER USING FEMALE METHODS OF BIRTH CONTROL"
   6 "INFORMATION OR ADVICE ABOUT YOU GETTING A VASECTOMY (SURGICALLY STERILIZED)"
   7 "INFORMATION OR ADVICE ABOUT HIV OR AIDS"
   8 "INFORMATION OR ADVICE ABOUT OTHER SEXUALLY TRANSMITTED INFECTIONS, SUCH AS GONORRHEA, CHLAMYDIA, SYPHILIS, OR GENITAL HERPES";

 label define SVC12MO6
   6 "INFORMATION OR ADVICE ABOUT YOU GETTING A VASECTOMY (SURGICALLY STERILIZED)"
   7 "INFORMATION OR ADVICE ABOUT HIV OR AIDS"
   8 "INFORMATION OR ADVICE ABOUT OTHER SEXUALLY TRANSMITTED INFECTIONS, SUCH AS GONORRHEA, CHLAMYDIA, SYPHILIS, OR GENITAL HERPES";

 label define SVC12MO7
   7 "INFORMATION OR ADVICE ABOUT HIV OR AIDS"
   8 "INFORMATION OR ADVICE ABOUT OTHER SEXUALLY TRANSMITTED INFECTIONS, SUCH AS GONORRHEA, CHLAMYDIA, SYPHILIS, OR GENITAL HERPES";

 label define SVC12MO8
   8 "INFORMATION OR ADVICE ABOUT OTHER SEXUALLY TRANSMITTED INFECTIONS, SUCH AS GONORRHEA, CHLAMYDIA, SYPHILIS, OR GENITAL HERPES";

 label define NUMVISIT
   1 "1 VISIT"
   2 "2 VISITS"
   3 "3 VISITS"
   4 "4 VISITS"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define PLACEVIS01
   1 "Private doctor's office or HMO"
   2 "Community health clinic, community clinic, public health clinic"
   3 "Family planning or Planned Parenthood Clinic"
   4 "Employer or company clinic"
   5 "School or school-based clinic"
   6 "Hospital outpatient clinic"
   7 "Hospital emergency room"
   8 "Hospital regular room"
   9 "Urgent care center, urgi-care, or walk-in facility"
  10 "Sexually transmitted disease (STD) clinic"
  20 "Some other place"
  98 "Refused"
  99 "Don't know";

 label define PLACEVIS02
   1 "PRIVATE DOCTOR'S OFFICE OR HMO"
   2 "COMMUNITY HEALTH CLINIC, COMMUNITY CLINIC, PUBLIC HEALTH CLINIC"
   3 "FAMILY PLANNING OR PLANNED PARENTHOOD CLINIC"
   4 "EMPLOYER OR COMPANY CLINIC"
   5 "SCHOOL OR SCHOOL-BASED CLINIC"
   6 "HOSPITAL OUTPATIENT CLINIC"
   7 "HOSPITAL EMERGENCY ROOM"
   8 "HOSPITAL REGULAR ROOM"
   9 "URGENT CARE CENTER, URGI-CARE, OR WALK-IN FACILITY"
  10 "SEXUALLY TRANSMITTED DISEASE (STD) CLINIC"
  20 "SOME OTHER PLACE";

 label define PLACEVIS03
   1 "PRIVATE DOCTOR'S OFFICE OR HMO"
   2 "COMMUNITY HEALTH CLINIC, COMMUNITY CLINIC, PUBLIC HEALTH CLINIC"
   3 "FAMILY PLANNING OR PLANNED PARENTHOOD CLINIC"
   4 "EMPLOYER OR COMPANY CLINIC"
   5 "SCHOOL OR SCHOOL-BASED CLINIC"
   6 "HOSPITAL OUTPATIENT CLINIC"
   7 "HOSPITAL EMERGENCY ROOM"
   8 "HOSPITAL REGULAR ROOM"
   9 "URGENT CARE CENTER, URGI-CARE, OR WALK-IN FACILITY"
  10 "SEXUALLY TRANSMITTED DISEASE (STD) CLINIC"
  20 "SOME OTHER PLACE";

 label define PLACEVIS04
   6 "HOSPITAL OUTPATIENT CLINIC"
   7 "HOSPITAL EMERGENCY ROOM"
   8 "HOSPITAL REGULAR ROOM"
   9 "URGENT CARE CENTER, URGI-CARE, OR WALK-IN FACILITY"
  10 "SEXUALLY TRANSMITTED DISEASE (STD) CLINIC"
  20 "SOME OTHER PLACE";

 label define PLACEVIS05
   1 "PRIVATE DOCTOR'S OFFICE OR HMO"
   8 "HOSPITAL REGULAR ROOM"
   9 "URGENT CARE CENTER, URGI-CARE, OR WALK-IN FACILITY"
  20 "SOME OTHER PLACE";

 label define PLACEVIS06
   9 "URGENT CARE CENTER, URGI-CARE, OR WALK-IN FACILITY";

 label define SVCPAY1
   1 "INSURANCE"
   2 "CO-PAYMENT"
   3 "OUT-OF-POCKET PAYMENT (NOT INCLUDING COPAY)"
   4 "MEDICAID"
   5 "NO PAYMENT REQUIRED"
   6 "SOME OTHER WAY"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define SVCPAY2
   1 "INSURANCE"
   2 "CO-PAYMENT"
   3 "OUT-OF-POCKET PAYMENT (NOT INCLUDING COPAY)"
   4 "MEDICAID"
   5 "NO PAYMENT REQUIRED"
   6 "SOME OTHER WAY";

 label define SVCPAY3
   1 "Insurance"
   2 "Co-payment"
   3 "Out-of-pocket payment (not including copay)"
   4 "Medicaid"
   5 "No payment required"
   6 "Some other way";

 label define SVCPAY4
   4 "MEDICAID"
   5 "NO PAYMENT REQUIRED"
   6 "SOME OTHER WAY";

 label define SVCPAY5
   5 "NO PAYMENT REQUIRED";

 label define TALKSA
   1 "YES"
   5 "NO"
   7 "IF VOL: PROVIDER ALREADY KNEW R'S STATUS"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define TALKEC
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define TALKDM
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define BARRIER1
   1 "I DID NOT NEED TO SEE A DOCTOR IN THE LAST YEAR"
   2 "I DID NOT KNOW WHERE TO GO FOR CARE"
   3 "I COULD NOT AFFORD TO PAY FOR A VISIT"
   4 "I WAS AFRAID TO HEAR BAD NEWS"
   5 "I HAD PRIVACY/CONFIDENTIALITY CONCERNS"
   6 "I COULD NOT TAKE TIME OFF FROM WORK"
  20 "SOMETHING ELSE-NOT SHOWN SEPARATELY"
  98 "REFUSED";

 label define BARRIER2
   1 "I DID NOT NEED TO SEE A DOCTOR IN THE LAST YEAR"
   2 "I DID NOT KNOW WHERE TO GO FOR CARE"
   3 "I COULD NOT AFFORD TO PAY FOR A VISIT"
   4 "I WAS AFRAID TO HEAR BAD NEWS"
   5 "I HAD PRIVACY/CONFIDENTIALITY CONCERNS"
   6 "I COULD NOT TAKE TIME OFF FROM WORK"
  20 "SOMETHING ELSE-NOT SHOWN SEPARATELY";

 label define BARRIER3
   1 "I did not need to see a doctor in the last year"
   2 "I did not know where to go for care"
   3 "I could not afford to pay for a visit"
   4 "I was afraid to hear bad news"
   5 "I had privacy/confidentiality concerns"
   6 "I could not take time off from work"
  20 "Something else (please specify)";

 label define BARRIER4
   4 "I WAS AFRAID TO HEAR BAD NEWS"
   5 "I HAD PRIVACY/CONFIDENTIALITY CONCERNS"
   6 "I COULD NOT TAKE TIME OFF FROM WORK"
  20 "SOMETHING ELSE (PLEASE SPECIFY)";

 label define BARRIER5
   6 "I COULD NOT TAKE TIME OFF FROM WORK";

 label define INFHELP
   1 "Yes"
   5 "No"
   8 "Refused";

 label define INFSVCS1
   1 "ADVICE"
   2 "INFERTILITY TESTING"
   3 "DRUGS TO IMPROVE OVULATION"
   4 "SURGERY TO CORRECT BLOCKED TUBES"
   6 "TREATMENT FOR VARICOCELE"
   7 "OTHER TYPES OF MEDICAL HELP";

 label define INFSVCS2
   1 "ADVICE"
   2 "INFERTILITY TESTING"
   3 "DRUGS TO IMPROVE OVULATION"
   4 "SURGERY TO CORRECT BLOCKED TUBES"
   5 "ARTIFICIAL INSEMINATION"
   6 "TREATMENT FOR VARICOCELE"
   7 "OTHER TYPES OF MEDICAL HELP";

 label define INFSVCS3
   1 "Advice"
   2 "Infertility testing"
   3 "Drugs to improve ovulation"
   4 "Surgery to correct blocked tubes"
   5 "Artificial insemination"
   6 "Treatment for varicocele"
   7 "Other types of medical help";

 label define INFSVCS4
   3 "DRUGS TO IMPROVE OVULATION"
   4 "SURGERY TO CORRECT BLOCKED TUBES"
   5 "ARTIFICIAL INSEMINATION"
   6 "TREATMENT FOR VARICOCELE"
   7 "OTHER TYPES OF MEDICAL HELP";

 label define INFSVCS5
   4 "SURGERY TO CORRECT BLOCKED TUBES"
   5 "ARTIFICIAL INSEMINATION"
   6 "TREATMENT FOR VARICOCELE"
   7 "OTHER TYPES OF MEDICAL HELP";

 label define INFSVCS6
   7 "OTHER TYPES OF MEDICAL HELP";

 label define INFTEST
   1 "YOU"
   2 "HER"
   3 "BOTH OF YOU";

 label define WHOINSEM
   1 "YOU ONLY"
   2 "SOME OTHER DONOR ONLY"
   9 "DON'T KNOW";

 label define INFHLPNW
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define LASTVIS_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define LASTVIS_Y
9998 "Refused"
9999 "Don't know";

 label define CMINFVIS
9998 "Refused"
9999 "Don't know";

 label define INFRTHIS1
   1 "SPERM OR SEMEN PROBLEMS"
   2 "VARICOCELE"
   3 "OTHER"
   4 "NONE OF THE ABOVE";

 label define INFRTHIS2
   1 "SPERM OR SEMEN PROBLEMS"
   2 "VARICOCELE"
   3 "OTHER";

 label define DONBLOOD
   1 "Yes"
   5 "No"
   8 "Refused";

 label define HIVTEST
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define NOHIVTST
   1 "YOU HAVE NEVER BEEN OFFERED AN HIV TEST"
   2 "YOU ARE WORRIED ABOUT WHAT OTHER PEOPLE WOULD THINK IF YOU GOT TESTED FOR HIV"
   3 "IT'S UNLIKELY YOU VE BEEN EXPOSED TO HIV"
   4 "YOU WERE AFRAID TO FIND OUT IF YOU WERE HIV POSITIVE (THAT YOU HAD HIV)"
   5 "YOU DON'T LIKE NEEDLES"
  20 "SOME OTHER REASON"
  21 "R REPORTED SPOUSE OR PARTNER TESTED NEGATIVE"
  22 "NEVER HAD SEXUAL INTERCOURSE"
  23 "NO HEALTH INSURANCE OR COVERAGE, OR R COULDN'T AFFORD AN HIV TEST"
  97 "NOT ASCERTAINED"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define WHENHIV_M
  13 "Winter"
  14 "Spring"
  15 "Summer"
  16 "Fall"
  98 "Refused"
  99 "Don't know";

 label define WHENHIV_Y
9998 "Refused"
9999 "Don't know";

 label define CMHIVTST
9998 "Refused"
9999 "Don't know";

 label define HIVTSTYR
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define HIVRESULT
   1 "Yes"
   5 "No";

 label define WHYNOGET
   1 "YOU THOUGHT THE TESTING SITE WOULD CONTACT YOU"
   2 "YOU WERE AFRAID TO FIND OUT IF YOU WERE HIV POSITIVE (THAT YOU HAD HIV)"
   3 "YOU DIDN'T WANT TO KNOW YOUR HIV TEST RESULTS"
   4 "YOU DIDN'T KNOW WHERE OR HOW TO GET YOUR TEST RESULT"
  20 "SOME OTHER REASON";

 label define PLCHIV
   1 "PRIVATE DOCTOR'S OFFICE"
   2 "HMO FACILITY"
   3 "COMMUNITY HEALTH CLINIC, COMMUNITY CLINIC, PUBLIC HEALTH CLINIC"
   4 "FAMILY PLANNING OR PLANNED PARENTHOOD CLINIC"
   5 "EMPLOYER OR COMPANY CLINIC"
   6 "SCHOOL OR SCHOOL-BASED CLINIC (INCLUDING COLLEGE OR UNIVERSITY)"
   7 "HOSPITAL OUTPATIENT CLINIC"
   8 "HOSPITAL EMERGENCY ROOM"
   9 "HOSPITAL REGULAR ROOM"
  10 "URGENT CARE CENTER, URGI-CARE, OR WALK-IN FACILITY"
  11 "YOUR WORKSITE"
  12 "YOUR HOME"
  13 "MILITARY INDUCTION OR MILITARY SERVICE SITE"
  14 "SEXUALLY TRANSMITTED DISEASE (STD) CLINIC"
  15 "LABORATORY OR BLOOD BANK"
  20 "SOME OTHER PLACE NOT SHOWN SEPARATELY"
  21 "PRISON OR JAIL"
  22 "MOBILE TESTING OR COMMUNITY TESTING SITE"
  23 "DRUG, ALCOHOL OR REHABILITATION TREATMENT CENTER"
  99 "DON'T KNOW";

 label define HIVTST
   1 "PART OF A MEDICAL CHECKUP OR SURGICAL PROCEDURE (A DOCTOR OR MEDICAL PROVIDER ASKED FOR THE TEST)"
   2 "REQUIRED FOR HEALTH OR LIFE INSURANCE COVERAGE"
   3 "REQUIRED FOR MARRIAGE LICENSE OR TO GET MARRIED"
   4 "REQUIRED FOR MILITARY SERVICE OR JOB"
   5 "YOU WANTED TO FIND OUT IF INFECTED OR NOT (YOU WERE THE ONE WHO ASKED FOR THE TEST)"
   6 "SOMEONE ELSE SUGGESTED YOU SHOULD BE TESTED (FOLLOWED BY WHOSUGG QUESTION)"
   8 "YOU MIGHT HAVE BEEN EXPOSED THROUGH SEX OR DRUG USE"
   9 "YOU MIGHT HAVE BEEN EXPOSED IN SOME OTHER WAY"
  20 "SOME OTHER REASON - NOT SHOWN SEPARATELY"
  21 "REQUIRED FOR IMMIGRATION OR TRAVEL"
  22 "REQUIRED FOR INCARCERATION"
  23 "REQUIRED FOR SCHOOL"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define WHOSUGG
   1 "DOCTOR OR OTHER MEDICAL CARE PROVIDER"
   2 "SEXUAL PARTNER"
   3 "SOMEONE ELSE";

 label define TALKDOCT
   1 "Yes"
   5 "No"
   8 "Refused"
   9 "Don't know";

 label define AIDSTALK01
   1 "HOW HIV/AIDS IS TRANSMITTED"
   2 "OTHER SEXUALLY TRANSMITTED DISEASES LIKE GONORRHEA, HERPES, OR HEPATITIS C"
   3 "THE CORRECT USE OF CONDOMS"
   4 "NEEDLE CLEANING/USING CLEAN NEEDLES"
   5 "DANGERS OF NEEDLE SHARING"
   6 "ABSTINENCE FROM SEX (NOT HAVING SEX)"
   7 "REDUCING YOUR NUMBER OF SEXUAL PARTNERS"
   8 "CONDOM USE TO PREVENT HIV OR STD TRANSMISSION"
   9 "'SAFE SEX' PRACTICES (ABSTINENCE, CONDOM USE, ETC)"
  10 "GETTING TESTED AND KNOWING YOUR HIV STATUS"
  20 "SOME OTHER TOPIC - NOT SHOWN SEPARATELY"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define AIDSTALK02
   1 "HOW HIV/AIDS IS TRANSMITTED"
   2 "OTHER SEXUALLY TRANSMITTED DISEASES LIKE GONORRHEA, HERPES, OR HEPATITIS C"
   3 "THE CORRECT USE OF CONDOMS"
   4 "NEEDLE CLEANING/USING CLEAN NEEDLES"
   5 "DANGERS OF NEEDLE SHARING"
   6 "ABSTINENCE FROM SEX (NOT HAVING SEX)"
   7 "REDUCING YOUR NUMBER OF SEXUAL PARTNERS"
   8 "CONDOM USE TO PREVENT HIV OR STD TRANSMISSION"
   9 "'SAFE SEX' PRACTICES (ABSTINENCE, CONDOM USE, ETC)"
  10 "GETTING TESTED AND KNOWING YOUR HIV STATUS"
  20 "SOME OTHER TOPIC - NOT SHOWN SEPARATELY";

 label define AIDSTALK03
   1 "How HIV/AIDS is transmitted"
   2 "Other sexually transmitted diseases like gonorrhea, herpes, or Hepatitis C"
   3 "The correct use of condoms"
   4 "Needle cleaning/using clean needles"
   5 "Dangers of needle sharing"
   6 "Abstinence from sex (not having sex)"
   7 "Reducing your number of sexual partners"
   8 "Condom use to prevent HIV or STD transmission"
   9 "'Safe sex' practices (abstinence, condom use, etc)"
  10 "Getting tested and knowing your HIV status"
  20 "Some other topic - not shown separately";

 label define AIDSTALK04
   1 "How HIV/AIDS is transmitted"
   2 "Other sexually transmitted diseases like gonorrhea, herpes, or Hepatitis C"
   3 "The correct use of condoms"
   4 "Needle cleaning/using clean needles"
   5 "Dangers of needle sharing"
   6 "Abstinence from sex (not having sex)"
   7 "Reducing your number of sexual partners"
   8 "Condom use to prevent HIV or STD transmission"
   9 "'Safe sex' practices (abstinence, condom use, etc)"
  10 "Getting tested and knowing your HIV status"
  20 "Some other topic - not shown separately";

 label define AIDSTALK05
   1 "HOW HIV/AIDS IS TRANSMITTED"
   2 "OTHER SEXUALLY TRANSMITTED DISEASES LIKE GONORRHEA, HERPES, OR HEPATITIS C"
   3 "THE CORRECT USE OF CONDOMS"
   4 "NEEDLE CLEANING/USING CLEAN NEEDLES"
   5 "DANGERS OF NEEDLE SHARING"
   6 "ABSTINENCE FROM SEX (NOT HAVING SEX)"
   7 "REDUCING YOUR NUMBER OF SEXUAL PARTNERS"
   8 "CONDOM USE TO PREVENT HIV OR STD TRANSMISSION"
   9 "'SAFE SEX' PRACTICES (ABSTINENCE, CONDOM USE, ETC)"
  10 "GETTING TESTED AND KNOWING YOUR HIV STATUS";

 label define AIDSTALK06
   1 "How HIV/AIDS is transmitted"
   2 "Other sexually transmitted diseases like gonorrhea, herpes, or Hepatitis C"
   3 "The correct use of condoms"
   4 "Needle cleaning/using clean needles"
   5 "Dangers of needle sharing"
   6 "Abstinence from sex (not having sex)"
   7 "Reducing your number of sexual partners"
   8 "Condom use to prevent HIV or STD transmission"
   9 "'Safe sex' practices (abstinence, condom use, etc)"
  10 "Getting tested and knowing your HIV status";

 label define AIDSTALK07
   1 "How HIV/AIDS is transmitted"
   2 "Other sexually transmitted diseases like gonorrhea, herpes, or Hepatitis C"
   3 "The correct use of condoms"
   4 "Needle cleaning/using clean needles"
   5 "Dangers of needle sharing"
   6 "Abstinence from sex (not having sex)"
   7 "Reducing your number of sexual partners"
   8 "Condom use to prevent HIV or STD transmission"
   9 "'Safe sex' practices (abstinence, condom use, etc)"
  10 "Getting tested and knowing your HIV status";

 label define AIDSTALK08
   1 "HOW HIV/AIDS IS TRANSMITTED"
   2 "OTHER SEXUALLY TRANSMITTED DISEASES LIKE GONORRHEA, HERPES, OR HEPATITIS C"
   4 "NEEDLE CLEANING/USING CLEAN NEEDLES"
   5 "DANGERS OF NEEDLE SHARING"
   6 "ABSTINENCE FROM SEX (NOT HAVING SEX)"
   7 "REDUCING YOUR NUMBER OF SEXUAL PARTNERS"
   8 "CONDOM USE TO PREVENT HIV OR STD TRANSMISSION"
   9 "'SAFE SEX' PRACTICES (ABSTINENCE, CONDOM USE, ETC)"
  10 "GETTING TESTED AND KNOWING YOUR HIV STATUS";

 label define AIDSTALK09
   1 "HOW HIV/AIDS IS TRANSMITTED"
   2 "OTHER SEXUALLY TRANSMITTED DISEASES LIKE GONORRHEA, HERPES, OR HEPATITIS C"
   5 "DANGERS OF NEEDLE SHARING"
   6 "ABSTINENCE FROM SEX (NOT HAVING SEX)"
   7 "REDUCING YOUR NUMBER OF SEXUAL PARTNERS"
   8 "CONDOM USE TO PREVENT HIV OR STD TRANSMISSION"
   9 "'SAFE SEX' PRACTICES (ABSTINENCE, CONDOM USE, ETC)"
  10 "GETTING TESTED AND KNOWING YOUR HIV STATUS"
  20 "SOME OTHER TOPIC - NOT SHOWN SEPARATELY";

 label define AIDSTALK10
   1 "HOW HIV/AIDS IS TRANSMITTED"
   2 "OTHER SEXUALLY TRANSMITTED DISEASES LIKE GONORRHEA, HERPES, OR HEPATITIS C"
   6 "ABSTINENCE FROM SEX (NOT HAVING SEX)"
   7 "REDUCING YOUR NUMBER OF SEXUAL PARTNERS"
   8 "CONDOM USE TO PREVENT HIV OR STD TRANSMISSION"
   9 "'SAFE SEX' PRACTICES (ABSTINENCE, CONDOM USE, ETC)"
  10 "GETTING TESTED AND KNOWING YOUR HIV STATUS";

 label define RETROVIR
   1 "DEFINITELY TRUE"
   2 "PROBABLY TRUE"
   3 "PROBABLY FALSE"
   4 "DEFINITELY FALSE"
   5 "DON'T KNOW IF TRUE OR FALSE"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define SAMEADD
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define CNTRY10
   1 "Yes"
   5 "No";

 label define BRNOUT
   1 "Yes"
   5 "No"
   9 "Don't know";

 label define YRSTRUS
9998 "Refused"
9999 "Don't know";

 label define RELRAISD
   1 "NONE"
   2 "CATHOLIC"
   3 "BAPTIST/SOUTHERN BAPTIST"
   4 "METHODIST, LUTHERAN, PRESBYTERIAN, EPISCOPAL"
   5 "FUNDAMENTALIST PROTESTANT"
   6 "OTHER PROTESTANT DENOMINATION"
   7 "PROTESTANT - NO SPECIFIC DENOMINATION"
   8 "OTHER RELIGION"
   9 "REFUSED"
  10 "DON'T KNOW";

 label define ATTND14
   1 "MORE THAN ONCE A WEEK"
   2 "ONCE A WEEK"
   3 "2-3 TIMES A MONTH"
   4 "ONCE A MONTH (ABOUT 12 TIMES A YEAR)"
   5 "3-11 TIMES A YEAR"
   6 "ONCE OR TWICE A YEAR"
   7 "NEVER"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define RELCURR
   1 "None"
   2 "Catholic"
   3 "Baptist/Southern Baptist"
   4 "Methodist, Lutheran, Presbyterian, Episcopal"
   5 "Fundamentalist Protestant"
   6 "Other Protestant denomination"
   7 "Protestant - No specific denomination"
   8 "Other religion"
   9 "Refused"
  10 "Don't know";

 label define RELTRAD
   1 "EVANGELICAL PROT"
   2 "MAINLINE PROT"
   3 "BLACK PROT"
   4 "CATHOLIC"
   5 "OTHER RELIGION"
   6 "NO RELIGIOUS AFFIILATION"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define FUNDAM1
   1 "A BORN AGAIN CHRISTIAN"
   2 "A CHARISMATIC"
   3 "AN EVANGELICAL"
   4 "A FUNDAMENTALIST"
   5 "NONE OF THE ABOVE"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define FUNDAM2
   1 "A BORN AGAIN CHRISTIAN"
   2 "A CHARISMATIC"
   3 "AN EVANGELICAL"
   4 "A FUNDAMENTALIST";

 label define FUNDAM3
   2 "A CHARISMATIC"
   3 "AN EVANGELICAL"
   4 "A FUNDAMENTALIST";

 label define FUNDAM4
   3 "AN EVANGELICAL"
   4 "A FUNDAMENTALIST";

 label define RELDLIFE
   1 "VERY IMPORTANT"
   2 "SOMEWHAT IMPORTANT"
   3 "NOT IMPORTANT"
   8 "REFUSED";

 label define ATTNDNOW
   1 "MORE THAN ONCE A WEEK"
   2 "ONCE A WEEK"
   3 "2-3 TIMES A MONTH"
   4 "ONCE A MONTH (ABOUT 12 TIMES A YEAR)"
   5 "3-11 TIMES A YEAR"
   6 "ONCE OR TWICE A YEAR"
   7 "NEVER"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define MILSVC
   1 "Yes"
   5 "No";

 label define STARTMIL
   1 "1990 OR EARLIER"
   2 "1991-1995"
   3 "1996-2000"
   4 "2001-2005"
   5 "2006 OR LATER"
   9 "DON'T KNOW";

 label define ENDMIL
   1 "1995 OR EARLIER"
   2 "1996-2000"
   3 "2001-2005"
   4 "2006-2010"
   5 "2011 OR LATER AND STILL ACTIVE"
   9 "DON'T KNOW";

 label define WRK12MOS
   0 "NO MONTHS"
   1 "1 MONTH"
   2 "2 MONTHS"
   3 "3 MONTHS"
   4 "4 MONTHS"
   5 "5 MONTHS"
   6 "6 MONTHS"
   7 "7 MONTHS"
   8 "8 MONTHS"
   9 "9 MONTHS"
  10 "10 MONTHS"
  11 "11 MONTHS"
  12 "12 MONTHS"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define FPT12MOS
   1 "FULL-TIME"
   2 "PART-TIME"
   3 "SOME OF EACH";

 label define DOLASTWK1
   1 "WORKING"
   2 "WORKING - PATERNITY LEAVE OR TEMP LEAVE"
   3 "NOT WORKING, LOOKING FOR WORK"
   4 "KEEPING HOUSE OR TAKING CARE OF FAMILY"
   5 "IN SCHOOL"
   6 "OTHER"
   9 "DON'T KNOW";

 label define DOLASTWK2
   1 "WORKING"
   2 "WORKING - PATERNITY LEAVE OR TEMP LEAVE"
   3 "NOT WORKING, LOOKING FOR WORK"
   4 "KEEPING HOUSE OR TAKING CARE OF FAMILY"
   5 "IN SCHOOL"
   6 "OTHER";

 label define DOLASTWK3
   1 "Working"
   2 "Working - Paternity leave or temp leave"
   3 "Not working, looking for work"
   4 "Keeping house or taking care of family"
   5 "In school"
   6 "Other";

 label define DOLASTWK4
   1 "Working"
   2 "Working - Paternity leave or temp leave"
   3 "Not working, looking for work"
   4 "Keeping house or taking care of family"
   5 "In school"
   6 "Other";

 label define DOLASTWK5
   3 "NOT WORKING, LOOKING FOR WORK"
   4 "KEEPING HOUSE OR TAKING CARE OF FAMILY"
   5 "IN SCHOOL"
   6 "OTHER";

 label define DOLASTWK6
   6 "OTHER";

 label define RWRKST
   1 "Yes"
   5 "No";

 label define WORKP12
   1 "Yes"
   5 "No";

 label define RPAYJOB
   1 "Yes"
   5 "No";

 label define RNUMJOB
   1 "1 JOB"
   2 "2 JOBS"
   3 "3 JOBS"
   4 "4 JOBS"
   5 "5 JOBS"
   6 "6 JOBS"
   9 "DON'T KNOW";

 label define RFTPTX
   1 "FULL-TIME"
   2 "PART-TIME"
   3 "SOME OF EACH"
   9 "DON'T KNOW";

 label define REARNTY
   1 "Yes"
   5 "No";

 label define SPLSTWK1
   1 "WORKING"
   2 "WORKING - MATERNITY LEAVE OR TEMP LEAVE"
   3 "NOT WORKING, LOOKING FOR WORK"
   4 "KEEPING HOUSE OR TAKING CARE OF FAMILY"
   5 "OTHER"
   9 "DON'T KNOW";

 label define SPLSTWK2
   1 "WORKING"
   2 "WORKING - MATERNITY LEAVE OR TEMP LEAVE"
   3 "NOT WORKING, LOOKING FOR WORK"
   4 "KEEPING HOUSE OR TAKING CARE OF FAMILY"
   5 "OTHER";

 label define SPLSTWK3
   1 "Working"
   2 "Working - Maternity leave or temp leave"
   3 "Not working, looking for work"
   4 "Keeping house or taking care of family"
   5 "Other";

 label define SPLSTWK4
   1 "Working"
   2 "Working - Maternity leave or temp leave"
   3 "Not working, looking for work"
   4 "Keeping house or taking care of family"
   5 "Other";

 label define SPLSTWK5
   4 "KEEPING HOUSE OR TAKING CARE OF FAMILY"
   5 "OTHER";

 label define SPWRKST
   1 "Yes"
   5 "No";

 label define SPPAYJOB
   1 "Yes"
   5 "No"
   8 "Refused";

 label define SPNUMJOB
   1 "1 JOB"
   2 "2 JOBS"
   3 "3 JOBS"
   4 "4 JOBS"
   5 "5 JOBS"
   9 "DON'T KNOW";

 label define SPFTPTX
   1 "Full-time"
   2 "Part-time"
   3 "Some of each"
   9 "Don't know";

 label define SPEARNTY
   1 "YES"
   2 "NO";

 label define STAYTOG
   1 "STRONGLY AGREE"
   2 "AGREE"
   3 "DISAGREE"
   4 "STRONGLY DISAGREE"
   5 "IF R INSISTS: NEITHER AGREE NOR DISAGREE"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define SAMESEX
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define SXOK18
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define SXOK16
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define CHUNLESS
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define CHSUPPOR
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define GAYADOPT
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define OKCOHAB
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define REACTSLF
   1 "VERY UPSET"
   2 "A LITTLE UPSET"
   3 "A LITTLE PLEASED"
   4 "VERY PLEASED"
   5 "IF R INSISTS: HE WOULDN T CARE"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define CHBOTHER
   1 "A GREAT DEAL"
   2 "SOME"
   3 "A LITTLE"
   4 "NOT AT ALL"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define MARRFAIL
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define CHCOHAB
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define PRVNTDIV
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define SEXNEEDS
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define WHENSICK
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define SHOWPAIN
   1 "Strongly agree"
   2 "Agree"
   3 "Disagree"
   4 "Strongly disagree"
   5 "If R insists: Neither agree nor disagree"
   8 "Refused"
   9 "Don't know";

 label define PMARCOHB
   1 "Yes"
   5 "No";

 label define COHCHANCE
   1 "DEFINITELY YES"
   2 "PROBABLY YES"
   3 "PROBABLY NO"
   4 "DEFINITELY NO"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define MARRCHANCE
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define PMARCOH
   1 "Definitely yes"
   2 "Probably yes"
   3 "Probably no"
   4 "Definitely no"
   8 "Refused"
   9 "Don't know";

 label define LESSPLSR
   1 "NO CHANCE"
   2 "A LITTLE CHANCE"
   3 "50-50 CHANCE"
   4 "A PRETTY GOOD CHANCE"
   5 "AN ALMOST CERTAIN CHANCE"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define EMBARRAS
   1 "No chance"
   2 "A little chance"
   3 "50-50 chance"
   4 "A pretty good chance"
   5 "An almost certain chance"
   8 "Refused"
   9 "Don't know";

 label define ACASILANG
   1 "ENGLISH"
   2 "SPANISH"
   7 "NOT ASCERTAINED";

 label define GENHEALT
   1 "EXCELLENT"
   2 "VERY GOOD"
   3 "GOOD"
   4 "FAIR"
   5 "POOR"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define INCHES
  65 "65 INCHES OR LESS"
  66 "66 INCHES"
  67 "67 INCHES"
  68 "68 INCHES"
  69 "69 INCHES"
  70 "70 INCHES"
  71 "71 INCHES"
  72 "72 INCHES"
  73 "73 INCHES"
  74 "74 INCHES"
  75 "75 INCHES"
  76 "76 INCHES OR MORE"
  96 "COULD NOT BE DEFINED";

 label define RWEIGHT
 130 "130 POUNDS OR LESS"
 280 "280 POUNDS OR MORE"
 997 "NOT ASCERTAINED"
 998 "REFUSED"
 999 "DON'T KNOW";

 label define BMI
  95 "COULD NOT BE DEFINED";

 label define SHELTER
   1 "YES"
   5 "NO"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define JAILED
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define JAILED2
   1 "YES"
   5 "NO"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define FRQJAIL
   1 "ONLY ONE TIME"
   2 "OR MORE THAN ONE TIME"
   7 "NOT ASCERTAINED"
   8 "REFUSED";

 label define FRQJAIL2
   1 "ONE MONTH OR LESS"
   2 "MORE THAN ONE MONTH BUT LESS THAN ONE YEAR"
   3 "ONE YEAR"
   4 "MORE THAN ONE YEAR"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define EVSUSPEN
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define GRADSUSP
  97 "NOT ASCERTAINED"
  99 "DON'T KNOW";

 label define DRINK12
   1 "NEVER"
   2 "ONCE OR TWICE DURING THE YEAR"
   3 "SEVERAL TIMES DURING THE YEAR"
   4 "ABOUT ONCE A MONTH"
   5 "ABOUT ONCE A WEEK"
   6 "ABOUT ONCE A DAY"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define UNIT30D
   1 "DAYS PER WEEK"
   5 "DAYS PER MONTH"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define DRINK30D
   0 "0 DAYS"
   1 "1 DAY"
   2 "2 DAYS"
  97 "NOT ASCERTAINED"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define DRINKDAY
   1 "1 DRINK"
   2 "2 DRINKS"
   3 "3 DRINKS"
   4 "4 DRINKS"
   5 "5 DRINKS"
  97 "NOT ASCERTAINED"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define BINGE30
   0 "NONE"
   1 "1 TIME"
   2 "2 TIMES"
   3 "3 TIMES"
   4 "4 TIMES"
  97 "NOT ASCERTAINED"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define DRNKMOST
   1 "1 DRINK"
   2 "2 DRINKS"
   3 "3 DRINKS"
   4 "4 DRINKS"
   5 "5 DRINKS"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define BINGE12
   1 "NEVER"
   2 "ONCE OR TWICE DURING THE YEAR"
   3 "SEVERAL TIMES DURING THE YEAR"
   4 "ABOUT ONCE A MONTH"
   5 "ABOUT ONCE A WEEK"
   6 "ABOUT ONCE A DAY"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define POT12
   1 "NEVER"
   2 "ONCE OR TWICE DURING THE YEAR"
   3 "SEVERAL TIMES DURING THE YEAR"
   4 "ABOUT ONCE A MONTH"
   5 "ABOUT ONCE A WEEK"
   6 "ABOUT ONCE A DAY OR MORE"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define COC12
   1 "NEVER"
   2 "ONCE OR TWICE DURING THE YEAR"
   3 "SEVERAL TIMES DURING THE YEAR"
   4 "ABOUT ONCE A MONTH OR MORE"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define CRACK12
   1 "Never"
   2 "Once or twice during the year"
   3 "Several times during the year"
   4 "About once a month or more"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CRYSTMTH12
   1 "Never"
   2 "Once or twice during the year"
   3 "Several times during the year"
   4 "About once a month or more"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define INJECT12
   1 "Never"
   2 "Once or twice during the year"
   3 "Several times during the year"
   4 "About once a month or more"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define MADEPREG
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PREGTOT2
   1 "1 TIME"
   2 "2 TIMES"
   3 "3 TIMES"
  97 "NOT ASCERTAINED"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define PREGACASI
   0 "NEVER"
   1 "1 TIME"
   2 "2 TIMES"
   3 "3 TIMES"
  97 "NOT ASCERTAINED"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define NUMABORT
   0 "NONE"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
  97 "NOT ASCERTAINED"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define NUMLIVEB
   0 "NONE"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define TOLDPREG
   1 "YES"
   5 "NO"
   7 "NOT ASCERTAINED"
   9 "DON'T KNOW";

 label define WHATHAPP
   1 "DID IT TURN OUT THAT SHE WAS PREGNANT AND YOU WERE THE FATHER,"
   2 "OR WAS SHE PREGNANT BUT YOU WERE NOT THE FATHER,"
   3 "OR DID IT TURN OUT THAT SHE WAS NOT PREGNANT?"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define FEMTOUCH
   1 "YES"
   5 "NO"
   7 "NOT ASCERTAINED"
   8 "REFUSED";

 label define VAGSEX
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define AGEVAGR
  97 "NOT ASCERTAINED"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define CONDVAG
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define WHYCONDL
   1 "TO PREVENT PREGNANCY"
   2 "TO PREVENT DISEASES LIKE SYPHILIS, GONORRHEA OR AIDS"
   3 "FOR BOTH REASONS"
   4 "FOR SOME OTHER REASON"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define GETORALF
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CONDFELL
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define GIVORALF
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define ANYORAL
   1 "YES"
   5 "NO"
   7 "NOT ASCERTAINED";

 label define TIMING
   1 "BEFORE FIRST VAGINAL INTERCOURSE"
   3 "AFTER FIRST VAGINAL INTERCOURSE"
   5 "SAME OCCASION"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define ANALSEX
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CONDANAL
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused";

 label define OPPSEXANY
   1 "YES"
   5 "NO"
   7 "NOT ASCERTAINED";

 label define OPPSEXGEN
   1 "YES"
   5 "NO"
   7 "Not ascertained";

 label define CONDSEXL
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused";

 label define WANTSEX1
   1 "I REALLY DIDN'T WANT IT TO HAPPEN AT THE TIME"
   2 "I HAD MIXED FEELINGS -- PART OF ME WANTED IT TO HAPPEN AT THE TIME AND PART OF ME DIDN'T"
   3 "I REALLY WANTED IT TO HAPPEN AT THE TIME"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define HOWOLD
  97 "Not ascertained"
  98 "Refused"
  99 "Don't know";

 label define EVRFORCD
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define AGEFORC1
  97 "NOT ASCERTAINED"
  98 "REFUSED";

 label define GIVNDRG2
   1 "Yes"
   5 "No"
   7 "Not ascertained";

 label define SHEBIGOL
   1 "Yes"
   5 "No"
   7 "Not ascertained";

 label define ENDRELA2
   1 "Yes"
   5 "No"
   7 "Not ascertained";

 label define WRDPRES2
   1 "Yes"
   5 "No"
   7 "Not ascertained";

 label define THRTPHY2
   1 "Yes"
   5 "No"
   7 "Not ascertained";

 label define PHYSHRT2
   1 "Yes"
   5 "No"
   7 "Not ascertained";

 label define HELDDWN2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PARTSLIF_1
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 PARTNERS"
   7 "7 PARTNERS"
   8 "8 PARTNERS"
   9 "9 PARTNERS"
  10 "10 PARTNERS"
  50 "50 OR MORE PARTNERS"
 997 "NOT ASCERTAINED"
 998 "REFUSED"
 999 "DON'T KNOW";

 label define PARTSLFV
   1 "Yes"
   5 "No"
   7 "Not ascertained";

 label define PARTSLIF_2
  50 "50 OR MORE PARTNERS"
 997 "NOT ASCERTAINED";

 label define OPPLIFENUM
   0 "NONE"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 PARTNERS"
   7 "7 PARTNERS"
   8 "8 PARTNERS"
   9 "9 PARTNERS"
  10 "10 PARTNERS"
  50 "50 OR MORE PARTNERS"
 997 "NOT ASCERTAINED"
 998 "REFUSED"
 999 "DON'T KNOW";

 label define PARTS12_1
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 PARTNERS"
   7 "7 PARTNERS"
   8 "8 PARTNERS"
   9 "9 PARTNERS"
  10 "10 PARTNERS"
  20 "20 OR MORE PARTNERS"
 997 "NOT ASCERTAINED"
 998 "REFUSED"
 999 "DON'T KNOW";

 label define PARTS12V
   1 "Yes"
   5 "No"
   7 "Not ascertained";

 label define PARTS12_2
   3 "3 PARTNERS"
 997 "NOT ASCERTAINED"
 998 "REFUSED";

 label define OPPYEARNUM
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 PARTNERS"
   7 "7 PARTNERS"
   8 "8 PARTNERS"
   9 "9 PARTNERS"
  10 "10 PARTNERS"
  20 "20 OR MORE PARTNERS"
 997 "Not ascertained"
 998 "Refused"
 999 "Don't know";

 label define NEWYEAR
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
 997 "NOT ASCERTAINED"
 999 "DON'T KNOW";

 label define NEWLIFE
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 PARTNERS"
   7 "7 PARTNERS"
  10 "10 PARTNERS"
 997 "NOT ASCERTAINED"
 998 "REFUSED"
 999 "DON'T KNOW";

 label define VAGNUM12
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
 997 "NOT ASCERTAINED"
 998 "REFUSED"
 999 "DON'T KNOW";

 label define ORALNUM12
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
 997 "Not ascertained"
 998 "Refused"
 999 "Don't know";

 label define ANALNUM12
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
 997 "Not ascertained"
 998 "Refused"
 999 "Don't know";

 label define CURRPAGE
  97 "NOT ASCERTAINED"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define RELAGE
   3 "SAME AGE"
   7 "NOT ASCERTAINED";

 label define HOWMUCH
   7 "NOT ASCERTAINED";

 label define CURRPAGE2
  97 "NOT ASCERTAINED";

 label define RELAGE2
   7 "Not ascertained";

 label define HOWMUCH2
   7 "Not ascertained";

 label define CURRPAGE3
  97 "NOT ASCERTAINED";

 label define RELAGE3
   7 "Not ascertained";

 label define HOWMUCH3
   7 "Not ascertained";

 label define NONMONOG
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define NNONMONOG1
   1 "1 PARTNER"
   2 "2 OR MORE PARTNERS"
   7 "NOT ASCERTAINED";

 label define NNONMONOG2
   1 "1 OTHER PARTNER BESIDES YOU"
   2 "2 OTHER PARTNERS BESIDES YOU"
   3 "3 OR MORE OTHER PARTNERS BESIDES YOU"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define NNONMONOG3
   1 "1 other partner besides you"
   2 "2 other partners besides you"
   3 "3 or more other partners besides you"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FEMSHT12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define JOHNFREQ
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   9 "Don't know";

 label define PROSTFRQ
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define HIVFEM12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   9 "Don't know";

 label define GIVORALM
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define GETORALM
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define ORALCONDM
   1 "Yes"
   5 "No"
   7 "Not ascertained";

 label define ANALSEX2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define ANALCONDM1
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   9 "Don't know";

 label define ANALSEX3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define ANALCONDM2
   1 "Yes"
   5 "No"
   7 "Not ascertained";

 label define SAMESEXANY
   1 "YES"
   5 "NO"
   7 "Not ascertained";

 label define MALPRTAGE
   1 "OLDER"
   2 "YOUNGER"
   3 "SAME AGE"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define MALPRTHRACE
   1 "Hispanic"
   2 "Non-Hispanic White, Single Race"
   3 "Non-Hispanic Black, Single Race"
   4 "Non-Hispanic Other or Multiple Race"
   5 "NA/DK/RF";

 label define EVRFORC2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define AGEFORC2
  97 "Not ascertained"
  98 "Refused";

 label define GIVNDRG3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused";

 label define HEBIGOLD
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused";

 label define ENDRELA3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused";

 label define WRDPRES3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused";

 label define THRTPHY3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PHYSHRT3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define HELDDWN3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define MALEPRTS_1
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 PARTNERS"
   7 "7 PARTNERS"
   8 "8 PARTNERS"
  10 "10 OR MORE PARTNERS"
 997 "NOT ASCERTAINED"
 998 "REFUSED"
 999 "DON'T KNOW";

 label define MALEPRTSV
   1 "YES"
   7 "NOT ASCERTAINED";

 label define MALEPRTS_2
 997 "NOT ASCERTAINED";

 label define SAMLIFENUM
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 PARTNERS"
   7 "7 PARTNERS"
   8 "8 PARTNERS"
  10 "10 OR MORE PARTNERS"
 997 "Not ascertained"
 998 "Refused"
 999 "Don't know";

 label define MALPRT12_1
   0 "NONE"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 OR MORE PARTNERS"
 997 "NOT ASCERTAINED"
 998 "REFUSED"
 999 "DON'T KNOW";

 label define MALPRT12V
   7 "Not ascertained";

 label define MALPRT12_2
 997 "Not ascertained";

 label define SAMYEARNUM
   0 "0 PARTNERS"
   1 "1 PARTNERS"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 OR MORE PARTNERS"
 997 "NOT ASCERTAINED"
 998 "REFUSED"
 999 "DON'T KNOW";

 label define SAMORAL12
   0 "NONE"
 997 "NOT ASCERTAINED";

 label define RECEPANAL12
   0 "NONE"
 997 "Not ascertained";

 label define INSERANAL12
   0 "NONE"
 997 "NOT ASCERTAINED"
 998 "REFUSED";

 label define SAMESEX1
  97 "NOT ASCERTAINED"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define MSMNONMON
   0 "NONE"
 997 "NOT ASCERTAINED"
 998 "REFUSED"
 999 "DON'T KNOW";

 label define MALSHT12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   9 "Don't know";

 label define JOHN2FRQ
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   9 "Don't know";

 label define PROS2FRQ
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   9 "Don't know";

 label define HIVMAL12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   9 "Don't know";

 label define MSMWEB12
   1 "Yes"
   5 "No"
   7 "Not ascertained";

 label define MSMSORT12
   1 "YES, USUALLY"
   3 "YES, SOME OF THE TIME"
   5 "NO"
   7 "NOT ASCERTAINED"
   8 "REFUSED";

 label define CNDLSMAL
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused";

 label define CONDALLS
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused";

 label define MFLASTP
   1 "MALE"
   2 "FEMALE"
   7 "NOT ASCERTAINED";

 label define WHYCOND
   1 "TO PREVENT PREGNANCY"
   2 "TO PREVENT DISEASES LIKE SYPHILIS, GONORRHEA OR AIDS"
   3 "FOR BOTH REASONS"
   7 "NOT ASCERTAINED"
   8 "REFUSED";

 label define ATTRACT
   1 "ONLY ATTRACTED TO FEMALES"
   2 "MOSTLY ATTRACTED TO FEMALES"
   3 "EQUALLY ATTRACTED TO FEMALES AND MALES"
   4 "MOSTLY ATTRACTED TO MALES"
   5 "ONLY ATTRACTED TO MALES"
   6 "NOT SURE"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define ORIENT
   1 "HETEROSEXUAL OR STRAIGHT"
   2 "HOMOSEXUAL OR GAY"
   3 "BISEXUAL"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define RISKCHEK1
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RISKCHEK2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RISKCHEK3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RISKCHEK4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RECTDOUCH
   1 "NEVER"
   2 "ONCE OR TWICE DURING THE YEAR"
   3 "SEVERAL TIMES DURING THE YEAR"
   4 "ABOUT ONCE A MONTH"
   5 "ABOUT ONCE A WEEK"
   6 "ABOUT ONCE A DAY OR MORE"
   7 "NOT ASCERTAINED"
   8 "REFUSED";

 label define STDTST12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define STDSITE12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define STDTRT12
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define GON
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CHLAM
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define HERPES
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define GENWARTS
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define SYPHILIS
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define EVRINJECT
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define EVRSHARE
   1 "Yes"
   5 "No"
   7 "Not ascertained";

 label define EARNTYPE
   1 "WEEK"
   2 "MONTH"
   3 "YEAR"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define EARN
   1 "UNDER $96 (WEEKLY)/UNDER $417 (MONTHLY)/UNDER $5,000 (YEARLY)"
   2 "$96-$143 (WEEKLY)/$417-624 (MONTHLY)/$5,000-7,499 (YEARLY)"
   3 "$144-191 (WEEKLY)/$625-832 (MONTHLY)/$7,500-9,999 (YEARLY)"
   4 "$192-239 (WEEKLY)/$833-1,041 (MONTHLY)/$10,000-12,499 (YEARLY)"
   5 "$240-288 (WEEKLY)/$1,042-1,249 (MONTHLY)/$12,500-14,999 (YEARLY)"
   6 "$289-384 (WEEKLY)/$1,250-1,666 (MONTHLY)/$15,000-19,999 (YEARLY)"
   7 "$385-480 (WEEKLY)/$1,667-2,082 (MONTHLY)/$20,000-24,999 (YEARLY)"
   8 "$481-576 (WEEKLY)/$2,083-2,499 (MONTHLY)/$25,000-29,999 (YEARLY)"
   9 "$577-672 (WEEKLY)/$2,500-2,916 (MONTHLY)/$30,000-34,999 (YEARLY)"
  10 "$673-768 (WEEKLY)/$2,917-3,332 (MONTHLY)/$35,000-39,999 (YEARLY)"
  11 "$769-961 (WEEKLY)/$3,333-4,166 (MONTHLY)/$40,000-49,999 (YEARLY)"
  12 "$962-1,153 (WEEKLY)/$4,167-4,999 (MONTHLY)/$50,000-59,999 (YEARLY)"
  13 "$1,154-1,441 (WEEKLY)/$5,000-6,249 (MONTHLY)/$60,000-74,999 (YEARLY)"
  14 "$1,442-1,922 (WEEKLY)/$6,250-8,332 (MONTHLY)/$75,000-99,999 (YEARLY)"
  15 "$1,923 OR MORE (WEEKLY)/$8,333 OR MORE (MONTHLY)/$100,000 OR MORE (YEARLY)"
  97 "NOT ASCERTAINED"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define EARNDK1
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define EARNDK2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define EARNDK3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused";

 label define EARNDK4
   5 "NO"
   7 "NOT ASCERTAINED"
   9 "DON'T KNOW";

 label define WAGE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define SELFINC
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define SOCSEC
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define DISABIL
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define RETIRE
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define SSI
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define UNEMP
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define CHLDSUPP
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define INTEREST
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define DIVIDEND
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define OTHINC
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define TOINCWMY
   1 "WEEK"
   2 "MONTH"
   3 "YEAR"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define TOTINC
   1 "UNDER $96 (WEEKLY)/UNDER $417 (MONTHLY)/UNDER $5,000 (YEARLY)"
   2 "$96-$143 (WEEKLY)/$417-624 (MONTHLY)/$5,000-7,499 (YEARLY)"
   3 "$144-191 (WEEKLY)/$625-832 (MONTHLY)/$7,500-9,999 (YEARLY)"
   4 "$192-239 (WEEKLY)/$833-1,041 (MONTHLY)/$10,000-12,499 (YEARLY)"
   5 "$240-288 (WEEKLY)/$1,042-1,249 (MONTHLY)/$12,500-14,999 (YEARLY)"
   6 "$289-384 (WEEKLY)/$1,250-1,666 (MONTHLY)/$15,000-19,999 (YEARLY)"
   7 "$385-480 (WEEKLY)/$1,667-2,082 (MONTHLY)/$20,000-24,999 (YEARLY)"
   8 "$481-576 (WEEKLY)/$2,083-2,499 (MONTHLY)/$25,000-29,999 (YEARLY)"
   9 "$577-672 (WEEKLY)/$2,500-2,916 (MONTHLY)/$30,000-34,999 (YEARLY)"
  10 "$673-768 (WEEKLY)/$2,917-3,332 (MONTHLY)/$35,000-39,999 (YEARLY)"
  11 "$769-961 (WEEKLY)/$3,333-4,166 (MONTHLY)/$40,000-49,999 (YEARLY)"
  12 "$962-1,153 (WEEKLY)/$4,167-4,999 (MONTHLY)/$50,000-59,999 (YEARLY)"
  13 "$1,154-1,441 (WEEKLY)/$5,000-6,249 (MONTHLY)/$60,000-74,999 (YEARLY)"
  14 "$1,442-1,922 (WEEKLY)/$6,250-8,332 (MONTHLY)/$75,000-99,999 (YEARLY)"
  15 "$1,923 OR MORE (WEEKLY)/$8,333 OR MORE (MONTHLY)/$100,000 OR MORE (YEARLY)"
  97 "NOT ASCERTAINED"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define FMINCDK1
   1 "LESS THAN $50,000"
   5 "$50,000 OR MORE"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define FMINCDK2
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FMINCDK3
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FMINCDK4
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FMINCDK5
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PUBASST
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define PUBASTYP1
   1 "PUBLIC ASSIST PROG, E.G. AFDC OR ADC"
   2 "GENERAL/EMERGENCY/OTHER ASSISTANCE"
   7 "NOT ASCERTAINED"
   8 "REFUSED"
   9 "DON'T KNOW";

 label define FOODSTMP
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define WIC
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define HLPTRANS
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define HLPCHLDC
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define HLPJOB
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define FREEFOOD
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define HUNGRY
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define MED_COST
   1 "Yes"
   5 "No"
   7 "Not ascertained"
   8 "Refused"
   9 "Don't know";

 label define AGER
  15 "15 YEARS"
  16 "16 YEARS"
  17 "17 YEARS"
  18 "18 YEARS"
  19 "19 YEARS"
  20 "20 YEARS"
  21 "21 YEARS"
  22 "22 YEARS"
  23 "23 YEARS"
  24 "24 YEARS"
  25 "25 YEARS"
  26 "26 YEARS"
  27 "27 YEARS"
  28 "28 YEARS"
  29 "29 YEARS"
  30 "30 YEARS"
  31 "31 YEARS"
  32 "32 YEARS"
  33 "33 YEARS"
  34 "34 YEARS"
  35 "35 YEARS"
  36 "36 YEARS"
  37 "37 YEARS"
  38 "38 YEARS"
  39 "39 YEARS"
  40 "40 YEARS"
  41 "41 YEARS"
  42 "42 YEARS"
  43 "43 YEARS";

 label define FMARITAL
   1 "MARRIED TO A PERSON OF THE OPPOSITE SEX"
   2 "WIDOWED"
   3 "DIVORCED OR ANNULLED"
   4 "SEPARATED"
   5 "NEVER MARRIED";

 label define RMARITAL
   1 "CURRENTLY MARRIED TO A PERSON OF THE OPPOSITE SEX"
   2 "NOT MARRIED BUT LIVING WITH OPP SEX PARTNER"
   3 "WIDOWED"
   4 "DIVORCED OR ANNULLED"
   5 "SEPARATED FOR REASONS OF MARITAL DISCORD"
   6 "NEVER BEEN MARRIED";

 label define EDUCAT
   9 "9TH GRADE OR LESS"
  10 "10TH GRADE"
  11 "11TH GRADE"
  12 "12TH GRADE"
  13 "1 YEAR OF COLLEGE/GRAD SCHOOL"
  14 "2 YEARS OF COLLEGE/GRAD SCHOOL"
  15 "3 YEARS OF COLLEGE/GRAD SCHOOL"
  16 "4 YEARS OF COLLEGE/GRAD SCHOOL"
  17 "5 YEARS OF COLLEGE/GRAD SCHOOL"
  18 "6 YEARS OF COLLEGE/GRAD SCHOOL"
  19 "7+ YEARS OF COLLEGE/GRAD SCHOOL";

 label define HIEDUC
   5 "9TH GRADE OR LESS"
   6 "10TH GRADE"
   7 "11TH GRADE"
   8 "12TH GRADE, NO DIPLOMA (NOR GED)"
   9 "HIGH SCHOOL GRADUATE (DIPLOMA OR GED)"
  10 "SOME COLLEGE BUT NO DEGREE"
  11 "ASSOCIATE DEGREE IN COLLEGE/UNIVERSITY"
  12 "BACHELOR'S DEGREE"
  13 "MASTER'S DEGREE"
  14 "DOCTORATE DEGREE"
  15 "PROFESSIONAL DEGREE";

 label define HISPANIC
   1 "HISPANIC"
   2 "NON-HISPANIC";

 label define NUMRACE
   1 "SINGLE RACE REPORTED"
   2 "2 OR MORE RACES REPORTED";

 label define RACE
   1 "BLACK"
   2 "WHITE"
   3 "OTHER";

 label define HISPRACE
   1 "HISPANIC"
   2 "NON-HISPANIC WHITE"
   3 "NON-HISPANIC BLACK"
   4 "NON-HISPANIC OTHER";

 label define HISPRACE2
   1 "HISPANIC"
   2 "NON-HISPANIC WHITE, SINGLE RACE"
   3 "NON-HISPANIC BLACK, SINGLE RACE"
   4 "NON-HISPANIC OTHER OR MULTIPLE RACE";

 label define NUMKDHH
   0 "NO CHILDREN"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
   4 "4 CHILDREN"
   5 "5 CHILDREN OR MORE";

 label define NUMFMHH
   0 "NO FAMILY MEMBERS"
   1 "1 FAMILY MEMBER"
   2 "2 FAMILY MEMBERS"
   3 "3 FAMILY MEMBERS"
   4 "4 FAMILY MEMBERS"
   5 "5 FAMILY MEMBERS"
   6 "6 FAMILY MEMBERS"
   7 "7 FAMILY MEMBERS OR MORE";

 label define HHFAMTYP
   1 "NO SPOUSE/PARTNER AND NO CHILD(REN) (OF R) 18 OR YOUNGER"
   2 "SPOUSE/PARTNER, BUT NO CHILD(REN) (OF R) 18 OR YOUNGER"
   3 "SPOUSE AND R'S CHILD(REN) 18 OR YOUNGER"
   4 "COHABITING PARTNER AND R'S CHILD(REN) 18 OR YOUNGER"
   5 "NO SPOUSE/PARTNER, BUT CHILD(REN) OF R, 18 OR YOUNGER";

 label define HHPARTYP
   1 "BOTH BIOLOGICAL OR BOTH ADOPTIVE PARENTS"
   2 "BIOLOGICAL AND STEP- OR ADOPTIVE PARENT"
   3 "SINGLE PARENT (BIOLOGICAL, ADOPTIVE, OR STEPPARENT)"
   4 "OTHER";

 label define NCHILDHH
   0 "NO CHILDREN OF RESPONDENT AGE 18 OR YOUNGER IN THE HOUSEHOLD"
   1 "1 OF RESPONDENT'S CHILDREN 18 OR YOUNGER IN THE HOUSEHOLD"
   2 "2 OF RESPONDENT'S CHILDREN 18 OR YOUNGER IN THE HOUSEHOLD"
   3 "3 OR MORE OF RESPONDENT'S CHILDREN 18 OR YOUNGER IN THE HOUSEHOLD";

 label define HHKIDTYP
   0 "NO CHILD(REN) 18 OR YOUNGER IN HH OR ONLY OLDER CHILD(REN)"
   1 "AT LEAST ONE BIOLOGICAL CHILD (OF R'S) UNDER 18 IN HH, NO NONBIOLOGICAL CHILD(REN)"
   2 "ANY NON-BIOLOGICAL CHILD (OF R'S) 18 OR YOUNGER IN HH";

 label define CSPBBHH
   0 "NO JOINT BIOLOGICAL CHILDREN"
   1 "1 JOINT BIOLOGICAL CHILD"
   2 "2 JOINT BIOLOGICAL CHILDREN"
   3 "3 OR MORE JOINT BIOLOGICAL CHILDREN";

 label define CSPSBHH
   0 "NO SUCH CHILD"
   1 "1 OR MORE SUCH CHILDREN";

 label define CSPOKDHH
   0 "No such child"
   1 "1 or more such children";

 label define INTCTFAM
   1 "TWO BIOLOGICAL OR ADOPTIVE PARENTS FROM BIRTH"
   2 "ANYTHING OTHER THAN 2 BIOLOGICAL OR ADOPTIVE PARENTS FROM BIRTH";

 label define PARAGE14
   1 "R LIVED WITH BOTH BIOLOGICAL OR BOTH ADOPTIVE PARENTS AT AGE 14"
   2 "R LIVED WITH BIOLOGICAL MOTHER AND STEPFATHER AT AGE 14"
   3 "R LIVED IN ANY OTHER PARENTAL SITUATION OR A NONPARENTAL SITUATION AT AGE 14";

 label define EDUCMOM
   1 "LESS THAN HIGH SCHOOL"
   2 "HIGH SCHOOL GRADUATE OR GED"
   3 "SOME COLLEGE, INCLUDING 2-YEAR DEGREES"
   4 "BACHELOR'S DEGREE OR HIGHER"
  95 "NO MOTHER-FIGURE IDENTIFIED";

 label define AGEMOMB1
   1 "LESS THAN 18 YEARS"
   2 "18-19 YEARS"
   3 "20-24 YEARS"
   4 "25-29 YEARS"
   5 "30 OR OLDER"
  95 "NO MOTHER OR MOTHER-FIGURE"
  96 "MOTHER-FIGURE HAD NO CHILDREN";

 label define FMARNO
   0 "NEVER BEEN MARRIED"
   1 "1 TIME"
   2 "2 TIMES"
   3 "3 TIMES";

 label define AGER_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define FMARITAL_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define RMARITAL_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define EDUCAT_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define HIEDUC_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define HISPANIC_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define RACE_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define HISPRACE_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   2 "LOGICAL IMPUTATION";

 label define HISPRACE2_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   2 "LOGICAL IMPUTATION";

 label define NUMKDHH_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define NUMFMHH_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   2 "LOGICAL IMPUTATION";

 label define HHFAMTYP_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   2 "LOGICAL IMPUTATION";

 label define HHPARTYP_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define NCHILDHH_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define HHKIDTYP_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define CSPBBHH_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define CSPSBHH_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define CSPOKDHH_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define INTCTFAM_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define PARAGE14_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define EDUCMOM_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define AGEMOMB1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define FMARNO_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   2 "LOGICAL IMPUTATION";

 label define HADSEX
   1 "YES, R EVER HAD INTERCOURSE"
   2 "NO, R NEVER HAD INTERCOURSE";

 label define SEXONCE
   1 "YES (R HAS HAD SEX ONLY ONCE)"
   2 "NO (R HAS HAD SEX MORE THAN ONCE)";

 label define FIRSTPFLAG
   1 "CMFSTSEX - CM OF FIRST SEX EVER, BASED ON DL SERIES"
   2 "CMLSXP - CM WHEN R LAST HAD SEX WITH MOST RECENT PARTNER"
   3 "CMLSXP2 - CM WHEN R LAST HAD SEX WITH 2ND-TO-LAST PARTNER"
   4 "CMLSXP3 - CM WHEN R LAST HAD SEX WITH 3RD-TO-LAST PARTNER"
   5 "CMFSXP - CM WHEN R FIRST HAD SEX WITH MOST RECENT PARTNER"
   6 "CMFSXP2 - CM WHEN R FIRST HAD SEX WITH 2ND-TO-LAST PARTNER"
   7 "CMFSXP3 - CM WHEN R FIRST HAD SEX WITH 3RD-TO-LAST PARTNER"
   8 "CMFSXCWP - CM WHEN R FIRST HAD SEX WITH CWP"
   9 "UNABLE TO DETERMINE: RAW VARIABLE(S) MISSING";

 label define ELAPSED
   0 "0";

 label define SEXMAR
   0 "FIRST INTERCOURSE IN SAME MONTH AS MARRIAGE"
 996 "FIRST INTERCOURSE AFTER FIRST MARRIAGE";

 label define SEXUNION
   0 "FIRST INTERCOURSE IN SAME MONTH AS MARRIAGE OR COHABITATION"
 996 "FIRST INTERCOURSE AFTER FIRST MARRIAGE OR COHABITATION";

 label define FSEXRLTN
   1 "MARRIED TO HER"
   2 "ENGAGED TO HER, AND LIVING TOGETHER"
   3 "ENGAGED TO HER, BUT NOT LIVING TOGETHER"
   4 "LIVING TOGETHER IN A SEXUAL RELATIONSHIP, BUT NOT ENGAGED"
   5 "GOING OUT WITH HER OR GOING STEADY"
   6 "GOING OUT WITH HER ONCE IN A WHILE"
   7 "JUST FRIENDS"
   8 "HAD JUST MET HER"
   9 "SOMETHING ELSE";

 label define SEX1MTHD1
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL, LOOP"
  13 "SOMETHING ELSE"
  96 "NO METHOD USED AT FIRST INTERCOURSE";

 label define SEX1MTHD2
   1 "CONDOM"
   2 "WITHDRAWAL"
   4 "PILL"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RHYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL, LOOP"
  13 "SOMETHING ELSE"
  96 "NO METHOD USED AT FIRST INTERCOURSE";

 label define SEX1MTHD3
   1 "CONDOM"
   2 "WITHDRAWAL"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   9 "RHYTHM OR SAFE PERIOD"
  11 "VAGINAL CONTRACEPTIVE RING"
  13 "SOMETHING ELSE"
  96 "NO METHOD USED AT FIRST INTERCOURSE";

 label define SEX1MTHD4
   9 "RHYTHM OR SAFE PERIOD"
  96 "NO METHOD USED AT FIRST INTERCOURSE";

 label define ORDERFLAG
   1 "PARTNER DATES ARE IN ORDER, OR ONLY ONE VALID DATE REPORTED"
   2 "PARTNERS REPORTED OUT OF ORDER: LAST PARTNER AND POSSIBLY OTHERS"
   3 "PARTNERS REPORTED OUT OF ORDER: 2ND-TO-LAST AND 3RD-TO-LAST PARTNERS ONLY"
   4 "NO NONMISSING PARTNER DATES";

 label define SEX3MO
   1 "YES, HAD INTERCOURSE"
   2 "NO, DID NOT HAVE INTERCOURSE";

 label define SEX12MO
   1 "YES, HAD INTERCOURSE"
   2 "NO, DID NOT HAVE INTERCOURSE";

 label define LSEXPRAC
   1 "Hispanic"
   2 "Non-Hispanic White"
   3 "Non-Hispanic Black"
   4 "Non-Hispanic Other";

 label define LSEXRLTN
   1 "MARRIED TO HER"
   3 "LIVING TOGETHER IN A SEXUAL RELATIONSHIP"
   4 "GOING OUT WITH HER OR GOING STEADY"
   5 "GOING OUT WITH HER ONCE IN A WHILE"
   6 "JUST FRIENDS"
   7 "HAD JUST MET HER"
   8 "SOMETHING ELSE"
   9 "ENGAGED TO HER: ONLY ASKED OF A SUBSET OF RS";

 label define LSEXUSE1
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define LSEXUSE2
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define LSEXUSE3
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define LSEXUSE4
   3 "VASECTOMY"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX";

 label define METH12M1
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX IN THE PAST 12 MONTHS";

 label define METH12M2
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX IN THE PAST 12 MONTHS";

 label define METH12M3
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX IN THE PAST 12 MONTHS";

 label define METH12M4
   3 "VASECTOMY"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX IN THE PAST 12 MONTHS";

 label define METH3M1
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX IN THE PAST 3 MONTHS";

 label define METH3M2
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   5 "FEMALE STERILIZATION"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   8 "HORMONAL IMPLANT -- NORPLANT"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  12 "IUD, COIL LOOP"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX IN THE PAST 3 MONTHS";

 label define METH3M3
   1 "CONDOM"
   2 "WITHDRAWAL"
   3 "VASECTOMY"
   4 "PILL"
   6 "INJECTION -- DEPO-PROVERA/LUNELLE"
   7 "SPERMICIDAL FOAM/JELLY/CREAM/FILM/SUPPOSITORY"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  11 "VAGINAL CONTRACEPTIVE RING"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX IN THE PAST 3 MONTHS";

 label define METH3M4
   3 "VASECTOMY"
   9 "RYTHM OR SAFE PERIOD"
  10 "CONTRACEPTIVE PATCH"
  13 "SOMETHING ELSE"
  95 "R USED NO METHOD; R DOES NOT KNOW IF PARTNER USED A METHOD"
  96 "NO METHOD USED AT LAST SEX IN THE PAST 3 MONTHS";

 label define NUMP3MOS
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS EXACTLY"
   4 "3, POSSIBLY MORE PARTNERS";

 label define LIFPRTNR
   0 "0 PARTNERS"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 PARTNERS"
   7 "7 PARTNERS"
   8 "8 PARTNERS"
   9 "9 PARTNERS"
  50 "50 OR MORE PARTNERS";

 label define PARTS1YR
   0 "NONE"
   1 "1 PARTNER"
   2 "2 PARTNERS"
   3 "3 PARTNERS"
   4 "4 PARTNERS"
   5 "5 PARTNERS"
   6 "6 PARTNERS"
   7 "7 OR MORE PARTNERS";

 label define PARTDUR1
 997 "ONLY HAD SEX ONCE WITH PARTNER";

 label define PARTDUR2
 997 "Only had sex once with partner";

 label define PARTDUR3
 997 "Only had sex once with partner";

 label define COHEVER
   1 "YES, EVER COHABITED (LIVED WITH A WOMAN OUTSIDE OF MARRIAGE)"
   2 "NO, NEVER COHABITED (LIVED WITH A WOMAN OUTSIDE OF MARRIAGE)";

 label define EVMARCOH
   1 "YES, EVER MARRIED OR COHABITED"
   2 "NO, NEVER MARRIED OR COHABITED";

 label define PMARRNO
   0 "NONE"
   1 "ONE"
   2 "TWO";

 label define NONMARR
   0 "None"
   1 "One"
   2 "Two";

 label define TIMESCOH
   0 "None"
   1 "One"
   2 "Two";

 label define MAREND01
   1 "DIVORCED OR ANNULLED"
   2 "SEPARATED"
   3 "WIDOWED";

 label define MAREND02
   1 "DIVORCED OR ANNULLED"
   2 "SEPARATED"
   3 "WIDOWED";

 label define MAREND03
   1 "DIVORCED OR ANNULLED"
   2 "SEPARATED";

 label define MAREND04
   1 "DIVORCED OR ANNULLED";

 label define PREMARW1
   1 "YES"
   2 "NO";

 label define COHSTAT
   1 "NEVER COHABITED OUTSIDE OF MARRIAGE"
   2 "FIRST COHABITED BEFORE FIRST MARRIAGE"
   3 "FIRST COHABITED AFTER FIRST MARRIAGE";

 label define COHOUT
   1 "INTACT COHABITATION"
   2 "INTACT MARRIAGE"
   3 "DISSOLVED MARRIAGE"
   4 "DISSOLVED COHABITATION";

 label define CSPBIOKD
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define B1PREMAR
   1 "YES (1ST BIOLOGICAL CHILD BORN BEFORE 1ST MARRIAGE)"
   2 "NO (1ST BIOLOGICAL CHILD BORN IN SAME MONTH AS OR LATER THAN 1ST MARRIAGE)";

 label define MARBABY1
   1 "YES, MARRIED TO CHILD'S MOTHER"
   2 "NO, NOT MARRIED TO CHILD'S MOTHER";

 label define CEBOW
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN"
   4 "4 CHILDREN";

 label define CEBOWC
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define CEBOWP
   0 "None"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define EVRNOPAT
   1 "YES, 1 OR MORE CHILDREN OUT OF WEDLOCK, BUT NO ESTABLISHED PATERNITY"
   2 "NO, 1 OR MORE CHILDREN OUT OF WEDLOCK, BUT ESTABLISHED PATERNITY";

 label define NONLIVEB
   0 "NONE"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
  98 "REFUSED"
  99 "DON'T KNOW";

 label define COMPREG
   0 "NONE"
   1 "1 PREGNANCY"
   2 "2 PREGNANCIES"
   3 "3 PREGNANCIES"
   4 "4 PREGNANCIES";

 label define ABORTION
   0 "NONE"
   1 "1 PREGNANCY";

 label define LOSSNUM
   0 "NONE"
   1 "1 PREGNANCY";

 label define PARENT01
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define PARENT02
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define PARENT03
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define PARENT04
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define PARENT05
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define PARENT06
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   4 "Recent or last partner (up to 3 most recent in last 12 months), not a former wife or cohabiting partner"
   5 "Former wife (reported in Section E)"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define PARENT07
   1 "Current wife"
   2 "Current cohabiting partner"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   6 "First cohabiting partner (reported in Section E)"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define PARENT08
   1 "Current wife"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define PARENT09
   1 "Current wife"
   3 "Recent or last partner (up to 3 most recent in last 12 months), also an former wife or cohabiting partner"
   7 "Other sexual partner, not otherwise classified in codes 1-6";

 label define WANTB01
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB02
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   6 "DON'T KNOW, NOT SURE"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB03
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB04
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB05
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   4 "DIDN'T CARE, INDIFFERENT"
   5 "UNWANTED"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB06
   1 "LATER, OVERDUE"
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   5 "UNWANTED";

 label define WANTB07
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   5 "UNWANTED"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define WANTB08
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED";

 label define WANTB09
   2 "RIGHT TIME"
   3 "TOO SOON, MISTIMED"
   7 "R DID NOT KNOW ABOUT THE PREGNANCY LEADING TO THE BIRTH";

 label define HADSEX_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define SEXONCE_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define VRY1STSX_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define VRY1STAG_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define SEXMAR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define SEXUNION_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define FSEXPAGE_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define FSEXRLTN_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define SEX1MTHD1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define SEX1MTHD2_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define SEX1MTHD3_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define SEX1MTHD4_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define LSEXDATE_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define SEX3MO_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define SEX12MO_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   2 "LOGICAL IMPUTATION";

 label define LSEXRAGE_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define LSEXPAGE_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LSEXPRAC_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define LSEXRLTN_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LSEXUSE1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LSEXUSE2_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LSEXUSE3_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LSEXUSE4_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define METH12M1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define METH12M2_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define METH12M3_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define METH12M4_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define METH3M1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define METH3M2_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define METH3M3_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define METH3M4_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define NUMP3MOS_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LIFPRTNR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARTS1YR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define PARTDUR1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARTDUR2_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARTDUR3_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define COHEVER_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   2 "LOGICAL IMPUTATION";

 label define EVMARCOH_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define PMARRNO_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define NONMARR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define TIMESCOH_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MARDAT01_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MARDAT02_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MARDAT03_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MARDAT04_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   2 "LOGICAL IMPUTATION";

 label define MARDAT05_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define MAREND01_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define MAREND02_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define MAREND03_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define MAREND04_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define MAREND05_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define MARDIS01_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MARDIS02_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define MARDIS03_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define MARDIS04_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define MARDIS05_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define MAR1DISS_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PREMARW1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define COHAB1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define COHSTAT_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define COHOUT_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define COH1DUR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define CSPBIOKD_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define DATBABY1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define AGEBABY1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define B1PREMAR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   2 "LOGICAL IMPUTATION";

 label define MARBABY1_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define CEBOW_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define CEBOWC_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define CEBOWP_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define EVRNOPAT_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define NONLIVEB_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define COMPREG_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define ABORTION_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define LOSSNUM_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define PARENT01_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define PARENT02_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define PARENT03_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define PARENT04_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define PARENT05_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define PARENT06_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define PARENT07_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define PARENT08_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define PARENT09_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define WANTB01_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define WANTB02_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define WANTB03_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define WANTB04_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define WANTB05_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define WANTB06_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION"
   2 "LOGICAL IMPUTATION";

 label define WANTB07_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   2 "LOGICAL IMPUTATION";

 label define WANTB08_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   2 "LOGICAL IMPUTATION";

 label define WANTB09_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   2 "LOGICAL IMPUTATION";

 label define DADTYPE
   1 "ONLY CORESIDENTIAL CHILDREN"
   2 "ONLY NON-CORESIDENTIAL CHILDREN"
   3 "BOTH CORESIDENTIAL AND NON-CORESIDENTIAL CHILDREN"
   4 "NO CHILDREN 18 OR YOUNGER, OR NO CHILDREN AT ALL";

 label define DADTYPU5
   1 "ONLY CORESIDENTIAL CHILDREN UNDER 5"
   2 "ONLY NON-CORESIDENTIAL CHILDREN UNDER 5"
   3 "BOTH CORESIDENTIAL AND NONCORESIDENTIAL CHILDREN UNDER 5"
   4 "NEITHER CORESIDENTIAL OR NONCORESIDENTIAL CHILDREN UNDER 5, OR NO CHILDREN";

 label define DADTYP518
   1 "ONLY CORESIDENTIAL CHILDREN 5 TO 18"
   2 "ONLY NON-CORESIDENTIAL CHILDREN 5 TO 18"
   3 "BOTH CORESIDENTIAL AND NONCORESIDENTIAL CHILDREN 5 TO 18"
   4 "NEITHER CORESIDENTIAL OR NONCORESIDENTIAL CHILDREN 5 TO 18, OR NO CHILDREN";

 label define NUMCRU18
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define NUMNCU18
   0 "NONE"
   1 "1 CHILD"
   2 "2 CHILDREN"
   3 "3 CHILDREN";

 label define SUPP12MO
   1 "CONTRIBUTED CHILD SUPPORT ON A REGULAR BASIS IN LAST 12 MONTHS"
   2 "CONTRIBUTED CHILD SUPPORT ONCE IN A WHILE IN LAST 12 MONTHS"
   3 "DID NOT CONTRIBUTE CHILD SUPPORT IN LAST 12 MONTHS";

 label define DADTYPE_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define DADTYPU5_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define DADTYP518_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define NUMCRU18_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define NUMNCU18_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define SUPP12MO_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define INTENT
   1 "R INTENDS TO HAVE (MORE) CHILDREN"
   2 "R DOES NOT INTEND TO HAVE (MORE) CHILDREN"
   3 "R DOES NOT KNOW HIS INTENT";

 label define ADDEXP
   0 "NO ADDITIONAL BIRTHS"
   5 ".5 ADDITIONAL BIRTHS"
  10 "1 ADDITIONAL BIRTH"
  15 "1.5 ADDITIONAL BIRTHS"
  20 "2 ADDITIONAL BIRTHS"
  25 "2.5 ADDITIONAL BIRTHS"
  30 "3 ADDITIONAL BIRTHS"
  35 "3.5 ADDITIONAL BIRTHS"
  40 "4 ADDITIONAL BIRTHS"
  50 "5 ADDITIONAL BIRTHS"
  55 "5.5 ADDITIONAL BIRTHS"
  60 "6 ADDITIONAL BIRTHS"
  70 "7 ADDITIONAL BIRTHS"
  80 "8 ADDITIONAL BIRTHS"
  90 "9 ADDITIONAL BIRTHS";

 label define INTENT_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define ADDEXP_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define CURR_INS
   1 "CURRENTLY COVERED BY PRIVATE HEALTH INSURANCE OR MEDI-GAP"
   2 "CURRENTLY COVERED BY MEDICAID, CHIP, OR A STATE-SPONSORED HEALTH PLAN"
   3 "CURRENTLY COVERED BY MEDICARE, MILITARY HEALTH CARE, OR OTHER GOVERNMENT HEALTH CARE"
   4 "CURRENTLY COVERED ONLY BY A SINGLE-SERVICE PLAN, ONLY BY THE INDIAN HEALTH SERVICE, OR CURRENTLY NOT COVERED BY HEALTH INSURANCE";

 label define INFEVER
   1 "YES"
   2 "NO";

 label define EVHIVTST
   0 "NO HIV TEST REPORTED"
   1 "YES, ONLY AS PART OF BLOOD DONATION"
   2 "YES, ONLY OUTSIDE OF BLOOD DONATION"
   3 "YES, IN BOTH CONTEXTS";

 label define CURR_INS_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define INFEVER_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define EVHIVTST_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define METRO
   1 "PRINCIPAL CITY OF MSA"
   2 "OTHER MSA"
   3 "NOT MSA";

 label define RELIGION
   1 "NO RELIGION"
   2 "CATHOLIC"
   3 "PROTESTANT"
   4 "OTHER RELIGION";

 label define LABORFOR
   1 "WORKING FULL-TIME"
   2 "WORKING PART-TIME"
   3 "WORKING, BUT ON VACATION, STRIKE, OR HAD TEMPORARY ILLNESS"
   4 "WORKING - PATERNITY OR FAMILY LEAVE"
   5 "NOT WORKING BUT LOOKING FOR WORK"
   6 "IN SCHOOL"
   7 "KEEPING HOUSE"
   8 "CARING FOR FAMILY"
   9 "OTHER";

 label define METRO_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)";

 label define RELIGION_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define LABORFOR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   2 "LOGICAL IMPUTATION";

 label define TOTINCR
   1 "UNDER $5000"
   2 "$5000-$7499"
   3 "$7500-$9999"
   4 "$10,000-$12,499"
   5 "$12,500-$14,999"
   6 "$15,000-$19,999"
   7 "$20,000-$24,999"
   8 "$25,000-$29,999"
   9 "$30,000-$34,999"
  10 "$35,000-$39,999"
  11 "$40,000-$49,999"
  12 "$50,000-$59,999"
  13 "$60,000-$74,999"
  14 "$75,000-$99,999"
  15 "$100,000 OR MORE";

 label define PUBASSIS
   1 "YES (RECEIVED PUBLIC ASSISTANCE IN [INTERVIEW YEAR -1])"
   2 "NO (DID NOT RECEIVE PUBLIC ASSISTANCE IN [INTERVIEW YEAR -1])";

 label define POVERTY_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define TOTINCR_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define PUBASSIS_I
   0 "QUESTIONNAIRE DATA (NOT IMPUTED)"
   1 "MULTIPLE REGRESSION IMPUTATION";

 label define SECU
   1 "1"
   2 "2"
   3 "3"
   4 "4";

 label values RSCRNINF RSCRNINF ;
 label values RSCRAGE RSCRAGE ;
 label values RSCRHISP RSCRHISP ;
 label values RSCRRACE RSCRRACE ;
 label values AGE_A AGE_A ;
 label values AGE_R AGE_R ;
 label values AGESCRN AGESCRN ;
 label values MARSTAT MARSTAT ;
 label values FMARSTAT FMARSTAT ;
 label values FMARIT FMARIT ;
 label values EVRMARRY EVRMARRY ;
 label values HISP HISP ;
 label values HISPGRP HISPGRP ;
 label values PRIMLANG1 PRIMLANG1 ;
 label values PRIMLANG2 PRIMLANG2 ;
 label values PRIMLANG3 PRIMLANG3 ;
 label values FL_RAGE FL_RAGE ;
 label values FL_RRACE FL_RRACE ;
 label values FL_RHISP FL_RHISP ;
 label values ROSCNT ROSCNT ;
 label values WPLOCALE WPLOCALE ;
 label values WOMREL WOMREL ;
 label values GOSCHOL GOSCHOL ;
 label values VACA VACA ;
 label values HIGRADE HIGRADE ;
 label values COMPGRD COMPGRD ;
 label values DIPGED DIPGED ;
 label values EARNHS_M EARNHS_M ;
 label values EARNHS_Y EARNHS_Y ;
 label values CMHSGRAD CMHSGRAD ;
 label values HISCHGRD HISCHGRD ;
 label values LSTGRADE LSTGRADE ;
 label values MYSCHOL_M MYSCHOL_M ;
 label values MYSCHOL_Y MYSCHOL_Y ;
 label values CMLSTSCH CMLSTSCH ;
 label values HAVEDEG HAVEDEG ;
 label values DEGREES DEGREES ;
 label values EARNBA_M EARNBA_M ;
 label values EARNBA_Y EARNBA_Y ;
 label values CMBAGRAD CMBAGRAD ;
 label values WTHPARNW WTHPARNW ;
 label values ONOWN ONOWN ;
 label values ONOWN18 ONOWN18 ;
 label values INTACT INTACT ;
 label values PARMARR PARMARR ;
 label values INTACT18 INTACT18 ;
 label values LVSIT14F LVSIT14F ;
 label values LVSIT14M LVSIT14M ;
 label values WOMRASDU WOMRASDU ;
 label values MOMDEGRE MOMDEGRE ;
 label values MOMWORKD MOMWORKD ;
 label values MOMFSTCH MOMFSTCH ;
 label values MOM18 MOM18 ;
 label values MANRASDU MANRASDU ;
 label values R_FOSTER R_FOSTER ;
 label values EVRFSTER EVRFSTER ;
 label values MNYFSTER MNYFSTER ;
 label values DURFSTER DURFSTER ;
 label values TIMESMAR TIMESMAR ;
 label values EVCOHAB1 EVCOHAB1 ;
 label values NUMCOH1 NUMCOH1 ;
 label values EVCOHAB2 EVCOHAB2 ;
 label values NUMCOH2 NUMCOH2 ;
 label values EVRCOHAB EVRCOHAB ;
 label values NUMWIFE NUMWIFE ;
 label values NUMCOHAB NUMCOHAB ;
 label values EVERSEX EVERSEX ;
 label values RHADSEX RHADSEX ;
 label values SXMTONCE SXMTONCE ;
 label values YNOSEX YNOSEX ;
 label values TALKPAR1 TALKPAR1 ;
 label values TALKPAR2 TALKPAR2 ;
 label values TALKPAR3 TALKPAR3 ;
 label values TALKPAR4 TALKPAR4 ;
 label values TALKPAR5 TALKPAR5 ;
 label values TALKPAR6 TALKPAR6 ;
 label values SEDNO SEDNO ;
 label values SEDNOG SEDNOG ;
 label values SEDNOSX SEDNOSX ;
 label values SEDBC SEDBC ;
 label values SEDBCG SEDBCG ;
 label values SEDBCSX SEDBCSX ;
 label values SEDWHBC SEDWHBC ;
 label values SEDWHBCG SEDWHBCG ;
 label values SEDWBCSX SEDWBCSX ;
 label values SEDCOND SEDCOND ;
 label values SEDCONDG SEDCONDG ;
 label values SEDCONSX SEDCONSX ;
 label values SEDSTD SEDSTD ;
 label values SEDSTDG SEDSTDG ;
 label values SEDSTDSX SEDSTDSX ;
 label values SEDHIV SEDHIV ;
 label values SEDHIVG SEDHIVG ;
 label values SEDHIVSX SEDHIVSX ;
 label values SEDABST SEDABST ;
 label values SEDABSTG SEDABSTG ;
 label values SEDABSSX SEDABSSX ;
 label values EVEROPER EVEROPER ;
 label values TYPEOPER TYPEOPER ;
 label values STEROPER STEROPER ;
 label values VASEC_M VASEC_M ;
 label values VASEC_Y VASEC_Y ;
 label values CMVASEC CMVASEC ;
 label values PLCSTROP PLCSTROP ;
 label values RVRSVAS RVRSVAS ;
 label values RSURGSTR RSURGSTR ;
 label values FATHPOSS FATHPOSS ;
 label values FATHDIFF FATHDIFF ;
 label values RSTRSTAT RSTRSTAT ;
 label values LIFEPRT LIFEPRT ;
 label values LIFEPRTS LIFEPRTS ;
 label values SXMON12 SXMON12 ;
 label values MON12PRT MON12PRT ;
 label values MON12PRTS MON12PRTS ;
 label values SEXSTAT SEXSTAT ;
 label values P12MOCONO P12MOCONO ;
 label values P12MOCON P12MOCON ;
 label values SEXFREQ SEXFREQ ;
 label values CONFREQ CONFREQ ;
 label values P1RLTN1 P1RLTN1 ;
 label values P1CURRWIFE P1CURRWIFE ;
 label values P1CURRSEP P1CURRSEP ;
 label values P1RLTN2 P1RLTN2 ;
 label values P1COHABIT P1COHABIT ;
 label values P1SXLAST_M P1SXLAST_M ;
 label values P1SXLAST_Y P1SXLAST_Y ;
 label values CMLSXP1 CMLSXP1 ;
 label values P2RLTN1 P2RLTN1 ;
 label values P2CURRWIFE P2CURRWIFE ;
 label values P2CURRSEP P2CURRSEP ;
 label values P2RLTN2 P2RLTN2 ;
 label values P2COHABIT P2COHABIT ;
 label values P2SXLAST_M P2SXLAST_M ;
 label values P2SXLAST_Y P2SXLAST_Y ;
 label values CMLSXP2 CMLSXP2 ;
 label values P3RLTN1 P3RLTN1 ;
 label values P3CURRSEP P3CURRSEP ;
 label values P3RLTN2 P3RLTN2 ;
 label values P3COHABIT P3COHABIT ;
 label values P3SXLAST_M P3SXLAST_M ;
 label values P3SXLAST_Y P3SXLAST_Y ;
 label values CMLSXP3 CMLSXP3 ;
 label values P1RELATION P1RELATION ;
 label values P2RELATION P2RELATION ;
 label values P3RELATION P3RELATION ;
 label values FIRST FIRST ;
 label values MARRDATE_M MARRDATE_M ;
 label values MARRDATE_Y MARRDATE_Y ;
 label values CMCURMAR CMCURMAR ;
 label values HISAGEM HISAGEM ;
 label values LIVTOGWF LIVTOGWF ;
 label values STRTWFCP_M STRTWFCP_M ;
 label values STRTWFCP_Y STRTWFCP_Y ;
 label values CMCURCOH CMCURCOH ;
 label values HISAGEC HISAGEC ;
 label values CMSTRTWP CMSTRTWP ;
 label values ENGATHEN ENGATHEN ;
 label values WILLMARR WILLMARR ;
 label values CWPDOB_M CWPDOB_M ;
 label values CWPDOB_Y CWPDOB_Y ;
 label values CMCWPDOB CMCWPDOB ;
 label values CWPAGE CWPAGE ;
 label values CWPMULT CWPMULT ;
 label values CWPRACE CWPRACE ;
 label values CWPHRACE CWPHRACE ;
 label values CWPNRACE CWPNRACE ;
 label values CWPEDUCN CWPEDUCN ;
 label values CWPBORN CWPBORN ;
 label values CWPMARBF CWPMARBF ;
 label values CWPSX1WN_M CWPSX1WN_M ;
 label values CWPSX1WN_Y CWPSX1WN_Y ;
 label values CWPSX1AG CWPSX1AG ;
 label values CMFSXCWP CMFSXCWP ;
 label values AGEFSXCWP AGEFSXCWP ;
 label values CWPSX1RL CWPSX1RL ;
 label values CWPFUSE CWPFUSE ;
 label values CWPFMET01 CWPFMET01 ;
 label values CWPFMET02 CWPFMET02 ;
 label values CWPFMET03 CWPFMET03 ;
 label values CWPOPSTR CWPOPSTR ;
 label values CWPTYPOP1 CWPTYPOP1 ;
 label values CWPTYPOP2 CWPTYPOP2 ;
 label values CWPTOTST CWPTOTST ;
 label values CWPREVST CWPREVST ;
 label values PSURGSTR PSURGSTR ;
 label values CWPPOSS CWPPOSS ;
 label values CWPDIFF CWPDIFF ;
 label values PSTRSTAT PSTRSTAT ;
 label values CWPLSXWN_M CWPLSXWN_M ;
 label values CWPLSXWN_Y CWPLSXWN_Y ;
 label values CMLSXCWP CMLSXCWP ;
 label values CWPLUSE1 CWPLUSE1 ;
 label values CWPLMET11 CWPLMET11 ;
 label values CWPLMET12 CWPLMET12 ;
 label values CWPLUSE2 CWPLUSE2 ;
 label values DKCWPLUSE DKCWPLUSE ;
 label values CWPLMET201 CWPLMET201 ;
 label values CWPLMET202 CWPLMET202 ;
 label values DKCWPLMET DKCWPLMET ;
 label values CWPLSXUSE CWPLSXUSE ;
 label values CWPRECBC CWPRECBC ;
 label values CWPALLBC01 CWPALLBC01 ;
 label values CWPALLBC02 CWPALLBC02 ;
 label values CWPALLBC03 CWPALLBC03 ;
 label values CWPALLBC04 CWPALLBC04 ;
 label values CWPBCMST CWPBCMST ;
 label values CONDFREQ CONDFREQ ;
 label values CWPNOFRQ CWPNOFRQ ;
 label values CWPBIOKD CWPBIOKD ;
 label values CWPNUMKD CWPNUMKD ;
 label values PARTFATH PARTFATH ;
 label values CWPCHSEX CWPCHSEX ;
 label values CWPCHDOB_M CWPCHDOB_M ;
 label values CWPCHDOB_Y CWPCHDOB_Y ;
 label values CMCHDOB CMCHDOB ;
 label values CWPCHMAR CWPCHMAR ;
 label values CWPCHRES CWPCHRES ;
 label values CWPCHLRN CWPCHLRN ;
 label values CWPCHLIV1 CWPCHLIV1 ;
 label values CWPCHLIV2 CWPCHLIV2 ;
 label values CWPCHAGE CWPCHAGE ;
 label values CWPCHSIG CWPCHSIG ;
 label values CWPCHCRT CWPCHCRT ;
 label values CWPCHGEN CWPCHGEN ;
 label values CWPCHEVR CWPCHEVR ;
 label values CWPCHFAR CWPCHFAR ;
 label values CWPCHWNT CWPCHWNT ;
 label values CWPCHSON CWPCHSON ;
 label values CWPCHHPY CWPCHHPY ;
 label values CWPCHSEX2 CWPCHSEX2 ;
 label values CWPCHDOB_M2 CWPCHDOB_M2 ;
 label values CWPCHDOB_Y2 CWPCHDOB_Y2 ;
 label values CMCHDOB2 CMCHDOB2 ;
 label values MULTBIRT2 MULTBIRT2 ;
 label values CWPCHMAR2 CWPCHMAR2 ;
 label values CWPCHRES2 CWPCHRES2 ;
 label values CWPCHLRN2 CWPCHLRN2 ;
 label values CWPCHLIV10 CWPCHLIV10 ;
 label values CWPCHAGE2 CWPCHAGE2 ;
 label values CWPCHSIG2 CWPCHSIG2 ;
 label values CWPCHCRT2 CWPCHCRT2 ;
 label values CWPCHGEN2 CWPCHGEN2 ;
 label values CWPCHEVR2 CWPCHEVR2 ;
 label values CWPCHFAR2 CWPCHFAR2 ;
 label values CWPCHWNT2 CWPCHWNT2 ;
 label values CWPCHSON2 CWPCHSON2 ;
 label values CWPCHHPY2 CWPCHHPY2 ;
 label values CWPCHSEX3 CWPCHSEX3 ;
 label values CWPCHDOB_M3 CWPCHDOB_M3 ;
 label values CWPCHDOB_Y3 CWPCHDOB_Y3 ;
 label values CMCHDOB3 CMCHDOB3 ;
 label values MULTBIRT3 MULTBIRT3 ;
 label values CWPCHMAR3 CWPCHMAR3 ;
 label values CWPCHRES3 CWPCHRES3 ;
 label values CWPCHLRN3 CWPCHLRN3 ;
 label values CWPCHLIV19 CWPCHLIV19 ;
 label values CWPCHAGE3 CWPCHAGE3 ;
 label values CWPCHSIG3 CWPCHSIG3 ;
 label values CWPCHCRT3 CWPCHCRT3 ;
 label values CWPCHGEN3 CWPCHGEN3 ;
 label values CWPCHEVR3 CWPCHEVR3 ;
 label values CWPCHFAR3 CWPCHFAR3 ;
 label values CWPCHWNT3 CWPCHWNT3 ;
 label values CWPCHSON3 CWPCHSON3 ;
 label values CWPCHHPY3 CWPCHHPY3 ;
 label values CWPCHSEX4 CWPCHSEX4 ;
 label values CWPCHDOB_M4 CWPCHDOB_M4 ;
 label values CWPCHDOB_Y4 CWPCHDOB_Y4 ;
 label values CMCHDOB4 CMCHDOB4 ;
 label values MULTBIRT4 MULTBIRT4 ;
 label values CWPCHRES4 CWPCHRES4 ;
 label values CWPCHLRN4 CWPCHLRN4 ;
 label values CWPCHLIV28 CWPCHLIV28 ;
 label values CWPCHAGE4 CWPCHAGE4 ;
 label values CWPCHSIG4 CWPCHSIG4 ;
 label values CWPCHCRT4 CWPCHCRT4 ;
 label values CWPCHGEN4 CWPCHGEN4 ;
 label values CWPCHEVR4 CWPCHEVR4 ;
 label values CWPCHFAR4 CWPCHFAR4 ;
 label values CWPCHWNT4 CWPCHWNT4 ;
 label values CWPCHSON4 CWPCHSON4 ;
 label values CWPCHHPY4 CWPCHHPY4 ;
 label values CWPCHSEX5 CWPCHSEX5 ;
 label values CWPCHRES5 CWPCHRES5 ;
 label values CWPCHLIV37 CWPCHLIV37 ;
 label values CWPCHSIG5 CWPCHSIG5 ;
 label values CWPCHCRT5 CWPCHCRT5 ;
 label values CWPCHGEN5 CWPCHGEN5 ;
 label values CWPCHEVR5 CWPCHEVR5 ;
 label values CWPCHFAR5 CWPCHFAR5 ;
 label values CWPCHWNT5 CWPCHWNT5 ;
 label values CWPCHSON5 CWPCHSON5 ;
 label values CWPCHHPY5 CWPCHHPY5 ;
 label values CWPCHSEX6 CWPCHSEX6 ;
 label values CWPCHRES6 CWPCHRES6 ;
 label values CWPCHLIV46 CWPCHLIV46 ;
 label values CWPCHSIG6 CWPCHSIG6 ;
 label values CWPCHCRT6 CWPCHCRT6 ;
 label values CWPCHGEN6 CWPCHGEN6 ;
 label values CWPCHWNT6 CWPCHWNT6 ;
 label values CWPCHSON6 CWPCHSON6 ;
 label values CWPCHHPY6 CWPCHHPY6 ;
 label values CWPCHSEX7 CWPCHSEX7 ;
 label values CWPCHLIV55 CWPCHLIV55 ;
 label values CWPCHWNT7 CWPCHWNT7 ;
 label values CWPCHSON7 CWPCHSON7 ;
 label values CWPCHHPY7 CWPCHHPY7 ;
 label values CWPCHSEX8 CWPCHSEX8 ;
 label values CWPCHLIV64 CWPCHLIV64 ;
 label values CWPCHWNT8 CWPCHWNT8 ;
 label values CWPCHSON8 CWPCHSON8 ;
 label values CWPCHHPY8 CWPCHHPY8 ;
 label values CWPCHSEX9 CWPCHSEX9 ;
 label values CWPCHLIV73 CWPCHLIV73 ;
 label values CWPCHWNT9 CWPCHWNT9 ;
 label values CWPPRGNW CWPPRGNW ;
 label values CWPTRYPG CWPTRYPG ;
 label values CWPCPWNT CWPCPWNT ;
 label values CWPCPSON CWPCPSON ;
 label values CWPCPHPY CWPCPHPY ;
 label values C_OKAKIDS C_OKAKIDS ;
 label values CWPOTKID CWPOTKID ;
 label values CWPOKNUM CWPOKNUM ;
 label values CWPOKWTH CWPOKWTH ;
 label values CWPOKWTHN CWPOKWTHN ;
 label values CWPOKSEX CWPOKSEX ;
 label values CWPOKAD CWPOKAD ;
 label values CWPOKTRY CWPOKTRY ;
 label values CWPOKTHR CWPOKTHR ;
 label values CWPOKLIV1 CWPOKLIV1 ;
 label values CWPOKLIV2 CWPOKLIV2 ;
 label values CWPOKFAR CWPOKFAR ;
 label values CWPOKAGE CWPOKAGE ;
 label values CWPOKSEX2 CWPOKSEX2 ;
 label values CWPOKAD2 CWPOKAD2 ;
 label values CWPOKTRY2 CWPOKTRY2 ;
 label values CWPOKTHR2 CWPOKTHR2 ;
 label values CWPOKLIV8 CWPOKLIV8 ;
 label values CWPOKLIV9 CWPOKLIV9 ;
 label values CWPOKFAR2 CWPOKFAR2 ;
 label values CWPOKSEX3 CWPOKSEX3 ;
 label values CWPOKAD3 CWPOKAD3 ;
 label values CWPOKTRY3 CWPOKTRY3 ;
 label values CWPOKTHR3 CWPOKTHR3 ;
 label values CWPOKLIV15 CWPOKLIV15 ;
 label values CWPOKLIV16 CWPOKLIV16 ;
 label values CWPOKFAR3 CWPOKFAR3 ;
 label values CWPOKSEX4 CWPOKSEX4 ;
 label values CWPOKAD4 CWPOKAD4 ;
 label values CWPOKTHR4 CWPOKTHR4 ;
 label values CWPOKLIV22 CWPOKLIV22 ;
 label values CWPOKLIV23 CWPOKLIV23 ;
 label values CWPOKFAR4 CWPOKFAR4 ;
 label values CWPOKSEX5 CWPOKSEX5 ;
 label values CWPOKAD5 CWPOKAD5 ;
 label values CWPOKTRY5 CWPOKTRY5 ;
 label values CWPOKTHR5 CWPOKTHR5 ;
 label values CWPOKLIV29 CWPOKLIV29 ;
 label values CWPOKSEX6 CWPOKSEX6 ;
 label values CWPOKAD6 CWPOKAD6 ;
 label values CWPOKTHR6 CWPOKTHR6 ;
 label values CWPOKLIV36 CWPOKLIV36 ;
 label values CWPOKSEX7 CWPOKSEX7 ;
 label values CWPOKAD7 CWPOKAD7 ;
 label values CWPOKTHR7 CWPOKTHR7 ;
 label values CWPOKLIV43 CWPOKLIV43 ;
 label values CWPOKSEX8 CWPOKSEX8 ;
 label values CWPOKAD8 CWPOKAD8 ;
 label values CWPOKTHR8 CWPOKTHR8 ;
 label values CWPOKLIV50 CWPOKLIV50 ;
 label values C_NBAKIDS C_NBAKIDS ;
 label values CWPNBEVR CWPNBEVR ;
 label values CWPNBNUM CWPNBNUM ;
 label values CWPNBREL CWPNBREL ;
 label values CWPNBFOS CWPNBFOS ;
 label values CWPNBSEX CWPNBSEX ;
 label values CWPNBAD CWPNBAD ;
 label values CWPNBTRY CWPNBTRY ;
 label values CWPNBTHR CWPNBTHR ;
 label values CWPNBLIV1 CWPNBLIV1 ;
 label values CWPNBFAR CWPNBFAR ;
 label values CWPNBREL2 CWPNBREL2 ;
 label values CWPNBFOS2 CWPNBFOS2 ;
 label values CWPNBSEX2 CWPNBSEX2 ;
 label values CWPNBAD2 CWPNBAD2 ;
 label values CWPNBTRY2 CWPNBTRY2 ;
 label values CWPNBTHR2 CWPNBTHR2 ;
 label values CWPNBLIV8 CWPNBLIV8 ;
 label values CWPNBFAR2 CWPNBFAR2 ;
 label values CWPNBREL3 CWPNBREL3 ;
 label values CWPNBFOS3 CWPNBFOS3 ;
 label values CWPNBSEX3 CWPNBSEX3 ;
 label values CWPNBAD3 CWPNBAD3 ;
 label values CWPNBTRY3 CWPNBTRY3 ;
 label values CWPNBTHR3 CWPNBTHR3 ;
 label values CWPNBLIV15 CWPNBLIV15 ;
 label values CWPNBFAR3 CWPNBFAR3 ;
 label values CWPNBREL4 CWPNBREL4 ;
 label values CWPNBFOS4 CWPNBFOS4 ;
 label values CWPNBSEX4 CWPNBSEX4 ;
 label values CWPNBAD4 CWPNBAD4 ;
 label values CWPNBTRY4 CWPNBTRY4 ;
 label values CWPNBTHR4 CWPNBTHR4 ;
 label values CWPNBLIV22 CWPNBLIV22 ;
 label values CWPNBFAR4 CWPNBFAR4 ;
 label values CWPNBREL5 CWPNBREL5 ;
 label values CWPNBFOS5 CWPNBFOS5 ;
 label values CWPNBSEX5 CWPNBSEX5 ;
 label values CWPNBAD5 CWPNBAD5 ;
 label values CWPNBTRY5 CWPNBTRY5 ;
 label values CWPNBTHR5 CWPNBTHR5 ;
 label values CWPNBLIV29 CWPNBLIV29 ;
 label values CWPNBREL6 CWPNBREL6 ;
 label values CWPNBFOS6 CWPNBFOS6 ;
 label values CWPNBSEX6 CWPNBSEX6 ;
 label values CWPNBAD6 CWPNBAD6 ;
 label values CWPNBTRY6 CWPNBTRY6 ;
 label values CWPNBTHR6 CWPNBTHR6 ;
 label values CWPNBLIV36 CWPNBLIV36 ;
 label values CWPNBREL7 CWPNBREL7 ;
 label values CWPNBFOS7 CWPNBFOS7 ;
 label values CWPNBSEX7 CWPNBSEX7 ;
 label values CWPNBAD7 CWPNBAD7 ;
 label values CWPNBTHR7 CWPNBTHR7 ;
 label values CWPNBLIV43 CWPNBLIV43 ;
 label values CWPNBREL8 CWPNBREL8 ;
 label values CWPNBFOS8 CWPNBFOS8 ;
 label values CWPNBSEX8 CWPNBSEX8 ;
 label values CWPNBAD8 CWPNBAD8 ;
 label values CWPNBTHR8 CWPNBTHR8 ;
 label values CWPNBLIV50 CWPNBLIV50 ;
 label values CWPNBREL9 CWPNBREL9 ;
 label values CWPNBFOS9 CWPNBFOS9 ;
 label values CWPNBSEX9 CWPNBSEX9 ;
 label values CWPNBAD9 CWPNBAD9 ;
 label values CWPNBTHR9 CWPNBTHR9 ;
 label values CWPNBLIV57 CWPNBLIV57 ;
 label values CWPNBREL10 CWPNBREL10 ;
 label values CWPNBFOS10 CWPNBFOS10 ;
 label values CWPNBSEX10 CWPNBSEX10 ;
 label values CWPNBAD10 CWPNBAD10 ;
 label values CWPNBTHR10 CWPNBTHR10 ;
 label values CWPNBLIV64 CWPNBLIV64 ;
 label values MARDATEN_M MARDATEN_M ;
 label values MARDATEN_Y MARDATEN_Y ;
 label values CMMARP CMMARP ;
 label values LIVTOGN LIVTOGN ;
 label values STRTLIVE_M STRTLIVE_M ;
 label values STRTLIVE_Y STRTLIVE_Y ;
 label values CMCOHP CMCOHP ;
 label values AGELIV AGELIV ;
 label values CMUNIONP CMUNIONP ;
 label values ENGAGTHN ENGAGTHN ;
 label values MARREND MARREND ;
 label values DIVORFIN_M DIVORFIN_M ;
 label values STOPLIVE_M STOPLIVE_M ;
 label values STOPLIVE_Y STOPLIVE_Y ;
 label values CMSTOPP CMSTOPP ;
 label values LIVTOGN2 LIVTOGN2 ;
 label values STRTLIVE_M2 STRTLIVE_M2 ;
 label values STRTLIVE_Y2 STRTLIVE_Y2 ;
 label values CMCOHP2 CMCOHP2 ;
 label values AGELIV2 AGELIV2 ;
 label values CMUNIONP2 CMUNIONP2 ;
 label values ENGAGTHN2 ENGAGTHN2 ;
 label values MARREND2 MARREND2 ;
 label values DIVORFIN_M2 DIVORFIN_M2 ;
 label values DIVORFIN_Y2 DIVORFIN_Y2 ;
 label values CMDIVP2 CMDIVP2 ;
 label values STOPLIVE_M2 STOPLIVE_M2 ;
 label values MARDATEN_M3 MARDATEN_M3 ;
 label values LIVTOGN3 LIVTOGN3 ;
 label values STRTLIVE_M3 STRTLIVE_M3 ;
 label values ENGAGTHN3 ENGAGTHN3 ;
 label values MARREND3 MARREND3 ;
 label values DIVORFIN_M3 DIVORFIN_M3 ;
 label values DIVORFIN_Y3 DIVORFIN_Y3 ;
 label values CMDIVP3 CMDIVP3 ;
 label values STOPLIVE_M3 STOPLIVE_M3 ;
 label values CURRPRTS CURRPRTS ;
 label values PXCURR PXCURR ;
 label values PXCURRPRT PXCURRPRT ;
 label values PXMARRY PXMARRY ;
 label values PXCURR2 PXCURR2 ;
 label values PXCURRPRT2 PXCURRPRT2 ;
 label values PXMARRY2 PXMARRY2 ;
 label values PXCURR3 PXCURR3 ;
 label values PXCURRPRT3 PXCURRPRT3 ;
 label values PXMARRY3 PXMARRY3 ;
 label values PXLRUSE PXLRUSE ;
 label values PXLRMETH1 PXLRMETH1 ;
 label values PXLRMETH2 PXLRMETH2 ;
 label values PXLRMETH3 PXLRMETH3 ;
 label values PXLPUSE PXLPUSE ;
 label values DKPXLPUSE DKPXLPUSE ;
 label values PXLPMETH01 PXLPMETH01 ;
 label values PXLPMETH02 PXLPMETH02 ;
 label values PXLPMETH03 PXLPMETH03 ;
 label values DKPXLPMETH DKPXLPMETH ;
 label values LSXUSEP LSXUSEP ;
 label values MTONCEP MTONCEP ;
 label values PXLSXPRB PXLSXPRB ;
 label values PXMTONCE PXMTONCE ;
 label values PXPAGE PXPAGE ;
 label values PXRELAGE PXRELAGE ;
 label values PXRELYRS PXRELYRS ;
 label values PXFRLTN1 PXFRLTN1 ;
 label values P1YMULT1 P1YMULT1 ;
 label values P1YRACE1 P1YRACE1 ;
 label values P1YHRACE1 P1YHRACE1 ;
 label values P1YNRACE1 P1YNRACE1 ;
 label values PXLRUSE2 PXLRUSE2 ;
 label values PXLRMETH5 PXLRMETH5 ;
 label values PXLRMETH6 PXLRMETH6 ;
 label values PXLPUSE2 PXLPUSE2 ;
 label values DKPXLPUSE2 DKPXLPUSE2 ;
 label values PXLPMETH11 PXLPMETH11 ;
 label values PXLPMETH12 PXLPMETH12 ;
 label values DKPXLPMETH2 DKPXLPMETH2 ;
 label values LSXUSEP2 LSXUSEP2 ;
 label values MTONCEP2 MTONCEP2 ;
 label values PXLSXPRB2 PXLSXPRB2 ;
 label values PXMTONCE2 PXMTONCE2 ;
 label values PXPAGE2 PXPAGE2 ;
 label values PXRELAGE2 PXRELAGE2 ;
 label values PXRELYRS2 PXRELYRS2 ;
 label values PXFRLTN3 PXFRLTN3 ;
 label values P1YMULT2 P1YMULT2 ;
 label values P1YRACE2 P1YRACE2 ;
 label values P1YHRACE2 P1YHRACE2 ;
 label values P1YNRACE2 P1YNRACE2 ;
 label values PXLRUSE3 PXLRUSE3 ;
 label values PXLRMETH9 PXLRMETH9 ;
 label values PXLRMETH10 PXLRMETH10 ;
 label values PXLPUSE3 PXLPUSE3 ;
 label values DKPXLPUSE3 DKPXLPUSE3 ;
 label values PXLPMETH21 PXLPMETH21 ;
 label values PXLPMETH22 PXLPMETH22 ;
 label values LSXUSEP3 LSXUSEP3 ;
 label values MTONCEP3 MTONCEP3 ;
 label values PXLSXPRB3 PXLSXPRB3 ;
 label values PXMTONCE3 PXMTONCE3 ;
 label values PXPAGE3 PXPAGE3 ;
 label values PXRELAGE3 PXRELAGE3 ;
 label values PXRELYRS3 PXRELYRS3 ;
 label values PXFRLTN5 PXFRLTN5 ;
 label values P1YMULT3 P1YMULT3 ;
 label values P1YRACE3 P1YRACE3 ;
 label values P1YHRACE3 P1YHRACE3 ;
 label values P1YNRACE3 P1YNRACE3 ;
 label values PXDOB_M PXDOB_M ;
 label values PXDOB_Y PXDOB_Y ;
 label values CMDOBP CMDOBP ;
 label values PXEDUC PXEDUC ;
 label values PXMARBF PXMARBF ;
 label values PXANYCH PXANYCH ;
 label values PXANYCHN PXANYCHN ;
 label values PXABLECH PXABLECH ;
 label values PXDOB_M2 PXDOB_M2 ;
 label values PXDOB_Y2 PXDOB_Y2 ;
 label values CMDOBP2 CMDOBP2 ;
 label values PXEDUC2 PXEDUC2 ;
 label values PXMARBF2 PXMARBF2 ;
 label values PXANYCH2 PXANYCH2 ;
 label values PXANYCHN2 PXANYCHN2 ;
 label values PXABLECH2 PXABLECH2 ;
 label values PXDOB_M3 PXDOB_M3 ;
 label values PXDOB_Y3 PXDOB_Y3 ;
 label values CMDOBP3 CMDOBP3 ;
 label values PXEDUC3 PXEDUC3 ;
 label values PXMARBF3 PXMARBF3 ;
 label values PXANYCH3 PXANYCH3 ;
 label values PXANYCHN3 PXANYCHN3 ;
 label values PXABLECH3 PXABLECH3 ;
 label values PXSXFRST_M PXSXFRST_M ;
 label values PXSXFRST_Y PXSXFRST_Y ;
 label values CMFSXP CMFSXP ;
 label values AGEFSXP AGEFSXP ;
 label values PXAGFRST PXAGFRST ;
 label values PXFRLTN2 PXFRLTN2 ;
 label values PXFUSE PXFUSE ;
 label values PXFMETH01 PXFMETH01 ;
 label values PXFMETH02 PXFMETH02 ;
 label values PXFMETH03 PXFMETH03 ;
 label values PXFMETH04 PXFMETH04 ;
 label values PXSXFRST_M2 PXSXFRST_M2 ;
 label values PXSXFRST_Y2 PXSXFRST_Y2 ;
 label values CMFSXP2 CMFSXP2 ;
 label values AGEFSXP2 AGEFSXP2 ;
 label values PXAGFRST2 PXAGFRST2 ;
 label values PXFRLTN4 PXFRLTN4 ;
 label values PXFUSE2 PXFUSE2 ;
 label values PXFMETH14 PXFMETH14 ;
 label values PXFMETH15 PXFMETH15 ;
 label values PXFMETH16 PXFMETH16 ;
 label values PXFMETH17 PXFMETH17 ;
 label values PXSXFRST_M3 PXSXFRST_M3 ;
 label values PXSXFRST_Y3 PXSXFRST_Y3 ;
 label values CMFSXP3 CMFSXP3 ;
 label values AGEFSXP3 AGEFSXP3 ;
 label values PXAGFRST3 PXAGFRST3 ;
 label values PXFRLTN6 PXFRLTN6 ;
 label values PXFUSE3 PXFUSE3 ;
 label values PXFMETH27 PXFMETH27 ;
 label values PXFMETH28 PXFMETH28 ;
 label values PXFMETH29 PXFMETH29 ;
 label values PXFMETH30 PXFMETH30 ;
 label values PXANYUSE PXANYUSE ;
 label values PXMETHOD01 PXMETHOD01 ;
 label values PXMETHOD02 PXMETHOD02 ;
 label values PXMETHOD03 PXMETHOD03 ;
 label values PXMETHOD04 PXMETHOD04 ;
 label values PXMETHOD05 PXMETHOD05 ;
 label values PXMSTUSE PXMSTUSE ;
 label values PXCONFRQ PXCONFRQ ;
 label values PXNOFREQ PXNOFREQ ;
 label values PXANYUSE2 PXANYUSE2 ;
 label values PXMETHOD14 PXMETHOD14 ;
 label values PXMETHOD15 PXMETHOD15 ;
 label values PXMETHOD16 PXMETHOD16 ;
 label values PXMETHOD17 PXMETHOD17 ;
 label values PXMETHOD18 PXMETHOD18 ;
 label values PXMSTUSE2 PXMSTUSE2 ;
 label values PXCONFRQ2 PXCONFRQ2 ;
 label values PXNOFREQ2 PXNOFREQ2 ;
 label values PXANYUSE3 PXANYUSE3 ;
 label values PXMETHOD27 PXMETHOD27 ;
 label values PXMETHOD28 PXMETHOD28 ;
 label values PXMETHOD29 PXMETHOD29 ;
 label values PXMETHOD30 PXMETHOD30 ;
 label values PXMSTUSE3 PXMSTUSE3 ;
 label values PXCONFRQ3 PXCONFRQ3 ;
 label values PXNOFREQ3 PXNOFREQ3 ;
 label values PXCHILD PXCHILD ;
 label values PXCHILDN PXCHILDN ;
 label values PXCXSEX PXCXSEX ;
 label values PXCXBORN_M PXCXBORN_M ;
 label values PXCXBORN_Y PXCXBORN_Y ;
 label values CMCHDOB11 CMCHDOB11 ;
 label values PXCXRES PXCXRES ;
 label values PXCXKNOW PXCXKNOW ;
 label values PXCXLIV01 PXCXLIV01 ;
 label values PXCXLIV02 PXCXLIV02 ;
 label values PXCXLIV03 PXCXLIV03 ;
 label values PXCXAGE PXCXAGE ;
 label values PXCXSIG PXCXSIG ;
 label values PXCXCRT PXCXCRT ;
 label values PXCXGEN PXCXGEN ;
 label values PXCXEVER PXCXEVER ;
 label values PXWANT PXWANT ;
 label values PXSOON PXSOON ;
 label values PXHPYPG PXHPYPG ;
 label values PXCXSEX2 PXCXSEX2 ;
 label values PXCXBORN_M2 PXCXBORN_M2 ;
 label values PXCXBORN_Y2 PXCXBORN_Y2 ;
 label values CMCHDOB12 CMCHDOB12 ;
 label values PXCXRES2 PXCXRES2 ;
 label values PXCXKNOW2 PXCXKNOW2 ;
 label values PXCXLIV11 PXCXLIV11 ;
 label values PXCXLIV12 PXCXLIV12 ;
 label values PXCXAGE2 PXCXAGE2 ;
 label values PXCXSIG2 PXCXSIG2 ;
 label values PXCXCRT2 PXCXCRT2 ;
 label values PXCXGEN2 PXCXGEN2 ;
 label values PXCXEVER2 PXCXEVER2 ;
 label values PXWANT2 PXWANT2 ;
 label values PXSOON2 PXSOON2 ;
 label values PXHPYPG2 PXHPYPG2 ;
 label values PXCXSEX3 PXCXSEX3 ;
 label values PXCXBORN_M3 PXCXBORN_M3 ;
 label values MULTBIRT13 MULTBIRT13 ;
 label values PXCXRES3 PXCXRES3 ;
 label values PXCXKNOW3 PXCXKNOW3 ;
 label values PXCXLIV21 PXCXLIV21 ;
 label values PXCXLIV22 PXCXLIV22 ;
 label values PXCXAGE3 PXCXAGE3 ;
 label values PXCXSIG3 PXCXSIG3 ;
 label values PXCXCRT3 PXCXCRT3 ;
 label values PXCXGEN3 PXCXGEN3 ;
 label values PXCXEVER3 PXCXEVER3 ;
 label values PXWANT3 PXWANT3 ;
 label values PXSOON3 PXSOON3 ;
 label values PXHPYPG3 PXHPYPG3 ;
 label values PXCXSEX4 PXCXSEX4 ;
 label values PXCXRES4 PXCXRES4 ;
 label values PXCXKNOW4 PXCXKNOW4 ;
 label values PXCXLIV31 PXCXLIV31 ;
 label values PXCXSIG4 PXCXSIG4 ;
 label values PXCXCRT4 PXCXCRT4 ;
 label values PXCXGEN4 PXCXGEN4 ;
 label values PXCXEVER4 PXCXEVER4 ;
 label values PXWANT4 PXWANT4 ;
 label values PXSOON4 PXSOON4 ;
 label values PXHPYPG4 PXHPYPG4 ;
 label values PXCHILD2 PXCHILD2 ;
 label values PXCHILDN2 PXCHILDN2 ;
 label values PXCXSEX11 PXCXSEX11 ;
 label values PXCXBORN_M11 PXCXBORN_M11 ;
 label values PXCXBORN_Y11 PXCXBORN_Y11 ;
 label values CMCHDOB21 CMCHDOB21 ;
 label values PXCXRES11 PXCXRES11 ;
 label values PXCXKNOW11 PXCXKNOW11 ;
 label values PXCXLIV101 PXCXLIV101 ;
 label values PXCXLIV102 PXCXLIV102 ;
 label values PXCXAGE11 PXCXAGE11 ;
 label values PXCXSIG11 PXCXSIG11 ;
 label values PXCXCRT11 PXCXCRT11 ;
 label values PXCXGEN11 PXCXGEN11 ;
 label values PXCXEVER11 PXCXEVER11 ;
 label values PXWANT11 PXWANT11 ;
 label values PXSOON11 PXSOON11 ;
 label values PXHPYPG11 PXHPYPG11 ;
 label values PXCXSEX12 PXCXSEX12 ;
 label values PXCXRES12 PXCXRES12 ;
 label values PXCXKNOW12 PXCXKNOW12 ;
 label values PXCXLIV111 PXCXLIV111 ;
 label values PXCXLIV112 PXCXLIV112 ;
 label values PXCXSIG12 PXCXSIG12 ;
 label values PXCXCRT12 PXCXCRT12 ;
 label values PXCXGEN12 PXCXGEN12 ;
 label values PXCXEVER12 PXCXEVER12 ;
 label values PXWANT12 PXWANT12 ;
 label values PXSOON12 PXSOON12 ;
 label values PXHPYPG12 PXHPYPG12 ;
 label values PXCXSEX13 PXCXSEX13 ;
 label values PXCXKNOW13 PXCXKNOW13 ;
 label values PXCXLIV121 PXCXLIV121 ;
 label values PXCXLIV122 PXCXLIV122 ;
 label values PXCXSIG13 PXCXSIG13 ;
 label values PXCXCRT13 PXCXCRT13 ;
 label values PXCXGEN13 PXCXGEN13 ;
 label values PXCXEVER13 PXCXEVER13 ;
 label values PXWANT13 PXWANT13 ;
 label values PXSOON13 PXSOON13 ;
 label values PXHPYPG13 PXHPYPG13 ;
 label values PXCXSEX14 PXCXSEX14 ;
 label values PXCXLIV131 PXCXLIV131 ;
 label values PXCXLIV132 PXCXLIV132 ;
 label values PXWANT14 PXWANT14 ;
 label values PXSOON14 PXSOON14 ;
 label values PXHPYPG14 PXHPYPG14 ;
 label values PXCXSEX15 PXCXSEX15 ;
 label values PXCXLIV141 PXCXLIV141 ;
 label values PXCXLIV142 PXCXLIV142 ;
 label values PXWANT15 PXWANT15 ;
 label values PXSOON15 PXSOON15 ;
 label values PXHPYPG15 PXHPYPG15 ;
 label values PXCHILD3 PXCHILD3 ;
 label values PXCHILDN3 PXCHILDN3 ;
 label values PXCXSEX21 PXCXSEX21 ;
 label values PXCXRES21 PXCXRES21 ;
 label values PXCXKNOW21 PXCXKNOW21 ;
 label values PXCXLIV201 PXCXLIV201 ;
 label values PXCXLIV202 PXCXLIV202 ;
 label values PXCXSIG21 PXCXSIG21 ;
 label values PXCXCRT21 PXCXCRT21 ;
 label values PXCXGEN21 PXCXGEN21 ;
 label values PXCXEVER21 PXCXEVER21 ;
 label values PXWANT21 PXWANT21 ;
 label values PXSOON21 PXSOON21 ;
 label values PXHPYPG21 PXHPYPG21 ;
 label values PXCXSEX22 PXCXSEX22 ;
 label values PXCXRES22 PXCXRES22 ;
 label values PXCXLIV211 PXCXLIV211 ;
 label values PXCXSIG22 PXCXSIG22 ;
 label values PXCXCRT22 PXCXCRT22 ;
 label values PXCXGEN22 PXCXGEN22 ;
 label values PXCXEVER22 PXCXEVER22 ;
 label values PXWANT22 PXWANT22 ;
 label values PXSOON22 PXSOON22 ;
 label values PXHPYPG22 PXHPYPG22 ;
 label values PXCPREG PXCPREG ;
 label values PXTRYING PXTRYING ;
 label values PXRWANT PXRWANT ;
 label values PXRSOON PXRSOON ;
 label values PXCPFEEL PXCPFEEL ;
 label values PXCPREG2 PXCPREG2 ;
 label values PXTRYING2 PXTRYING2 ;
 label values PXCPREG3 PXCPREG3 ;
 label values PXTRYING3 PXTRYING3 ;
 label values CURRPREG CURRPREG ;
 label values D_OKAKIDS D_OKAKIDS ;
 label values PXOTKID PXOTKID ;
 label values PXOKWTH PXOKWTH ;
 label values PXOKWTHN PXOKWTHN ;
 label values PXOKSEX PXOKSEX ;
 label values PXOKAD PXOKAD ;
 label values PXOKLIV1 PXOKLIV1 ;
 label values PXOKSEX2 PXOKSEX2 ;
 label values PXOKAD2 PXOKAD2 ;
 label values PXOKLIV9 PXOKLIV9 ;
 label values PXOKSEX3 PXOKSEX3 ;
 label values PXOKAD3 PXOKAD3 ;
 label values PXOKSEX4 PXOKSEX4 ;
 label values PXOKAD4 PXOKAD4 ;
 label values PXOKSEX5 PXOKSEX5 ;
 label values PXOKAD5 PXOKAD5 ;
 label values PXOKSEX6 PXOKSEX6 ;
 label values PXOKAD6 PXOKAD6 ;
 label values D_OKAKIDS2 D_OKAKIDS2 ;
 label values PXOTKID2 PXOTKID2 ;
 label values PXOKWTH2 PXOKWTH2 ;
 label values PXOKWTHN2 PXOKWTHN2 ;
 label values PXOKSEX11 PXOKSEX11 ;
 label values PXOKAD11 PXOKAD11 ;
 label values PXOKLIV81 PXOKLIV81 ;
 label values PXOKAGE11 PXOKAGE11 ;
 label values PXOKSEX12 PXOKSEX12 ;
 label values PXOKAD12 PXOKAD12 ;
 label values PXOKLIV89 PXOKLIV89 ;
 label values PXOKAGE12 PXOKAGE12 ;
 label values PXOKSEX13 PXOKSEX13 ;
 label values PXOKAD13 PXOKAD13 ;
 label values PXOKAGE13 PXOKAGE13 ;
 label values PXOKSEX14 PXOKSEX14 ;
 label values PXOKAD14 PXOKAD14 ;
 label values D_OKAKIDS3 D_OKAKIDS3 ;
 label values PXOTKID3 PXOTKID3 ;
 label values PXOKWTH3 PXOKWTH3 ;
 label values PXOKWTHN3 PXOKWTHN3 ;
 label values PXOKSEX21 PXOKSEX21 ;
 label values PXOKAD21 PXOKAD21 ;
 label values PXOKSEX22 PXOKSEX22 ;
 label values PXOKAD22 PXOKAD22 ;
 label values PXOKSEX23 PXOKSEX23 ;
 label values PXOKAD23 PXOKAD23 ;
 label values PXOKSEX24 PXOKSEX24 ;
 label values PXOKAD24 PXOKAD24 ;
 label values D_NBAKIDS D_NBAKIDS ;
 label values PXNBEVR PXNBEVR ;
 label values PXNBREL PXNBREL ;
 label values PXNBFOS PXNBFOS ;
 label values PXNBSEX PXNBSEX ;
 label values PXNBAD PXNBAD ;
 label values PXNBLIV1 PXNBLIV1 ;
 label values PXNBFAR PXNBFAR ;
 label values PXNBREL2 PXNBREL2 ;
 label values PXNBFOS2 PXNBFOS2 ;
 label values PXNBSEX2 PXNBSEX2 ;
 label values PXNBAD2 PXNBAD2 ;
 label values PXNBLIV9 PXNBLIV9 ;
 label values PXNBFAR2 PXNBFAR2 ;
 label values PXNBREL3 PXNBREL3 ;
 label values PXNBFOS3 PXNBFOS3 ;
 label values PXNBSEX3 PXNBSEX3 ;
 label values PXNBAD3 PXNBAD3 ;
 label values PXNBREL4 PXNBREL4 ;
 label values PXNBFOS4 PXNBFOS4 ;
 label values PXNBSEX4 PXNBSEX4 ;
 label values PXNBAD4 PXNBAD4 ;
 label values PXNBREL5 PXNBREL5 ;
 label values PXNBFOS5 PXNBFOS5 ;
 label values PXNBSEX5 PXNBSEX5 ;
 label values PXNBAD5 PXNBAD5 ;
 label values D_NBAKIDS2 D_NBAKIDS2 ;
 label values PXNBEVR2 PXNBEVR2 ;
 label values PXNBREL11 PXNBREL11 ;
 label values PXNBFOS11 PXNBFOS11 ;
 label values PXNBSEX11 PXNBSEX11 ;
 label values PXNBAD11 PXNBAD11 ;
 label values D_NBAKIDS3 D_NBAKIDS3 ;
 label values PXNBEVR3 PXNBEVR3 ;
 label values FPFIRST_M FPFIRST_M ;
 label values FPFIRST_Y FPFIRST_Y ;
 label values CMFSTSEX CMFSTSEX ;
 label values FSTSEXAGE FSTSEXAGE ;
 label values FPAGE FPAGE ;
 label values FPAGE18 FPAGE18 ;
 label values FPAGE15 FPAGE15 ;
 label values FPAGE20 FPAGE20 ;
 label values RFSXAGEGP RFSXAGEGP ;
 label values FPPAGE FPPAGE ;
 label values FPRELAGE FPRELAGE ;
 label values FPRELYRS FPRELYRS ;
 label values FPRLTN FPRLTN ;
 label values FPUSE FPUSE ;
 label values FPMETH01 FPMETH01 ;
 label values FPMETH02 FPMETH02 ;
 label values FPMETH03 FPMETH03 ;
 label values FPPROBE FPPROBE ;
 label values NFORMWIFE NFORMWIFE ;
 label values NFORMCOHAB NFORMCOHAB ;
 label values FWVERIFY FWVERIFY ;
 label values FWVER FWVER ;
 label values FWVERIFY2 FWVERIFY2 ;
 label values FWVER2 FWVER2 ;
 label values FWVERIFY3 FWVERIFY3 ;
 label values FWVER3 FWVER3 ;
 label values FWVERIFY4 FWVERIFY4 ;
 label values FWVER4 FWVER4 ;
 label values FCVER FCVER ;
 label values FCVERIFY FCVERIFY ;
 label values EXRELATION EXRELATION ;
 label values FWMAREND_M FWMAREND_M ;
 label values FWMAREND_Y FWMAREND_Y ;
 label values CMMARW CMMARW ;
 label values AGEMARRN AGEMARRN ;
 label values LIVTOGN4 LIVTOGN4 ;
 label values STRTLIVE_M4 STRTLIVE_M4 ;
 label values STRTLIVE_Y4 STRTLIVE_Y4 ;
 label values CMCOHW CMCOHW ;
 label values AGELIV4 AGELIV4 ;
 label values CMUNIONW CMUNIONW ;
 label values ENGAGTHN4 ENGAGTHN4 ;
 label values MARREND4 MARREND4 ;
 label values DIVORFIN_M4 DIVORFIN_M4 ;
 label values DIVORFIN_Y4 DIVORFIN_Y4 ;
 label values CMDIVW CMDIVW ;
 label values ANNULLED_M4 ANNULLED_M4 ;
 label values STOPLIVE_M4 STOPLIVE_M4 ;
 label values STOPLIVE_Y4 STOPLIVE_Y4 ;
 label values CMSTOPW CMSTOPW ;
 label values EXRELATION2 EXRELATION2 ;
 label values FWMAREND_M2 FWMAREND_M2 ;
 label values FWMAREND_Y2 FWMAREND_Y2 ;
 label values CMMARW2 CMMARW2 ;
 label values LIVTOGN5 LIVTOGN5 ;
 label values STRTLIVE_M5 STRTLIVE_M5 ;
 label values STRTLIVE_Y5 STRTLIVE_Y5 ;
 label values CMCOHW2 CMCOHW2 ;
 label values CMUNIONW2 CMUNIONW2 ;
 label values ENGAGTHN5 ENGAGTHN5 ;
 label values MARREND5 MARREND5 ;
 label values DIVORFIN_M5 DIVORFIN_M5 ;
 label values STOPLIVE_M5 STOPLIVE_M5 ;
 label values STOPLIVE_Y5 STOPLIVE_Y5 ;
 label values CMSTOPW2 CMSTOPW2 ;
 label values EXRELATION3 EXRELATION3 ;
 label values LIVTOGN6 LIVTOGN6 ;
 label values ENGAGTHN6 ENGAGTHN6 ;
 label values MARREND6 MARREND6 ;
 label values EXRELATION4 EXRELATION4 ;
 label values LIVTOGN7 LIVTOGN7 ;
 label values ENGAGTHN7 ENGAGTHN7 ;
 label values MARREND7 MARREND7 ;
 label values EXRELATION11 EXRELATION11 ;
 label values STRTLIVE_M14 STRTLIVE_M14 ;
 label values STRTLIVE_Y14 STRTLIVE_Y14 ;
 label values AGELIV14 AGELIV14 ;
 label values ENGAGTHN14 ENGAGTHN14 ;
 label values STOPLIVE_M14 STOPLIVE_M14 ;
 label values STOPLIVE_Y14 STOPLIVE_Y14 ;
 label values CMSTOPFC11 CMSTOPFC11 ;
 label values FWPDOB_M FWPDOB_M ;
 label values FWPDOB_Y FWPDOB_Y ;
 label values CMFWPDOB CMFWPDOB ;
 label values FWPAGE FWPAGE ;
 label values WIF1MULT WIF1MULT ;
 label values WIF1RACE WIF1RACE ;
 label values WIF1HRACE WIF1HRACE ;
 label values WIF1NRACE WIF1NRACE ;
 label values FWPMARBF FWPMARBF ;
 label values FWPDOB_M2 FWPDOB_M2 ;
 label values FWPDOB_Y2 FWPDOB_Y2 ;
 label values CMFWPDOB2 CMFWPDOB2 ;
 label values FWPAGE2 FWPAGE2 ;
 label values FWPMARBF2 FWPMARBF2 ;
 label values FWPDOB_M3 FWPDOB_M3 ;
 label values FWPMARBF3 FWPMARBF3 ;
 label values FWPMARBF4 FWPMARBF4 ;
 label values FWPDOB_M11 FWPDOB_M11 ;
 label values FWPDOB_Y11 FWPDOB_Y11 ;
 label values CMFWPDOB11 CMFWPDOB11 ;
 label values FWPAGE11 FWPAGE11 ;
 label values COH1MULT COH1MULT ;
 label values COH1RACE COH1RACE ;
 label values COH1HRACE COH1HRACE ;
 label values COH1NRACE COH1NRACE ;
 label values FWPMARBF11 FWPMARBF11 ;
 label values FWPBIOKD FWPBIOKD ;
 label values FWPNUMKD FWPNUMKD ;
 label values FWPCHSEX FWPCHSEX ;
 label values FWPCHDOB_M FWPCHDOB_M ;
 label values FWPCHDOB_Y FWPCHDOB_Y ;
 label values CMCHDOB41 CMCHDOB41 ;
 label values FWCHMARB FWCHMARB ;
 label values FWPCHRES FWPCHRES ;
 label values FWPCHLRN FWPCHLRN ;
 label values FWPCHLIV01 FWPCHLIV01 ;
 label values FWPCHLIV02 FWPCHLIV02 ;
 label values FWPCHLIV03 FWPCHLIV03 ;
 label values FWPCHAGE FWPCHAGE ;
 label values FWPCHSIG FWPCHSIG ;
 label values FWPCHCRT FWPCHCRT ;
 label values FWPCHGEN FWPCHGEN ;
 label values FWPCHEVR FWPCHEVR ;
 label values FWPCHFAR FWPCHFAR ;
 label values FWPRWANT FWPRWANT ;
 label values FWPSOON FWPSOON ;
 label values FWPHPYPG FWPHPYPG ;
 label values FWPCHSEX2 FWPCHSEX2 ;
 label values FWPCHDOB_M2 FWPCHDOB_M2 ;
 label values FWPCHDOB_Y2 FWPCHDOB_Y2 ;
 label values CMCHDOB42 CMCHDOB42 ;
 label values MULTBIRT42 MULTBIRT42 ;
 label values FWCHMARB2 FWCHMARB2 ;
 label values FWPCHRES2 FWPCHRES2 ;
 label values FWPCHLRN2 FWPCHLRN2 ;
 label values FWPCHLIV11 FWPCHLIV11 ;
 label values FWPCHLIV12 FWPCHLIV12 ;
 label values FWPCHAGE2 FWPCHAGE2 ;
 label values FWPCHSIG2 FWPCHSIG2 ;
 label values FWPCHCRT2 FWPCHCRT2 ;
 label values FWPCHGEN2 FWPCHGEN2 ;
 label values FWPCHEVR2 FWPCHEVR2 ;
 label values FWPCHFAR2 FWPCHFAR2 ;
 label values FWPRWANT2 FWPRWANT2 ;
 label values FWPSOON2 FWPSOON2 ;
 label values FWPHPYPG2 FWPHPYPG2 ;
 label values FWPCHSEX3 FWPCHSEX3 ;
 label values FWPCHDOB_M3 FWPCHDOB_M3 ;
 label values FWPCHDOB_Y3 FWPCHDOB_Y3 ;
 label values CMCHDOB43 CMCHDOB43 ;
 label values MULTBIRT43 MULTBIRT43 ;
 label values FWPCHRES3 FWPCHRES3 ;
 label values FWPCHLRN3 FWPCHLRN3 ;
 label values FWPCHLIV21 FWPCHLIV21 ;
 label values FWPCHLIV22 FWPCHLIV22 ;
 label values FWPCHAGE3 FWPCHAGE3 ;
 label values FWPCHSIG3 FWPCHSIG3 ;
 label values FWPCHCRT3 FWPCHCRT3 ;
 label values FWPCHGEN3 FWPCHGEN3 ;
 label values FWPCHEVR3 FWPCHEVR3 ;
 label values FWPCHFAR3 FWPCHFAR3 ;
 label values FWPRWANT3 FWPRWANT3 ;
 label values FWPSOON3 FWPSOON3 ;
 label values FWPHPYPG3 FWPHPYPG3 ;
 label values FWPCHSEX4 FWPCHSEX4 ;
 label values FWPCHDOB_M4 FWPCHDOB_M4 ;
 label values FWPCHRES4 FWPCHRES4 ;
 label values FWPCHLRN4 FWPCHLRN4 ;
 label values FWPCHLIV31 FWPCHLIV31 ;
 label values FWPCHAGE4 FWPCHAGE4 ;
 label values FWPCHSIG4 FWPCHSIG4 ;
 label values FWPCHCRT4 FWPCHCRT4 ;
 label values FWPCHGEN4 FWPCHGEN4 ;
 label values FWPCHEVR4 FWPCHEVR4 ;
 label values FWPRWANT4 FWPRWANT4 ;
 label values FWPSOON4 FWPSOON4 ;
 label values FWPHPYPG4 FWPHPYPG4 ;
 label values FWPCHSEX5 FWPCHSEX5 ;
 label values FWPCHLIV41 FWPCHLIV41 ;
 label values FWPRWANT5 FWPRWANT5 ;
 label values FWPBIOKD2 FWPBIOKD2 ;
 label values FWPNUMKD2 FWPNUMKD2 ;
 label values FWPCHSEX11 FWPCHSEX11 ;
 label values FWPCHDOB_M11 FWPCHDOB_M11 ;
 label values FWPCHDOB_Y11 FWPCHDOB_Y11 ;
 label values CMCHDOB51 CMCHDOB51 ;
 label values FWCHMARB11 FWCHMARB11 ;
 label values FWPCHRES11 FWPCHRES11 ;
 label values FWPCHLRN11 FWPCHLRN11 ;
 label values FWPCHLIV101 FWPCHLIV101 ;
 label values FWPCHLIV102 FWPCHLIV102 ;
 label values FWPCHAGE11 FWPCHAGE11 ;
 label values FWPCHSIG11 FWPCHSIG11 ;
 label values FWPCHCRT11 FWPCHCRT11 ;
 label values FWPCHGEN11 FWPCHGEN11 ;
 label values FWPCHEVR11 FWPCHEVR11 ;
 label values FWPCHFAR11 FWPCHFAR11 ;
 label values FWPRWANT11 FWPRWANT11 ;
 label values FWPSOON11 FWPSOON11 ;
 label values FWPHPYPG11 FWPHPYPG11 ;
 label values FWPCHSEX12 FWPCHSEX12 ;
 label values FWPCHDOB_M12 FWPCHDOB_M12 ;
 label values FWPCHDOB_Y12 FWPCHDOB_Y12 ;
 label values CMCHDOB52 CMCHDOB52 ;
 label values FWCHMARB12 FWCHMARB12 ;
 label values FWPCHRES12 FWPCHRES12 ;
 label values FWPCHLRN12 FWPCHLRN12 ;
 label values FWPCHLIV111 FWPCHLIV111 ;
 label values FWPCHLIV112 FWPCHLIV112 ;
 label values FWPCHAGE12 FWPCHAGE12 ;
 label values FWPCHSIG12 FWPCHSIG12 ;
 label values FWPCHCRT12 FWPCHCRT12 ;
 label values FWPCHGEN12 FWPCHGEN12 ;
 label values FWPCHEVR12 FWPCHEVR12 ;
 label values FWPCHFAR12 FWPCHFAR12 ;
 label values FWPRWANT12 FWPRWANT12 ;
 label values FWPSOON12 FWPSOON12 ;
 label values FWPHPYPG12 FWPHPYPG12 ;
 label values FWPCHSEX13 FWPCHSEX13 ;
 label values FWCHMARB13 FWCHMARB13 ;
 label values FWPCHLRN13 FWPCHLRN13 ;
 label values FWPCHLIV121 FWPCHLIV121 ;
 label values FWPCHSIG13 FWPCHSIG13 ;
 label values FWPCHCRT13 FWPCHCRT13 ;
 label values FWPCHGEN13 FWPCHGEN13 ;
 label values FWPCHEVR13 FWPCHEVR13 ;
 label values FWPRWANT13 FWPRWANT13 ;
 label values FWPHPYPG13 FWPHPYPG13 ;
 label values FWPBIOKD3 FWPBIOKD3 ;
 label values FWPNUMKD3 FWPNUMKD3 ;
 label values FWPCHSEX21 FWPCHSEX21 ;
 label values FWPCHRES21 FWPCHRES21 ;
 label values FWPCHLIV201 FWPCHLIV201 ;
 label values FWPCHLIV202 FWPCHLIV202 ;
 label values FWPCHSIG21 FWPCHSIG21 ;
 label values FWPCHCRT21 FWPCHCRT21 ;
 label values FWPCHGEN21 FWPCHGEN21 ;
 label values FWPCHEVR21 FWPCHEVR21 ;
 label values FWPRWANT21 FWPRWANT21 ;
 label values FWPSOON21 FWPSOON21 ;
 label values FWPHPYPG21 FWPHPYPG21 ;
 label values FWPCHSEX22 FWPCHSEX22 ;
 label values FWPCHRES22 FWPCHRES22 ;
 label values FWPCHLIV211 FWPCHLIV211 ;
 label values FWPCHSIG22 FWPCHSIG22 ;
 label values FWPCHCRT22 FWPCHCRT22 ;
 label values FWPCHGEN22 FWPCHGEN22 ;
 label values FWPCHEVR22 FWPCHEVR22 ;
 label values FWPRWANT22 FWPRWANT22 ;
 label values FWPSOON22 FWPSOON22 ;
 label values FWPHPYPG22 FWPHPYPG22 ;
 label values FWPCHSEX23 FWPCHSEX23 ;
 label values FWPCHRES23 FWPCHRES23 ;
 label values FWPCHLIV221 FWPCHLIV221 ;
 label values FWPCHSIG23 FWPCHSIG23 ;
 label values FWPCHCRT23 FWPCHCRT23 ;
 label values FWPCHGEN23 FWPCHGEN23 ;
 label values FWPRWANT23 FWPRWANT23 ;
 label values FWPSOON23 FWPSOON23 ;
 label values FWPHPYPG23 FWPHPYPG23 ;
 label values FWPBIOKD4 FWPBIOKD4 ;
 label values FWPBIOKD11 FWPBIOKD11 ;
 label values FWPNUMKD11 FWPNUMKD11 ;
 label values FWPCHSEX101 FWPCHSEX101 ;
 label values FWPCHDOB_M101 FWPCHDOB_M101 ;
 label values FWPCHDOB_Y101 FWPCHDOB_Y101 ;
 label values CMCHDOB141 CMCHDOB141 ;
 label values FWPCHRES101 FWPCHRES101 ;
 label values FWPCHLRN101 FWPCHLRN101 ;
 label values FWPCHLIV1001 FWPCHLIV1001 ;
 label values FWPCHLIV1002 FWPCHLIV1002 ;
 label values FWPCHLIV1003 FWPCHLIV1003 ;
 label values FWPCHAGE101 FWPCHAGE101 ;
 label values FWPCHSIG101 FWPCHSIG101 ;
 label values FWPCHCRT101 FWPCHCRT101 ;
 label values FWPCHGEN101 FWPCHGEN101 ;
 label values FWPCHEVR101 FWPCHEVR101 ;
 label values FWPCHFAR101 FWPCHFAR101 ;
 label values FWPRWANT101 FWPRWANT101 ;
 label values FWPSOON101 FWPSOON101 ;
 label values FWPHPYPG101 FWPHPYPG101 ;
 label values FWPCHSEX102 FWPCHSEX102 ;
 label values FWPCHDOB_M102 FWPCHDOB_M102 ;
 label values FWPCHDOB_Y102 FWPCHDOB_Y102 ;
 label values CMCHDOB142 CMCHDOB142 ;
 label values MULTBIRT142 MULTBIRT142 ;
 label values FWPCHRES102 FWPCHRES102 ;
 label values FWPCHLRN102 FWPCHLRN102 ;
 label values FWPCHLIV1011 FWPCHLIV1011 ;
 label values FWPCHLIV1012 FWPCHLIV1012 ;
 label values FWPCHAGE102 FWPCHAGE102 ;
 label values FWPCHSIG102 FWPCHSIG102 ;
 label values FWPCHCRT102 FWPCHCRT102 ;
 label values FWPCHGEN102 FWPCHGEN102 ;
 label values FWPCHEVR102 FWPCHEVR102 ;
 label values FWPCHFAR102 FWPCHFAR102 ;
 label values FWPRWANT102 FWPRWANT102 ;
 label values FWPSOON102 FWPSOON102 ;
 label values FWPHPYPG102 FWPHPYPG102 ;
 label values FWPCHSEX103 FWPCHSEX103 ;
 label values FWPCHDOB_M103 FWPCHDOB_M103 ;
 label values FWPCHDOB_Y103 FWPCHDOB_Y103 ;
 label values CMCHDOB143 CMCHDOB143 ;
 label values FWPCHRES103 FWPCHRES103 ;
 label values FWPCHLRN103 FWPCHLRN103 ;
 label values FWPCHLIV1021 FWPCHLIV1021 ;
 label values FWPCHLIV1022 FWPCHLIV1022 ;
 label values FWPCHAGE103 FWPCHAGE103 ;
 label values FWPCHSIG103 FWPCHSIG103 ;
 label values FWPCHCRT103 FWPCHCRT103 ;
 label values FWPCHGEN103 FWPCHGEN103 ;
 label values FWPCHEVR103 FWPCHEVR103 ;
 label values FWPRWANT103 FWPRWANT103 ;
 label values FWPSOON103 FWPSOON103 ;
 label values FWPHPYPG103 FWPHPYPG103 ;
 label values FWPCHSEX104 FWPCHSEX104 ;
 label values FWPCHRES104 FWPCHRES104 ;
 label values FWPCHLRN104 FWPCHLRN104 ;
 label values FWPCHLIV1031 FWPCHLIV1031 ;
 label values FWPCHSIG104 FWPCHSIG104 ;
 label values FWPCHCRT104 FWPCHCRT104 ;
 label values FWPCHGEN104 FWPCHGEN104 ;
 label values FWPCHEVR104 FWPCHEVR104 ;
 label values FWPRWANT104 FWPRWANT104 ;
 label values FWPHPYPG104 FWPHPYPG104 ;
 label values FWPCHSEX105 FWPCHSEX105 ;
 label values FWPCHRES105 FWPCHRES105 ;
 label values FWPCHLRN105 FWPCHLRN105 ;
 label values FWPCHLIV1041 FWPCHLIV1041 ;
 label values FWPCHSIG105 FWPCHSIG105 ;
 label values FWPCHCRT105 FWPCHCRT105 ;
 label values FWPCHGEN105 FWPCHGEN105 ;
 label values FWPCHEVR105 FWPCHEVR105 ;
 label values FWPRWANT105 FWPRWANT105 ;
 label values FWPHPYPG105 FWPHPYPG105 ;
 label values FWPCHSEX106 FWPCHSEX106 ;
 label values FWPCHRES106 FWPCHRES106 ;
 label values FWPCHLIV1051 FWPCHLIV1051 ;
 label values FWPCHSIG106 FWPCHSIG106 ;
 label values FWPCHCRT106 FWPCHCRT106 ;
 label values FWPCHGEN106 FWPCHGEN106 ;
 label values FWPCHEVR106 FWPCHEVR106 ;
 label values FWPRWANT106 FWPRWANT106 ;
 label values FWPSOON106 FWPSOON106 ;
 label values FWPHPYPG106 FWPHPYPG106 ;
 label values E_OKAKIDS E_OKAKIDS ;
 label values FWPOTKID FWPOTKID ;
 label values FWPOKWTH FWPOKWTH ;
 label values FWPOKSEX FWPOKSEX ;
 label values FWPOKAD FWPOKAD ;
 label values FWPOKLIV1 FWPOKLIV1 ;
 label values FWPOKFAR FWPOKFAR ;
 label values FWPOKAGE FWPOKAGE ;
 label values FWPOKSEX2 FWPOKSEX2 ;
 label values FWPOKAD2 FWPOKAD2 ;
 label values FWPOKLIV9 FWPOKLIV9 ;
 label values FWPOKLIV10 FWPOKLIV10 ;
 label values FWPOKAGE2 FWPOKAGE2 ;
 label values FWPOKSEX3 FWPOKSEX3 ;
 label values FWPOKAD3 FWPOKAD3 ;
 label values FWPOKLIV17 FWPOKLIV17 ;
 label values FWPOKAGE3 FWPOKAGE3 ;
 label values FWPOKSEX4 FWPOKSEX4 ;
 label values FWPOKAD4 FWPOKAD4 ;
 label values FWPOKSEX5 FWPOKSEX5 ;
 label values FWPOKAD5 FWPOKAD5 ;
 label values FWPOKSEX6 FWPOKSEX6 ;
 label values FWPOKAD6 FWPOKAD6 ;
 label values FWPOKSEX7 FWPOKSEX7 ;
 label values FWPOKAD7 FWPOKAD7 ;
 label values E_OKAKIDS2 E_OKAKIDS2 ;
 label values FWPOTKID2 FWPOTKID2 ;
 label values FWPOKWTH2 FWPOKWTH2 ;
 label values FWPOKSEX11 FWPOKSEX11 ;
 label values FWPOKAD11 FWPOKAD11 ;
 label values FWPOKSEX12 FWPOKSEX12 ;
 label values FWPOKAD12 FWPOKAD12 ;
 label values FWPOKSEX13 FWPOKSEX13 ;
 label values FWPOKAD13 FWPOKAD13 ;
 label values FWPOKSEX14 FWPOKSEX14 ;
 label values FWPOKAD14 FWPOKAD14 ;
 label values E_OKAKIDS3 E_OKAKIDS3 ;
 label values FWPOTKID3 FWPOTKID3 ;
 label values FWPOKWTH3 FWPOKWTH3 ;
 label values FWPOKSEX21 FWPOKSEX21 ;
 label values FWPOKAD21 FWPOKAD21 ;
 label values FWPOKSEX22 FWPOKSEX22 ;
 label values FWPOKAD22 FWPOKAD22 ;
 label values FWPOKSEX23 FWPOKSEX23 ;
 label values FWPOKAD23 FWPOKAD23 ;
 label values E_OKAKIDS4 E_OKAKIDS4 ;
 label values FWPOTKID4 FWPOTKID4 ;
 label values FWPOKWTH4 FWPOKWTH4 ;
 label values FWPOKSEX31 FWPOKSEX31 ;
 label values FWPOKAD31 FWPOKAD31 ;
 label values FWPOKAGE31 FWPOKAGE31 ;
 label values E_OKAKIDS11 E_OKAKIDS11 ;
 label values FWPOTKID11 FWPOTKID11 ;
 label values FWPOKWTH11 FWPOKWTH11 ;
 label values FWPOKSEX101 FWPOKSEX101 ;
 label values FWPOKAD101 FWPOKAD101 ;
 label values FWPOKLIV801 FWPOKLIV801 ;
 label values FWPOKAGE101 FWPOKAGE101 ;
 label values FWPOKSEX102 FWPOKSEX102 ;
 label values FWPOKAD102 FWPOKAD102 ;
 label values FWPOKLIV809 FWPOKLIV809 ;
 label values FWPOKAGE102 FWPOKAGE102 ;
 label values FWPOKSEX103 FWPOKSEX103 ;
 label values FWPOKAD103 FWPOKAD103 ;
 label values FWPOKAGE103 FWPOKAGE103 ;
 label values FWPOKSEX104 FWPOKSEX104 ;
 label values FWPOKAD104 FWPOKAD104 ;
 label values FWPOKSEX105 FWPOKSEX105 ;
 label values FWPOKAD105 FWPOKAD105 ;
 label values FWPOKSEX106 FWPOKSEX106 ;
 label values FWPOKAD106 FWPOKAD106 ;
 label values FWPOKSEX107 FWPOKSEX107 ;
 label values FWPOKAD107 FWPOKAD107 ;
 label values FWPOKSEX108 FWPOKSEX108 ;
 label values FWPOKAD108 FWPOKAD108 ;
 label values FWPOKSEX109 FWPOKSEX109 ;
 label values FWPOKAD109 FWPOKAD109 ;
 label values FWPOKSEX110 FWPOKSEX110 ;
 label values FWPOKAD110 FWPOKAD110 ;
 label values E_NBAKIDS E_NBAKIDS ;
 label values FWPNBEVR FWPNBEVR ;
 label values FWPNBREL FWPNBREL ;
 label values FWPNBFOS FWPNBFOS ;
 label values FWPNBSEX FWPNBSEX ;
 label values FWPNBAD FWPNBAD ;
 label values FWPNBLIV1 FWPNBLIV1 ;
 label values FWPNBREL2 FWPNBREL2 ;
 label values FWPNBFOS2 FWPNBFOS2 ;
 label values FWPNBSEX2 FWPNBSEX2 ;
 label values FWPNBAD2 FWPNBAD2 ;
 label values FWPNBREL3 FWPNBREL3 ;
 label values FWPNBFOS3 FWPNBFOS3 ;
 label values FWPNBSEX3 FWPNBSEX3 ;
 label values FWPNBAD3 FWPNBAD3 ;
 label values E_NBAKIDS2 E_NBAKIDS2 ;
 label values FWPNBEVR2 FWPNBEVR2 ;
 label values FWPNBREL11 FWPNBREL11 ;
 label values FWPNBFOS11 FWPNBFOS11 ;
 label values FWPNBSEX11 FWPNBSEX11 ;
 label values FWPNBAD11 FWPNBAD11 ;
 label values FWPNBREL12 FWPNBREL12 ;
 label values FWPNBFOS12 FWPNBFOS12 ;
 label values FWPNBSEX12 FWPNBSEX12 ;
 label values FWPNBAD12 FWPNBAD12 ;
 label values E_NBAKIDS3 E_NBAKIDS3 ;
 label values FWPNBEVR3 FWPNBEVR3 ;
 label values E_NBAKIDS4 E_NBAKIDS4 ;
 label values FWPNBEVR4 FWPNBEVR4 ;
 label values E_NBAKIDS11 E_NBAKIDS11 ;
 label values FWPNBEVR11 FWPNBEVR11 ;
 label values FWPNBREL101 FWPNBREL101 ;
 label values FWPNBFOS101 FWPNBFOS101 ;
 label values FWPNBSEX101 FWPNBSEX101 ;
 label values FWPNBAD101 FWPNBAD101 ;
 label values FWPNBLIV801 FWPNBLIV801 ;
 label values FWPNBAGE101 FWPNBAGE101 ;
 label values FWPNBREL102 FWPNBREL102 ;
 label values FWPNBFOS102 FWPNBFOS102 ;
 label values FWPNBSEX102 FWPNBSEX102 ;
 label values FWPNBAD102 FWPNBAD102 ;
 label values OTBCHIL OTBCHIL ;
 label values OTBPROBE OTBPROBE ;
 label values OTBCHILN OTBCHILN ;
 label values OTBSAME OTBSAME ;
 label values OBCSEXX OBCSEXX ;
 label values OBCDOB_M OBCDOB_M ;
 label values OBCDOB_Y OBCDOB_Y ;
 label values CMCHDOB151 CMCHDOB151 ;
 label values OBCMAGEX OBCMAGEX ;
 label values OBCMLIV OBCMLIV ;
 label values OBCKNOWX OBCKNOWX ;
 label values OBCLIVEX01 OBCLIVEX01 ;
 label values OBCLIVEX02 OBCLIVEX02 ;
 label values OBCLIVEX03 OBCLIVEX03 ;
 label values OBCAGE OBCAGE ;
 label values OBCCHSIG OBCCHSIG ;
 label values OBCCHCRT OBCCHCRT ;
 label values OBCCHGEN OBCCHGEN ;
 label values OBCEVER OBCEVER ;
 label values OBCFAR OBCFAR ;
 label values OBCRWANX OBCRWANX ;
 label values OBCSOONX OBCSOONX ;
 label values OBCHPYX OBCHPYX ;
 label values OBCSEXX2 OBCSEXX2 ;
 label values OBCDOB_M2 OBCDOB_M2 ;
 label values OBCDOB_Y2 OBCDOB_Y2 ;
 label values CMCHDOB152 CMCHDOB152 ;
 label values MULTBIRT152 MULTBIRT152 ;
 label values OBCMAGEX2 OBCMAGEX2 ;
 label values OBCMLIV2 OBCMLIV2 ;
 label values OBCKNOWX2 OBCKNOWX2 ;
 label values OBCLIVEX11 OBCLIVEX11 ;
 label values OBCLIVEX12 OBCLIVEX12 ;
 label values OBCLIVEX13 OBCLIVEX13 ;
 label values OBCAGE2 OBCAGE2 ;
 label values OBCCHSIG2 OBCCHSIG2 ;
 label values OBCCHCRT2 OBCCHCRT2 ;
 label values OBCCHGEN2 OBCCHGEN2 ;
 label values OBCEVER2 OBCEVER2 ;
 label values OBCFAR2 OBCFAR2 ;
 label values OBCRWANX2 OBCRWANX2 ;
 label values OBCSOONX2 OBCSOONX2 ;
 label values OBCHPYX2 OBCHPYX2 ;
 label values OBCSEXX3 OBCSEXX3 ;
 label values OBCDOB_M3 OBCDOB_M3 ;
 label values OBCDOB_Y3 OBCDOB_Y3 ;
 label values CMCHDOB153 CMCHDOB153 ;
 label values MULTBIRT153 MULTBIRT153 ;
 label values OBCMAGEX3 OBCMAGEX3 ;
 label values OBCMLIV3 OBCMLIV3 ;
 label values OBCKNOWX3 OBCKNOWX3 ;
 label values OBCLIVEX21 OBCLIVEX21 ;
 label values OBCLIVEX22 OBCLIVEX22 ;
 label values OBCLIVEX23 OBCLIVEX23 ;
 label values OBCLIVEX24 OBCLIVEX24 ;
 label values OBCAGE3 OBCAGE3 ;
 label values OBCCHSIG3 OBCCHSIG3 ;
 label values OBCCHCRT3 OBCCHCRT3 ;
 label values OBCCHGEN3 OBCCHGEN3 ;
 label values OBCEVER3 OBCEVER3 ;
 label values OBCFAR3 OBCFAR3 ;
 label values OBCRWANX3 OBCRWANX3 ;
 label values OBCSOONX3 OBCSOONX3 ;
 label values OBCHPYX3 OBCHPYX3 ;
 label values OBCSEXX4 OBCSEXX4 ;
 label values OBCDOB_M4 OBCDOB_M4 ;
 label values OBCDOB_Y4 OBCDOB_Y4 ;
 label values CMCHDOB154 CMCHDOB154 ;
 label values OBCMLIV4 OBCMLIV4 ;
 label values OBCKNOWX4 OBCKNOWX4 ;
 label values OBCLIVEX31 OBCLIVEX31 ;
 label values OBCLIVEX32 OBCLIVEX32 ;
 label values OBCAGE4 OBCAGE4 ;
 label values OBCCHSIG4 OBCCHSIG4 ;
 label values OBCCHCRT4 OBCCHCRT4 ;
 label values OBCCHGEN4 OBCCHGEN4 ;
 label values OBCEVER4 OBCEVER4 ;
 label values OBCRWANX4 OBCRWANX4 ;
 label values OBCSOONX4 OBCSOONX4 ;
 label values OBCHPYX4 OBCHPYX4 ;
 label values OBCSEXX5 OBCSEXX5 ;
 label values OBCDOB_M5 OBCDOB_M5 ;
 label values OBCDOB_Y5 OBCDOB_Y5 ;
 label values CMCHDOB155 CMCHDOB155 ;
 label values OBCMLIV5 OBCMLIV5 ;
 label values OBCKNOWX5 OBCKNOWX5 ;
 label values OBCLIVEX41 OBCLIVEX41 ;
 label values OBCAGE5 OBCAGE5 ;
 label values OBCCHSIG5 OBCCHSIG5 ;
 label values OBCCHCRT5 OBCCHCRT5 ;
 label values OBCCHGEN5 OBCCHGEN5 ;
 label values OBCEVER5 OBCEVER5 ;
 label values OBCRWANX5 OBCRWANX5 ;
 label values OBCSOONX5 OBCSOONX5 ;
 label values OBCHPYX5 OBCHPYX5 ;
 label values OBCSEXX6 OBCSEXX6 ;
 label values OBCDOB_M6 OBCDOB_M6 ;
 label values OBCDOB_Y6 OBCDOB_Y6 ;
 label values CMCHDOB156 CMCHDOB156 ;
 label values OBCMAGEX6 OBCMAGEX6 ;
 label values OBCMLIV6 OBCMLIV6 ;
 label values OBCKNOWX6 OBCKNOWX6 ;
 label values OBCLIVEX51 OBCLIVEX51 ;
 label values OBCAGE6 OBCAGE6 ;
 label values OBCCHSIG6 OBCCHSIG6 ;
 label values OBCCHCRT6 OBCCHCRT6 ;
 label values OBCCHGEN6 OBCCHGEN6 ;
 label values OBCEVER6 OBCEVER6 ;
 label values OBCSEXX7 OBCSEXX7 ;
 label values OBCDOB_M7 OBCDOB_M7 ;
 label values OBCMLIV7 OBCMLIV7 ;
 label values OBCLIVEX61 OBCLIVEX61 ;
 label values OBCAGE7 OBCAGE7 ;
 label values OBCCHSIG7 OBCCHSIG7 ;
 label values OBCCHCRT7 OBCCHCRT7 ;
 label values OBCCHGEN7 OBCCHGEN7 ;
 label values OBCEVER7 OBCEVER7 ;
 label values OBCRWANX7 OBCRWANX7 ;
 label values OBCSOONX7 OBCSOONX7 ;
 label values OBCHPYX7 OBCHPYX7 ;
 label values OBCSEXX8 OBCSEXX8 ;
 label values OBCMLIV8 OBCMLIV8 ;
 label values OBCKNOWX8 OBCKNOWX8 ;
 label values OBCLIVEX71 OBCLIVEX71 ;
 label values OBCCHSIG8 OBCCHSIG8 ;
 label values OBCCHCRT8 OBCCHCRT8 ;
 label values OBCCHGEN8 OBCCHGEN8 ;
 label values OBCEVER8 OBCEVER8 ;
 label values OBCRWANX8 OBCRWANX8 ;
 label values OBCHPYX8 OBCHPYX8 ;
 label values F_AKIDS F_AKIDS ;
 label values OTACHIL OTACHIL ;
 label values OTACHILN OTACHILN ;
 label values OTNBREL OTNBREL ;
 label values OTNBFOS OTNBFOS ;
 label values OTNBSEX OTNBSEX ;
 label values OTNBAD OTNBAD ;
 label values OTNBLIV1 OTNBLIV1 ;
 label values OTNBAGE OTNBAGE ;
 label values OTNBREL2 OTNBREL2 ;
 label values OTNBFOS2 OTNBFOS2 ;
 label values OTNBSEX2 OTNBSEX2 ;
 label values OTNBAD2 OTNBAD2 ;
 label values OTNBLIV9 OTNBLIV9 ;
 label values OTNBAGE2 OTNBAGE2 ;
 label values OTNBREL3 OTNBREL3 ;
 label values OTNBFOS3 OTNBFOS3 ;
 label values OTNBSEX3 OTNBSEX3 ;
 label values OTNBAD3 OTNBAD3 ;
 label values OTNBLIV17 OTNBLIV17 ;
 label values OTNBAGE3 OTNBAGE3 ;
 label values OTNBREL4 OTNBREL4 ;
 label values OTNBFOS4 OTNBFOS4 ;
 label values OTNBSEX4 OTNBSEX4 ;
 label values OTNBAD4 OTNBAD4 ;
 label values OTNBAGE4 OTNBAGE4 ;
 label values OTNBREL5 OTNBREL5 ;
 label values OTNBFOS5 OTNBFOS5 ;
 label values OTNBSEX5 OTNBSEX5 ;
 label values OTNBAD5 OTNBAD5 ;
 label values OTNBREL6 OTNBREL6 ;
 label values OTNBFOS6 OTNBFOS6 ;
 label values OTNBSEX6 OTNBSEX6 ;
 label values OTNBAD6 OTNBAD6 ;
 label values OTNBREL7 OTNBREL7 ;
 label values OTNBFOS7 OTNBFOS7 ;
 label values OTNBSEX7 OTNBSEX7 ;
 label values OTNBAD7 OTNBAD7 ;
 label values OTNBREL8 OTNBREL8 ;
 label values OTNBFOS8 OTNBFOS8 ;
 label values OTNBSEX8 OTNBSEX8 ;
 label values OTNBAD8 OTNBAD8 ;
 label values OTNBREL9 OTNBREL9 ;
 label values OTNBFOS9 OTNBFOS9 ;
 label values OTNBSEX9 OTNBSEX9 ;
 label values OTNBAD9 OTNBAD9 ;
 label values OTNBREL10 OTNBREL10 ;
 label values OTNBFOS10 OTNBFOS10 ;
 label values OTNBSEX10 OTNBSEX10 ;
 label values OTNBAD10 OTNBAD10 ;
 label values OTPREG OTPREG ;
 label values OTPRGPRB OTPRGPRB ;
 label values OTPRGN OTPRGN ;
 label values OTPRGEND OTPRGEND ;
 label values OTMSN OTMSN ;
 label values OTSTN OTSTN ;
 label values OTABN OTABN ;
 label values TOTPRG TOTPRG ;
 label values OTPREGS OTPREGS ;
 label values TOTPREGS_C TOTPREGS_C ;
 label values TOTPREGS_R TOTPREGS_R ;
 label values BIOKIDS BIOKIDS ;
 label values ADOPKIDS ADOPKIDS ;
 label values ANYKIDS ANYKIDS ;
 label values BIOADOPT BIOADOPT ;
 label values PREGSNOW PREGSNOW ;
 label values NUMLIFE NUMLIFE ;
 label values BIODOB1 BIODOB1 ;
 label values BIODOB2 BIODOB2 ;
 label values BIODOB3 BIODOB3 ;
 label values BIODOB4 BIODOB4 ;
 label values BIODOB5 BIODOB5 ;
 label values BIODOB6 BIODOB6 ;
 label values BIODOB7 BIODOB7 ;
 label values BIODOB8 BIODOB8 ;
 label values BIODOB9 BIODOB9 ;
 label values BIOSEX1 BIOSEX1 ;
 label values BIOSEX2 BIOSEX2 ;
 label values BIOSEX3 BIOSEX3 ;
 label values BIOSEX4 BIOSEX4 ;
 label values BIOSEX5 BIOSEX5 ;
 label values BIOSEX6 BIOSEX6 ;
 label values BIOSEX7 BIOSEX7 ;
 label values BIOSEX8 BIOSEX8 ;
 label values BIOSEX9 BIOSEX9 ;
 label values BIOAGE1 BIOAGE1 ;
 label values BIOAGE2 BIOAGE2 ;
 label values BIOAGE3 BIOAGE3 ;
 label values BIOAGE4 BIOAGE4 ;
 label values BIOAGE5 BIOAGE5 ;
 label values BIOAGE6 BIOAGE6 ;
 label values BIOAGE7 BIOAGE7 ;
 label values BIOAGE8 BIOAGE8 ;
 label values BIOAGE9 BIOAGE9 ;
 label values BIOAGEGP1 BIOAGEGP1 ;
 label values BIOAGEGP2 BIOAGEGP2 ;
 label values BIOAGEGP3 BIOAGEGP3 ;
 label values BIOAGEGP4 BIOAGEGP4 ;
 label values BIOAGEGP5 BIOAGEGP5 ;
 label values BIOAGEGP6 BIOAGEGP6 ;
 label values BIOAGEGP7 BIOAGEGP7 ;
 label values BIOAGEGP8 BIOAGEGP8 ;
 label values BIOAGEGP9 BIOAGEGP9 ;
 label values BIOHH1 BIOHH1 ;
 label values BIOHH2 BIOHH2 ;
 label values BIOHH3 BIOHH3 ;
 label values BIOHH4 BIOHH4 ;
 label values BIOHH5 BIOHH5 ;
 label values BIOHH6 BIOHH6 ;
 label values BIOHH7 BIOHH7 ;
 label values BIOHH8 BIOHH8 ;
 label values BIOHH9 BIOHH9 ;
 label values BIOMOM1 BIOMOM1 ;
 label values BIOMOM2 BIOMOM2 ;
 label values BIOMOM3 BIOMOM3 ;
 label values BIOMOM4 BIOMOM4 ;
 label values BIOMOM5 BIOMOM5 ;
 label values BIOMOM6 BIOMOM6 ;
 label values BIOMOM7 BIOMOM7 ;
 label values BIOMOM8 BIOMOM8 ;
 label values BIOMOM9 BIOMOM9 ;
 label values BIOMAR1 BIOMAR1 ;
 label values BIOMAR2 BIOMAR2 ;
 label values BIOMAR3 BIOMAR3 ;
 label values BIOMAR4 BIOMAR4 ;
 label values BIOMAR5 BIOMAR5 ;
 label values BIOMAR6 BIOMAR6 ;
 label values BIOMAR7 BIOMAR7 ;
 label values BIOMAR8 BIOMAR8 ;
 label values BIOMAR9 BIOMAR9 ;
 label values BIOCOHB1 BIOCOHB1 ;
 label values BIOCOHB2 BIOCOHB2 ;
 label values BIOCOHB3 BIOCOHB3 ;
 label values BIOCOHB4 BIOCOHB4 ;
 label values BIOCOHB5 BIOCOHB5 ;
 label values BIOCOHB6 BIOCOHB6 ;
 label values BIOCOHB7 BIOCOHB7 ;
 label values BIOCOHB8 BIOCOHB8 ;
 label values BIOCOHB9 BIOCOHB9 ;
 label values BIOLRNPG1 BIOLRNPG1 ;
 label values BIOLRNPG2 BIOLRNPG2 ;
 label values BIOLRNPG3 BIOLRNPG3 ;
 label values BIOLRNPG4 BIOLRNPG4 ;
 label values BIOLRNPG5 BIOLRNPG5 ;
 label values BIOLRNPG6 BIOLRNPG6 ;
 label values BIOLRNPG7 BIOLRNPG7 ;
 label values BIOLRNPG8 BIOLRNPG8 ;
 label values BIOLRNPG9 BIOLRNPG9 ;
 label values BIOLIVNG11 BIOLIVNG11 ;
 label values BIOLIVNG12 BIOLIVNG12 ;
 label values BIOLIVNG13 BIOLIVNG13 ;
 label values BIOLIVNG21 BIOLIVNG21 ;
 label values BIOLIVNG22 BIOLIVNG22 ;
 label values BIOLIVNG23 BIOLIVNG23 ;
 label values BIOLIVNG31 BIOLIVNG31 ;
 label values BIOLIVNG32 BIOLIVNG32 ;
 label values BIOLIVNG33 BIOLIVNG33 ;
 label values BIOLIVNG41 BIOLIVNG41 ;
 label values BIOLIVNG42 BIOLIVNG42 ;
 label values BIOLIVNG43 BIOLIVNG43 ;
 label values BIOLIVNG44 BIOLIVNG44 ;
 label values BIOLIVNG51 BIOLIVNG51 ;
 label values BIOLIVNG52 BIOLIVNG52 ;
 label values BIOLIVNG61 BIOLIVNG61 ;
 label values BIOLIVNG71 BIOLIVNG71 ;
 label values BIOLIVNG81 BIOLIVNG81 ;
 label values BIOLIVNG91 BIOLIVNG91 ;
 label values BIOCHSIG1 BIOCHSIG1 ;
 label values BIOCHSIG2 BIOCHSIG2 ;
 label values BIOCHSIG3 BIOCHSIG3 ;
 label values BIOCHSIG4 BIOCHSIG4 ;
 label values BIOCHSIG5 BIOCHSIG5 ;
 label values BIOCHSIG6 BIOCHSIG6 ;
 label values BIOCHSIG7 BIOCHSIG7 ;
 label values BIOCHSIG8 BIOCHSIG8 ;
 label values BIOCHSIG9 BIOCHSIG9 ;
 label values BIOCHCRT1 BIOCHCRT1 ;
 label values BIOCHCRT2 BIOCHCRT2 ;
 label values BIOCHCRT3 BIOCHCRT3 ;
 label values BIOCHCRT4 BIOCHCRT4 ;
 label values BIOCHCRT5 BIOCHCRT5 ;
 label values BIOCHCRT6 BIOCHCRT6 ;
 label values BIOCHCRT7 BIOCHCRT7 ;
 label values BIOCHCRT8 BIOCHCRT8 ;
 label values BIOCHCRT9 BIOCHCRT9 ;
 label values BIOCHGEN1 BIOCHGEN1 ;
 label values BIOCHGEN2 BIOCHGEN2 ;
 label values BIOCHGEN3 BIOCHGEN3 ;
 label values BIOCHGEN4 BIOCHGEN4 ;
 label values BIOCHGEN5 BIOCHGEN5 ;
 label values BIOCHGEN6 BIOCHGEN6 ;
 label values BIOCHGEN7 BIOCHGEN7 ;
 label values BIOCHGEN8 BIOCHGEN8 ;
 label values BIOCHGEN9 BIOCHGEN9 ;
 label values BIOLVEVR1 BIOLVEVR1 ;
 label values BIOLVEVR2 BIOLVEVR2 ;
 label values BIOLVEVR3 BIOLVEVR3 ;
 label values BIOLVEVR4 BIOLVEVR4 ;
 label values BIOLVEVR5 BIOLVEVR5 ;
 label values BIOLVEVR6 BIOLVEVR6 ;
 label values BIOLVEVR7 BIOLVEVR7 ;
 label values BIOLVEVR8 BIOLVEVR8 ;
 label values BIOLVEVR9 BIOLVEVR9 ;
 label values BIOHWFAR1 BIOHWFAR1 ;
 label values BIOHWFAR2 BIOHWFAR2 ;
 label values BIOHWFAR3 BIOHWFAR3 ;
 label values BIOHWFAR4 BIOHWFAR4 ;
 label values BIOHWFAR5 BIOHWFAR5 ;
 label values BIOHWFAR6 BIOHWFAR6 ;
 label values BIOWANT1 BIOWANT1 ;
 label values BIOWANT2 BIOWANT2 ;
 label values BIOWANT3 BIOWANT3 ;
 label values BIOWANT4 BIOWANT4 ;
 label values BIOWANT5 BIOWANT5 ;
 label values BIOWANT6 BIOWANT6 ;
 label values BIOWANT7 BIOWANT7 ;
 label values BIOWANT8 BIOWANT8 ;
 label values BIOWANT9 BIOWANT9 ;
 label values BIOHSOON1 BIOHSOON1 ;
 label values BIOHSOON2 BIOHSOON2 ;
 label values BIOHSOON3 BIOHSOON3 ;
 label values BIOHSOON4 BIOHSOON4 ;
 label values BIOHSOON5 BIOHSOON5 ;
 label values BIOHSOON6 BIOHSOON6 ;
 label values BIOHSOON7 BIOHSOON7 ;
 label values BIOHSOON8 BIOHSOON8 ;
 label values BIOHSOON9 BIOHSOON9 ;
 label values BIOHPYPG1 BIOHPYPG1 ;
 label values BIOHPYPG2 BIOHPYPG2 ;
 label values BIOHPYPG3 BIOHPYPG3 ;
 label values BIOHPYPG4 BIOHPYPG4 ;
 label values BIOHPYPG5 BIOHPYPG5 ;
 label values BIOHPYPG6 BIOHPYPG6 ;
 label values BIOHPYPG7 BIOHPYPG7 ;
 label values BIOHPYPG8 BIOHPYPG8 ;
 label values BIOHPYPG9 BIOHPYPG9 ;
 label values CRALL CRALL ;
 label values CRALLU5 CRALLU5 ;
 label values CRALL518 CRALL518 ;
 label values CRMALU5 CRMALU5 ;
 label values CRMAL518 CRMAL518 ;
 label values CRFEMU5 CRFEMU5 ;
 label values CRFEM518 CRFEM518 ;
 label values NCALL NCALL ;
 label values NCALLU5 NCALLU5 ;
 label values NCALL518 NCALL518 ;
 label values NCMALU5 NCMALU5 ;
 label values NCMAL518 NCMAL518 ;
 label values NCFEMU5 NCFEMU5 ;
 label values NCFEM518 NCFEM518 ;
 label values RFAGE RFAGE ;
 label values RFSEX RFSEX ;
 label values ROUTG04 ROUTG04 ;
 label values RMEAL04 RMEAL04 ;
 label values RERRAND04 RERRAND04 ;
 label values RPLAY04 RPLAY04 ;
 label values RREAD04 RREAD04 ;
 label values RAFFECT04 RAFFECT04 ;
 label values RPRAISE04 RPRAISE04 ;
 label values RFEED04 RFEED04 ;
 label values RBATH04 RBATH04 ;
 label values RDIAPER04 RDIAPER04 ;
 label values RBED04 RBED04 ;
 label values RAPPT04 RAPPT04 ;
 label values RDISC04 RDISC04 ;
 label values ROUTG518 ROUTG518 ;
 label values RMEAL518 RMEAL518 ;
 label values RERRAND518 RERRAND518 ;
 label values RAFFECT518 RAFFECT518 ;
 label values RPRAISE518 RPRAISE518 ;
 label values RTAKE518 RTAKE518 ;
 label values RAPPT518 RAPPT518 ;
 label values RHELP518 RHELP518 ;
 label values RDISC518 RDISC518 ;
 label values RCLFR518 RCLFR518 ;
 label values RDO518 RDO518 ;
 label values NRFAGE NRFAGE ;
 label values NRFSEX NRFSEX ;
 label values NRVISIT04 NRVISIT04 ;
 label values NRSATVIS04 NRSATVIS04 ;
 label values NROUTG04 NROUTG04 ;
 label values NRMEAL04 NRMEAL04 ;
 label values NRERRAND04 NRERRAND04 ;
 label values NROVRNT04 NROVRNT04 ;
 label values NRPLAY04 NRPLAY04 ;
 label values NRREAD04 NRREAD04 ;
 label values NRAFFECT04 NRAFFECT04 ;
 label values NRPRAISE04 NRPRAISE04 ;
 label values NRFEED04 NRFEED04 ;
 label values NRBATH04 NRBATH04 ;
 label values NRDIAPER04 NRDIAPER04 ;
 label values NRBED04 NRBED04 ;
 label values NRAPPT04 NRAPPT04 ;
 label values NRDISC04 NRDISC04 ;
 label values NRVISIT518 NRVISIT518 ;
 label values NRSATVIS518 NRSATVIS518 ;
 label values NROUTG518 NROUTG518 ;
 label values NRMEAL518 NRMEAL518 ;
 label values NRERRAND518 NRERRAND518 ;
 label values NROVRNT518 NROVRNT518 ;
 label values NRAFFECT518 NRAFFECT518 ;
 label values NRPRAISE518 NRPRAISE518 ;
 label values NRTAKE518 NRTAKE518 ;
 label values NRAPPT518 NRAPPT518 ;
 label values NRHELP518 NRHELP518 ;
 label values NRDISC518 NRDISC518 ;
 label values NRCLFR518 NRCLFR518 ;
 label values NRDO518 NRDO518 ;
 label values NRMONEY NRMONEY ;
 label values NREG NREG ;
 label values NRAGREE NRAGREE ;
 label values RWANT RWANT ;
 label values PROBWANT PROBWANT ;
 label values JINTEND JINTEND ;
 label values JSUREINT JSUREINT ;
 label values JINTENDN JINTENDN ;
 label values JEXPECTL JEXPECTL ;
 label values JEXPECTS JEXPECTS ;
 label values JINTNEXT JINTNEXT ;
 label values INTEND INTEND ;
 label values INTENDN INTENDN ;
 label values EXPECTL EXPECTL ;
 label values EXPECTS EXPECTS ;
 label values INTNEXT INTNEXT ;
 label values USUALCAR USUALCAR ;
 label values USLPLACE USLPLACE ;
 label values USL12MOS USL12MOS ;
 label values COVER12 COVER12 ;
 label values NUMNOCOV NUMNOCOV ;
 label values COVERHOW01 COVERHOW01 ;
 label values COVERHOW02 COVERHOW02 ;
 label values COVERHOW03 COVERHOW03 ;
 label values NOWCOVER01 NOWCOVER01 ;
 label values NOWCOVER02 NOWCOVER02 ;
 label values NOWCOVER03 NOWCOVER03 ;
 label values YOUGOFPC YOUGOFPC ;
 label values WHENGOFP WHENGOFP ;
 label values YOUFPSVC1 YOUFPSVC1 ;
 label values YOUFPSVC2 YOUFPSVC2 ;
 label values YOUFPSVC3 YOUFPSVC3 ;
 label values YOUFPSVC4 YOUFPSVC4 ;
 label values YOUFPSVC5 YOUFPSVC5 ;
 label values DEAF DEAF ;
 label values BLIND BLIND ;
 label values DIFDECIDE DIFDECIDE ;
 label values DIFWALK DIFWALK ;
 label values DIFDRESS DIFDRESS ;
 label values DIFOUT DIFOUT ;
 label values EVRCANCER EVRCANCER ;
 label values AGECANCER AGECANCER ;
 label values CANCTYPE CANCTYPE ;
 label values VISIT12MO1 VISIT12MO1 ;
 label values VISIT12MO2 VISIT12MO2 ;
 label values VISIT12MO3 VISIT12MO3 ;
 label values SVC12MO1 SVC12MO1 ;
 label values SVC12MO2 SVC12MO2 ;
 label values SVC12MO3 SVC12MO3 ;
 label values SVC12MO4 SVC12MO4 ;
 label values SVC12MO5 SVC12MO5 ;
 label values SVC12MO6 SVC12MO6 ;
 label values SVC12MO7 SVC12MO7 ;
 label values SVC12MO8 SVC12MO8 ;
 label values NUMVISIT NUMVISIT ;
 label values PLACEVIS01 PLACEVIS01 ;
 label values PLACEVIS02 PLACEVIS02 ;
 label values PLACEVIS03 PLACEVIS03 ;
 label values PLACEVIS04 PLACEVIS04 ;
 label values PLACEVIS05 PLACEVIS05 ;
 label values PLACEVIS06 PLACEVIS06 ;
 label values SVCPAY1 SVCPAY1 ;
 label values SVCPAY2 SVCPAY2 ;
 label values SVCPAY3 SVCPAY3 ;
 label values SVCPAY4 SVCPAY4 ;
 label values SVCPAY5 SVCPAY5 ;
 label values TALKSA TALKSA ;
 label values TALKEC TALKEC ;
 label values TALKDM TALKDM ;
 label values BARRIER1 BARRIER1 ;
 label values BARRIER2 BARRIER2 ;
 label values BARRIER3 BARRIER3 ;
 label values BARRIER4 BARRIER4 ;
 label values BARRIER5 BARRIER5 ;
 label values INFHELP INFHELP ;
 label values INFSVCS1 INFSVCS1 ;
 label values INFSVCS2 INFSVCS2 ;
 label values INFSVCS3 INFSVCS3 ;
 label values INFSVCS4 INFSVCS4 ;
 label values INFSVCS5 INFSVCS5 ;
 label values INFSVCS6 INFSVCS6 ;
 label values INFTEST INFTEST ;
 label values WHOINSEM WHOINSEM ;
 label values INFHLPNW INFHLPNW ;
 label values LASTVIS_M LASTVIS_M ;
 label values LASTVIS_Y LASTVIS_Y ;
 label values CMINFVIS CMINFVIS ;
 label values INFRTHIS1 INFRTHIS1 ;
 label values INFRTHIS2 INFRTHIS2 ;
 label values DONBLOOD DONBLOOD ;
 label values HIVTEST HIVTEST ;
 label values NOHIVTST NOHIVTST ;
 label values WHENHIV_M WHENHIV_M ;
 label values WHENHIV_Y WHENHIV_Y ;
 label values CMHIVTST CMHIVTST ;
 label values HIVTSTYR HIVTSTYR ;
 label values HIVRESULT HIVRESULT ;
 label values WHYNOGET WHYNOGET ;
 label values PLCHIV PLCHIV ;
 label values HIVTST HIVTST ;
 label values WHOSUGG WHOSUGG ;
 label values TALKDOCT TALKDOCT ;
 label values AIDSTALK01 AIDSTALK01 ;
 label values AIDSTALK02 AIDSTALK02 ;
 label values AIDSTALK03 AIDSTALK03 ;
 label values AIDSTALK04 AIDSTALK04 ;
 label values AIDSTALK05 AIDSTALK05 ;
 label values AIDSTALK06 AIDSTALK06 ;
 label values AIDSTALK07 AIDSTALK07 ;
 label values AIDSTALK08 AIDSTALK08 ;
 label values AIDSTALK09 AIDSTALK09 ;
 label values AIDSTALK10 AIDSTALK10 ;
 label values RETROVIR RETROVIR ;
 label values SAMEADD SAMEADD ;
 label values CNTRY10 CNTRY10 ;
 label values BRNOUT BRNOUT ;
 label values YRSTRUS YRSTRUS ;
 label values RELRAISD RELRAISD ;
 label values ATTND14 ATTND14 ;
 label values RELCURR RELCURR ;
 label values RELTRAD RELTRAD ;
 label values FUNDAM1 FUNDAM1 ;
 label values FUNDAM2 FUNDAM2 ;
 label values FUNDAM3 FUNDAM3 ;
 label values FUNDAM4 FUNDAM4 ;
 label values RELDLIFE RELDLIFE ;
 label values ATTNDNOW ATTNDNOW ;
 label values MILSVC MILSVC ;
 label values STARTMIL STARTMIL ;
 label values ENDMIL ENDMIL ;
 label values WRK12MOS WRK12MOS ;
 label values FPT12MOS FPT12MOS ;
 label values DOLASTWK1 DOLASTWK1 ;
 label values DOLASTWK2 DOLASTWK2 ;
 label values DOLASTWK3 DOLASTWK3 ;
 label values DOLASTWK4 DOLASTWK4 ;
 label values DOLASTWK5 DOLASTWK5 ;
 label values DOLASTWK6 DOLASTWK6 ;
 label values RWRKST RWRKST ;
 label values WORKP12 WORKP12 ;
 label values RPAYJOB RPAYJOB ;
 label values RNUMJOB RNUMJOB ;
 label values RFTPTX RFTPTX ;
 label values REARNTY REARNTY ;
 label values SPLSTWK1 SPLSTWK1 ;
 label values SPLSTWK2 SPLSTWK2 ;
 label values SPLSTWK3 SPLSTWK3 ;
 label values SPLSTWK4 SPLSTWK4 ;
 label values SPLSTWK5 SPLSTWK5 ;
 label values SPWRKST SPWRKST ;
 label values SPPAYJOB SPPAYJOB ;
 label values SPNUMJOB SPNUMJOB ;
 label values SPFTPTX SPFTPTX ;
 label values SPEARNTY SPEARNTY ;
 label values STAYTOG STAYTOG ;
 label values SAMESEX SAMESEX ;
 label values SXOK18 SXOK18 ;
 label values SXOK16 SXOK16 ;
 label values CHUNLESS CHUNLESS ;
 label values CHSUPPOR CHSUPPOR ;
 label values GAYADOPT GAYADOPT ;
 label values OKCOHAB OKCOHAB ;
 label values REACTSLF REACTSLF ;
 label values CHBOTHER CHBOTHER ;
 label values MARRFAIL MARRFAIL ;
 label values CHCOHAB CHCOHAB ;
 label values PRVNTDIV PRVNTDIV ;
 label values SEXNEEDS SEXNEEDS ;
 label values WHENSICK WHENSICK ;
 label values SHOWPAIN SHOWPAIN ;
 label values PMARCOHB PMARCOHB ;
 label values COHCHANCE COHCHANCE ;
 label values MARRCHANCE MARRCHANCE ;
 label values PMARCOH PMARCOH ;
 label values LESSPLSR LESSPLSR ;
 label values EMBARRAS EMBARRAS ;
 label values ACASILANG ACASILANG ;
 label values GENHEALT GENHEALT ;
 label values INCHES INCHES ;
 label values RWEIGHT RWEIGHT ;
 label values BMI BMI ;
 label values SHELTER SHELTER ;
 label values JAILED JAILED ;
 label values JAILED2 JAILED2 ;
 label values FRQJAIL FRQJAIL ;
 label values FRQJAIL2 FRQJAIL2 ;
 label values EVSUSPEN EVSUSPEN ;
 label values GRADSUSP GRADSUSP ;
 label values DRINK12 DRINK12 ;
 label values UNIT30D UNIT30D ;
 label values DRINK30D DRINK30D ;
 label values DRINKDAY DRINKDAY ;
 label values BINGE30 BINGE30 ;
 label values DRNKMOST DRNKMOST ;
 label values BINGE12 BINGE12 ;
 label values POT12 POT12 ;
 label values COC12 COC12 ;
 label values CRACK12 CRACK12 ;
 label values CRYSTMTH12 CRYSTMTH12 ;
 label values INJECT12 INJECT12 ;
 label values MADEPREG MADEPREG ;
 label values PREGTOT2 PREGTOT2 ;
 label values PREGACASI PREGACASI ;
 label values NUMABORT NUMABORT ;
 label values NUMLIVEB NUMLIVEB ;
 label values TOLDPREG TOLDPREG ;
 label values WHATHAPP WHATHAPP ;
 label values FEMTOUCH FEMTOUCH ;
 label values VAGSEX VAGSEX ;
 label values AGEVAGR AGEVAGR ;
 label values CONDVAG CONDVAG ;
 label values WHYCONDL WHYCONDL ;
 label values GETORALF GETORALF ;
 label values CONDFELL CONDFELL ;
 label values GIVORALF GIVORALF ;
 label values ANYORAL ANYORAL ;
 label values TIMING TIMING ;
 label values ANALSEX ANALSEX ;
 label values CONDANAL CONDANAL ;
 label values OPPSEXANY OPPSEXANY ;
 label values OPPSEXGEN OPPSEXGEN ;
 label values CONDSEXL CONDSEXL ;
 label values WANTSEX1 WANTSEX1 ;
 label values HOWOLD HOWOLD ;
 label values EVRFORCD EVRFORCD ;
 label values AGEFORC1 AGEFORC1 ;
 label values GIVNDRG2 GIVNDRG2 ;
 label values SHEBIGOL SHEBIGOL ;
 label values ENDRELA2 ENDRELA2 ;
 label values WRDPRES2 WRDPRES2 ;
 label values THRTPHY2 THRTPHY2 ;
 label values PHYSHRT2 PHYSHRT2 ;
 label values HELDDWN2 HELDDWN2 ;
 label values PARTSLIF_1 PARTSLIF_1 ;
 label values PARTSLFV PARTSLFV ;
 label values PARTSLIF_2 PARTSLIF_2 ;
 label values OPPLIFENUM OPPLIFENUM ;
 label values PARTS12_1 PARTS12_1 ;
 label values PARTS12V PARTS12V ;
 label values PARTS12_2 PARTS12_2 ;
 label values OPPYEARNUM OPPYEARNUM ;
 label values NEWYEAR NEWYEAR ;
 label values NEWLIFE NEWLIFE ;
 label values VAGNUM12 VAGNUM12 ;
 label values ORALNUM12 ORALNUM12 ;
 label values ANALNUM12 ANALNUM12 ;
 label values CURRPAGE CURRPAGE ;
 label values RELAGE RELAGE ;
 label values HOWMUCH HOWMUCH ;
 label values CURRPAGE2 CURRPAGE2 ;
 label values RELAGE2 RELAGE2 ;
 label values HOWMUCH2 HOWMUCH2 ;
 label values CURRPAGE3 CURRPAGE3 ;
 label values RELAGE3 RELAGE3 ;
 label values HOWMUCH3 HOWMUCH3 ;
 label values NONMONOG NONMONOG ;
 label values NNONMONOG1 NNONMONOG1 ;
 label values NNONMONOG2 NNONMONOG2 ;
 label values NNONMONOG3 NNONMONOG3 ;
 label values FEMSHT12 FEMSHT12 ;
 label values JOHNFREQ JOHNFREQ ;
 label values PROSTFRQ PROSTFRQ ;
 label values HIVFEM12 HIVFEM12 ;
 label values GIVORALM GIVORALM ;
 label values GETORALM GETORALM ;
 label values ORALCONDM ORALCONDM ;
 label values ANALSEX2 ANALSEX2 ;
 label values ANALCONDM1 ANALCONDM1 ;
 label values ANALSEX3 ANALSEX3 ;
 label values ANALCONDM2 ANALCONDM2 ;
 label values SAMESEXANY SAMESEXANY ;
 label values MALPRTAGE MALPRTAGE ;
 label values MALPRTHRACE MALPRTHRACE ;
 label values EVRFORC2 EVRFORC2 ;
 label values AGEFORC2 AGEFORC2 ;
 label values GIVNDRG3 GIVNDRG3 ;
 label values HEBIGOLD HEBIGOLD ;
 label values ENDRELA3 ENDRELA3 ;
 label values WRDPRES3 WRDPRES3 ;
 label values THRTPHY3 THRTPHY3 ;
 label values PHYSHRT3 PHYSHRT3 ;
 label values HELDDWN3 HELDDWN3 ;
 label values MALEPRTS_1 MALEPRTS_1 ;
 label values MALEPRTSV MALEPRTSV ;
 label values MALEPRTS_2 MALEPRTS_2 ;
 label values SAMLIFENUM SAMLIFENUM ;
 label values MALPRT12_1 MALPRT12_1 ;
 label values MALPRT12V MALPRT12V ;
 label values MALPRT12_2 MALPRT12_2 ;
 label values SAMYEARNUM SAMYEARNUM ;
 label values SAMORAL12 SAMORAL12 ;
 label values RECEPANAL12 RECEPANAL12 ;
 label values INSERANAL12 INSERANAL12 ;
 label values SAMESEX1 SAMESEX1 ;
 label values MSMNONMON MSMNONMON ;
 label values MALSHT12 MALSHT12 ;
 label values JOHN2FRQ JOHN2FRQ ;
 label values PROS2FRQ PROS2FRQ ;
 label values HIVMAL12 HIVMAL12 ;
 label values MSMWEB12 MSMWEB12 ;
 label values MSMSORT12 MSMSORT12 ;
 label values CNDLSMAL CNDLSMAL ;
 label values CONDALLS CONDALLS ;
 label values MFLASTP MFLASTP ;
 label values WHYCOND WHYCOND ;
 label values ATTRACT ATTRACT ;
 label values ORIENT ORIENT ;
 label values RISKCHEK1 RISKCHEK1 ;
 label values RISKCHEK2 RISKCHEK2 ;
 label values RISKCHEK3 RISKCHEK3 ;
 label values RISKCHEK4 RISKCHEK4 ;
 label values RECTDOUCH RECTDOUCH ;
 label values STDTST12 STDTST12 ;
 label values STDSITE12 STDSITE12 ;
 label values STDTRT12 STDTRT12 ;
 label values GON GON ;
 label values CHLAM CHLAM ;
 label values HERPES HERPES ;
 label values GENWARTS GENWARTS ;
 label values SYPHILIS SYPHILIS ;
 label values EVRINJECT EVRINJECT ;
 label values EVRSHARE EVRSHARE ;
 label values EARNTYPE EARNTYPE ;
 label values EARN EARN ;
 label values EARNDK1 EARNDK1 ;
 label values EARNDK2 EARNDK2 ;
 label values EARNDK3 EARNDK3 ;
 label values EARNDK4 EARNDK4 ;
 label values WAGE WAGE ;
 label values SELFINC SELFINC ;
 label values SOCSEC SOCSEC ;
 label values DISABIL DISABIL ;
 label values RETIRE RETIRE ;
 label values SSI SSI ;
 label values UNEMP UNEMP ;
 label values CHLDSUPP CHLDSUPP ;
 label values INTEREST INTEREST ;
 label values DIVIDEND DIVIDEND ;
 label values OTHINC OTHINC ;
 label values TOINCWMY TOINCWMY ;
 label values TOTINC TOTINC ;
 label values FMINCDK1 FMINCDK1 ;
 label values FMINCDK2 FMINCDK2 ;
 label values FMINCDK3 FMINCDK3 ;
 label values FMINCDK4 FMINCDK4 ;
 label values FMINCDK5 FMINCDK5 ;
 label values PUBASST PUBASST ;
 label values PUBASTYP1 PUBASTYP1 ;
 label values FOODSTMP FOODSTMP ;
 label values WIC WIC ;
 label values HLPTRANS HLPTRANS ;
 label values HLPCHLDC HLPCHLDC ;
 label values HLPJOB HLPJOB ;
 label values FREEFOOD FREEFOOD ;
 label values HUNGRY HUNGRY ;
 label values MED_COST MED_COST ;
 label values AGER AGER ;
 label values FMARITAL FMARITAL ;
 label values RMARITAL RMARITAL ;
 label values EDUCAT EDUCAT ;
 label values HIEDUC HIEDUC ;
 label values HISPANIC HISPANIC ;
 label values NUMRACE NUMRACE ;
 label values RACE RACE ;
 label values HISPRACE HISPRACE ;
 label values HISPRACE2 HISPRACE2 ;
 label values NUMKDHH NUMKDHH ;
 label values NUMFMHH NUMFMHH ;
 label values HHFAMTYP HHFAMTYP ;
 label values HHPARTYP HHPARTYP ;
 label values NCHILDHH NCHILDHH ;
 label values HHKIDTYP HHKIDTYP ;
 label values CSPBBHH CSPBBHH ;
 label values CSPSBHH CSPSBHH ;
 label values CSPOKDHH CSPOKDHH ;
 label values INTCTFAM INTCTFAM ;
 label values PARAGE14 PARAGE14 ;
 label values EDUCMOM EDUCMOM ;
 label values AGEMOMB1 AGEMOMB1 ;
 label values FMARNO FMARNO ;
 label values AGER_I AGER_I ;
 label values FMARITAL_I FMARITAL_I ;
 label values RMARITAL_I RMARITAL_I ;
 label values EDUCAT_I EDUCAT_I ;
 label values HIEDUC_I HIEDUC_I ;
 label values HISPANIC_I HISPANIC_I ;
 label values RACE_I RACE_I ;
 label values HISPRACE_I HISPRACE_I ;
 label values HISPRACE2_I HISPRACE2_I ;
 label values NUMKDHH_I NUMKDHH_I ;
 label values NUMFMHH_I NUMFMHH_I ;
 label values HHFAMTYP_I HHFAMTYP_I ;
 label values HHPARTYP_I HHPARTYP_I ;
 label values NCHILDHH_I NCHILDHH_I ;
 label values HHKIDTYP_I HHKIDTYP_I ;
 label values CSPBBHH_I CSPBBHH_I ;
 label values CSPSBHH_I CSPSBHH_I ;
 label values CSPOKDHH_I CSPOKDHH_I ;
 label values INTCTFAM_I INTCTFAM_I ;
 label values PARAGE14_I PARAGE14_I ;
 label values EDUCMOM_I EDUCMOM_I ;
 label values AGEMOMB1_I AGEMOMB1_I ;
 label values FMARNO_I FMARNO_I ;
 label values HADSEX HADSEX ;
 label values SEXONCE SEXONCE ;
 label values FIRSTPFLAG FIRSTPFLAG ;
 label values ELAPSED ELAPSED ;
 label values SEXMAR SEXMAR ;
 label values SEXUNION SEXUNION ;
 label values FSEXRLTN FSEXRLTN ;
 label values SEX1MTHD1 SEX1MTHD1 ;
 label values SEX1MTHD2 SEX1MTHD2 ;
 label values SEX1MTHD3 SEX1MTHD3 ;
 label values SEX1MTHD4 SEX1MTHD4 ;
 label values ORDERFLAG ORDERFLAG ;
 label values SEX3MO SEX3MO ;
 label values SEX12MO SEX12MO ;
 label values LSEXPRAC LSEXPRAC ;
 label values LSEXRLTN LSEXRLTN ;
 label values LSEXUSE1 LSEXUSE1 ;
 label values LSEXUSE2 LSEXUSE2 ;
 label values LSEXUSE3 LSEXUSE3 ;
 label values LSEXUSE4 LSEXUSE4 ;
 label values METH12M1 METH12M1 ;
 label values METH12M2 METH12M2 ;
 label values METH12M3 METH12M3 ;
 label values METH12M4 METH12M4 ;
 label values METH3M1 METH3M1 ;
 label values METH3M2 METH3M2 ;
 label values METH3M3 METH3M3 ;
 label values METH3M4 METH3M4 ;
 label values NUMP3MOS NUMP3MOS ;
 label values LIFPRTNR LIFPRTNR ;
 label values PARTS1YR PARTS1YR ;
 label values PARTDUR1 PARTDUR1 ;
 label values PARTDUR2 PARTDUR2 ;
 label values PARTDUR3 PARTDUR3 ;
 label values COHEVER COHEVER ;
 label values EVMARCOH EVMARCOH ;
 label values PMARRNO PMARRNO ;
 label values NONMARR NONMARR ;
 label values TIMESCOH TIMESCOH ;
 label values MAREND01 MAREND01 ;
 label values MAREND02 MAREND02 ;
 label values MAREND03 MAREND03 ;
 label values MAREND04 MAREND04 ;
 label values PREMARW1 PREMARW1 ;
 label values COHSTAT COHSTAT ;
 label values COHOUT COHOUT ;
 label values CSPBIOKD CSPBIOKD ;
 label values B1PREMAR B1PREMAR ;
 label values MARBABY1 MARBABY1 ;
 label values CEBOW CEBOW ;
 label values CEBOWC CEBOWC ;
 label values CEBOWP CEBOWP ;
 label values EVRNOPAT EVRNOPAT ;
 label values NONLIVEB NONLIVEB ;
 label values COMPREG COMPREG ;
 label values ABORTION ABORTION ;
 label values LOSSNUM LOSSNUM ;
 label values PARENT01 PARENT01 ;
 label values PARENT02 PARENT02 ;
 label values PARENT03 PARENT03 ;
 label values PARENT04 PARENT04 ;
 label values PARENT05 PARENT05 ;
 label values PARENT06 PARENT06 ;
 label values PARENT07 PARENT07 ;
 label values PARENT08 PARENT08 ;
 label values PARENT09 PARENT09 ;
 label values WANTB01 WANTB01 ;
 label values WANTB02 WANTB02 ;
 label values WANTB03 WANTB03 ;
 label values WANTB04 WANTB04 ;
 label values WANTB05 WANTB05 ;
 label values WANTB06 WANTB06 ;
 label values WANTB07 WANTB07 ;
 label values WANTB08 WANTB08 ;
 label values WANTB09 WANTB09 ;
 label values HADSEX_I HADSEX_I ;
 label values SEXONCE_I SEXONCE_I ;
 label values VRY1STSX_I VRY1STSX_I ;
 label values VRY1STAG_I VRY1STAG_I ;
 label values SEXMAR_I SEXMAR_I ;
 label values SEXUNION_I SEXUNION_I ;
 label values FSEXPAGE_I FSEXPAGE_I ;
 label values FSEXRLTN_I FSEXRLTN_I ;
 label values SEX1MTHD1_I SEX1MTHD1_I ;
 label values SEX1MTHD2_I SEX1MTHD2_I ;
 label values SEX1MTHD3_I SEX1MTHD3_I ;
 label values SEX1MTHD4_I SEX1MTHD4_I ;
 label values LSEXDATE_I LSEXDATE_I ;
 label values SEX3MO_I SEX3MO_I ;
 label values SEX12MO_I SEX12MO_I ;
 label values LSEXRAGE_I LSEXRAGE_I ;
 label values LSEXPAGE_I LSEXPAGE_I ;
 label values LSEXPRAC_I LSEXPRAC_I ;
 label values LSEXRLTN_I LSEXRLTN_I ;
 label values LSEXUSE1_I LSEXUSE1_I ;
 label values LSEXUSE2_I LSEXUSE2_I ;
 label values LSEXUSE3_I LSEXUSE3_I ;
 label values LSEXUSE4_I LSEXUSE4_I ;
 label values METH12M1_I METH12M1_I ;
 label values METH12M2_I METH12M2_I ;
 label values METH12M3_I METH12M3_I ;
 label values METH12M4_I METH12M4_I ;
 label values METH3M1_I METH3M1_I ;
 label values METH3M2_I METH3M2_I ;
 label values METH3M3_I METH3M3_I ;
 label values METH3M4_I METH3M4_I ;
 label values NUMP3MOS_I NUMP3MOS_I ;
 label values LIFPRTNR_I LIFPRTNR_I ;
 label values PARTS1YR_I PARTS1YR_I ;
 label values PARTDUR1_I PARTDUR1_I ;
 label values PARTDUR2_I PARTDUR2_I ;
 label values PARTDUR3_I PARTDUR3_I ;
 label values COHEVER_I COHEVER_I ;
 label values EVMARCOH_I EVMARCOH_I ;
 label values PMARRNO_I PMARRNO_I ;
 label values NONMARR_I NONMARR_I ;
 label values TIMESCOH_I TIMESCOH_I ;
 label values MARDAT01_I MARDAT01_I ;
 label values MARDAT02_I MARDAT02_I ;
 label values MARDAT03_I MARDAT03_I ;
 label values MARDAT04_I MARDAT04_I ;
 label values MARDAT05_I MARDAT05_I ;
 label values MAREND01_I MAREND01_I ;
 label values MAREND02_I MAREND02_I ;
 label values MAREND03_I MAREND03_I ;
 label values MAREND04_I MAREND04_I ;
 label values MAREND05_I MAREND05_I ;
 label values MARDIS01_I MARDIS01_I ;
 label values MARDIS02_I MARDIS02_I ;
 label values MARDIS03_I MARDIS03_I ;
 label values MARDIS04_I MARDIS04_I ;
 label values MARDIS05_I MARDIS05_I ;
 label values MAR1DISS_I MAR1DISS_I ;
 label values PREMARW1_I PREMARW1_I ;
 label values COHAB1_I COHAB1_I ;
 label values COHSTAT_I COHSTAT_I ;
 label values COHOUT_I COHOUT_I ;
 label values COH1DUR_I COH1DUR_I ;
 label values CSPBIOKD_I CSPBIOKD_I ;
 label values DATBABY1_I DATBABY1_I ;
 label values AGEBABY1_I AGEBABY1_I ;
 label values B1PREMAR_I B1PREMAR_I ;
 label values MARBABY1_I MARBABY1_I ;
 label values CEBOW_I CEBOW_I ;
 label values CEBOWC_I CEBOWC_I ;
 label values CEBOWP_I CEBOWP_I ;
 label values EVRNOPAT_I EVRNOPAT_I ;
 label values NONLIVEB_I NONLIVEB_I ;
 label values COMPREG_I COMPREG_I ;
 label values ABORTION_I ABORTION_I ;
 label values LOSSNUM_I LOSSNUM_I ;
 label values PARENT01_I PARENT01_I ;
 label values PARENT02_I PARENT02_I ;
 label values PARENT03_I PARENT03_I ;
 label values PARENT04_I PARENT04_I ;
 label values PARENT05_I PARENT05_I ;
 label values PARENT06_I PARENT06_I ;
 label values PARENT07_I PARENT07_I ;
 label values PARENT08_I PARENT08_I ;
 label values PARENT09_I PARENT09_I ;
 label values WANTB01_I WANTB01_I ;
 label values WANTB02_I WANTB02_I ;
 label values WANTB03_I WANTB03_I ;
 label values WANTB04_I WANTB04_I ;
 label values WANTB05_I WANTB05_I ;
 label values WANTB06_I WANTB06_I ;
 label values WANTB07_I WANTB07_I ;
 label values WANTB08_I WANTB08_I ;
 label values WANTB09_I WANTB09_I ;
 label values DADTYPE DADTYPE ;
 label values DADTYPU5 DADTYPU5 ;
 label values DADTYP518 DADTYP518 ;
 label values NUMCRU18 NUMCRU18 ;
 label values NUMNCU18 NUMNCU18 ;
 label values SUPP12MO SUPP12MO ;
 label values DADTYPE_I DADTYPE_I ;
 label values DADTYPU5_I DADTYPU5_I ;
 label values DADTYP518_I DADTYP518_I ;
 label values NUMCRU18_I NUMCRU18_I ;
 label values NUMNCU18_I NUMNCU18_I ;
 label values SUPP12MO_I SUPP12MO_I ;
 label values INTENT INTENT ;
 label values ADDEXP ADDEXP ;
 label values INTENT_I INTENT_I ;
 label values ADDEXP_I ADDEXP_I ;
 label values CURR_INS CURR_INS ;
 label values INFEVER INFEVER ;
 label values EVHIVTST EVHIVTST ;
 label values CURR_INS_I CURR_INS_I ;
 label values INFEVER_I INFEVER_I ;
 label values EVHIVTST_I EVHIVTST_I ;
 label values METRO METRO ;
 label values RELIGION RELIGION ;
 label values LABORFOR LABORFOR ;
 label values METRO_I METRO_I ;
 label values RELIGION_I RELIGION_I ;
 label values LABORFOR_I LABORFOR_I ;
 label values TOTINCR TOTINCR ;
 label values PUBASSIS PUBASSIS ;
 label values POVERTY_I POVERTY_I ;
 label values TOTINCR_I TOTINCR_I ;
 label values PUBASSIS_I PUBASSIS_I ;
 label values SECU SECU ;

#delimit cr

/********************************************************************

 Section 4: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace
