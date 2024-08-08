# ---
#
# init-params-for-dtq.r
#
# Script to configure parameters for the Data Quality Dashboard (DQD)
# This script is based on the documentation at:
# https://ohdsi.github.io/DataQualityDashboard/articles/DataQualityDashboard.html 
# 
# ---

# clear any existing environment variables
rm(list=ls())    

# local files
pathToDriver <- "C:\\temp\\polites\\drivers\\postgres"
outputFolder <- "C:\\temp\\polites\\dqd\\output"
outputFile <- "dqd-results.json"

# cdm version
cdmVersion = "5.3"

# database connectivity
dbms <- "postgresql"
user <- "postgres" 
password <- "mypass" 
server <- "127.0.0.1/postgres" 
port <- "5432"
pathToDriver <- pathToDriver
extraSettings <- ""

# database schemas
cdmDatabaseSchema <- "demo_cdm"
resultsDatabaseSchema <- "demo_cdm_results"
cdmSourceName <- "NACHC Test"

# config parameters
numThreads <- 1       # number of threads to run, 3 seems to work well on Redshift
sqlOnly <- FALSE      # set to TRUE if you just want to get the SQL scripts and not actually run the queries
verboseMode <- TRUE   # set to TRUE if you want to see activity written to the console
writeToTable <- TRUE  # set to FALSE if you want to skip writing to a SQL table in the results schema

# dqd parameters
checkLevels <- c("TABLE", "FIELD", "CONCEPT")
checkNames <- c("cdmTable")
tablesToExclude <- c()



