/******************************************************************************************
 |                                                                         
 |                   NATIONAL SURVEY OF FAMILY GROWTH (NSFG)
 |
 |           2013-2017 FOUR-YEAR WEIGHT AND 2011-2017 SIX-YEAR WEIGHT
 |                        STATA FEMALE DATA SETUP FILE
 |
 |
 |  Please edit this file as instructed below.
 |  To execute, start Stata, change to the directory containing:
 |       - this do file
 |       - the ASCII data file
 |       - the dictionary file
 |
 |  Then execute the do file (e.g., do 2013_2017_4Year_2011_2017_6Year_FemaleWeightSetup.do)
 |
 ******************************************************************************************/
 
 
set more off  /* This prevents the Stata output viewer from pausing the
                 process */

/*******************************************************

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

local raw_data "./2013_2017_2011_2017_Femwgt.dat"
local dict "./2013_2017_4Year_2011_2017_6Year_FemWgtSetup.dct"
local outfile "weights6y_F.dta"

/*********************************************************

Section 2: Infile Command

This section reads the raw data into Stata format.  If Section 1 was defined
properly, there should be no reason to modify this section.  These macros
should inflate automatically.

**********************************************************/

infile using `dict', using(`raw_data') clear 


/********************************************************************

 Section 3: Save Outfile

  This section saves out a Stata system format file.  There is no reason to
  modify it if the macros in Section 1 were specified correctly.

*********************************************************************/

save `outfile', replace

