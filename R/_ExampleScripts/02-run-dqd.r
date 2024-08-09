# ---
#
# run-dqd.r
#
# Run the init-parameters.r script before running this script.   
#
# Script to run the Data Quality Dashboard (DQD)
# 
# The output of this script is a single JSON file that can then be rendered with the run-dqd.r script 
# to view the results as a web page in a browser.  
# 
# ---

# ---
# 
# CREATE THE CONNECTION OBJECT AND RUN THE JOB
# 
# ---

# create connection details object
connectionDetails <- DatabaseConnector::createConnectionDetails(
  dbms = dbms, 
  user = user, 
  password = password, 
  server = server, 
  port = port, 
  pathToDriver = pathToDriver,
  extraSettings = extraSettings 
)

print("Testing connection...")
conn <- connect(connectionDetails = connectionDetails)
print("Connection successfully created")

# ---
#
# run the job
#
# ---

DataQualityDashboard::executeDqChecks (
  connectionDetails = connectionDetails, 
  cdmDatabaseSchema = cdmDatabaseSchema, 
  resultsDatabaseSchema = resultsDatabaseSchema,
  cdmSourceName = cdmSourceName, 
  numThreads = numThreads,
  sqlOnly = sqlOnly, 
  outputFolder = outputFolder, 
  outputFile = outputFile,
  verboseMode = verboseMode,
  writeToTable = writeToTable,
  checkLevels = checkLevels,
  tablesToExclude = tablesToExclude,
  checkNames = checkNames,
  cdmVersion = cdmVersion
)






