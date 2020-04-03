

install.packages(c("tidyverse",   #Downloads a number of packages including ggplot (graphs) and dplyr (data manipulation)
                   
                   "foreign",     #Imports non-R formats 
                   
                   "survey",      #Analayzes complex survey data with weights, strata, etc 
                   
                   "kableExtra",  #A fancy way of displaying tables   
                  
                   "ggpubr",      #A package that makes ggplots even nicer + can combine plots  
                   
                   "readstata13", #As suggested it reads stata. As not suggested, it can read up to stata 15.      
                   
                   "EpiModel",    #My main model package for doing network models  
                   
                   "ndtv",        #For visualizing the Epimodel network
                   
                   "openxlsx",    #For writing to excel models    
                   
                   "mc2d"))       #For using the pert distribution 



remotes::install_github("statnet/tergmLite@v1.2.0", force= TRUE)