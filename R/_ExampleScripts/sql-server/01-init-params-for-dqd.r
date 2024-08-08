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
pathToDriver <- "C:\\temp\\polites\\drivers\\sqlserver"   # location of the mssql-jdbc driver jar
outputFolder <- "C:\\temp\\polites\\dqd\\output"          # location where output file will be written
outputFile <- "dqd-results.json"                          # file for results json

# database connectivity
dbms <- "sql server"
user <- "polites_omop" 
password <- "Sneaker01" 
server <- "localhost" 
port <- "1433"
pathToDriver <- pathToDriver
extraSettings <- ";encrypt=false;TrustServerCertificate=True"

# database schemas
cdmDatabaseSchema <- "polites_omop.dbo"                   # your omop instance
resultsDatabaseSchema <- "polites_omop_dqd.dbo"           # instance where results will be written
cdmSourceName <- "NACHC Test"                             # a human readable name for your CDM source

# config parameters
numThreads <- 1       # number of threads to run, 3 seems to work well on Redshift
sqlOnly <- FALSE      # set to TRUE if you just want to get the SQL scripts and not actually run the queries
verboseMode <- TRUE   # set to TRUE if you want to see activity written to the console
writeToTable <- TRUE  # set to FALSE if you want to skip writing to a SQL table in the results schema

# dqd parameters
checkLevels <- c("TABLE", "FIELD", "CONCEPT")
checkNames <- c("cdmTable")
tablesToExclude <- c()



