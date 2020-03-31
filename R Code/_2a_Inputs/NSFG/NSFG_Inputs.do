clear

*2011-2013 Data

cd "/Users/jenniferspencer/Desktop/TOPS Projects/bisexual_hpv_model/Inputs/NSFG/2011-2013/"
do "./2011_2013_FemRespSetup.do"

clear
do "./2011_2013_MaleSetup.do"


clear
*2013-2015 Data

cd "/Users/jenniferspencer/Desktop/TOPS Projects/bisexual_hpv_model/Inputs/NSFG/2013-2015/"

do "./2013_2015_FemRespSetup.do"


clear

do "./2013_2015_MaleSetup.do"


*2015-2017 Data

clear
cd "/Users/jenniferspencer/Desktop/TOPS Projects/bisexual_hpv_model/Inputs/NSFG/2015-2017/"

do "./2015_2017_FemRespSetup.do"


clear

do "./2015_2017_MaleSetup.do"


*Weights

clear
cd "/Users/jenniferspencer/Desktop/TOPS Projects/bisexual_hpv_model/Inputs/NSFG/weights"

do "./2013_2017_4Year_2011_2017_6Year_FemWgtSetup.do"


clear

do "./2013_2017_4Year_2011_2017_6Year_MaleWgtSetup.do"
