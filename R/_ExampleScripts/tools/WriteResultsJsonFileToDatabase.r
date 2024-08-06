# Write the JSON file to the results table
jsonFilePath <- ""
DataQualityDashboard::writeJsonResultsToTable(
   connectionDetails = connectionDetails, 
   resultsDatabaseSchema = resultsDatabaseSchema, 
   jsonFilePath = jsonFilePath
)
