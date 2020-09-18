# This R code is a dependency for the analysis to work properly.
# It is required to download and place this file to the corresponding working directory.
# Cloning the repository (KaidenFrizu/ExData_Plotting1) is highly recommended.

url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
archname <- "household_power_consumption.zip"
filename <- "household_power_consumption.txt"

if(!exists("wdataframe")) {
    
    if(!file.exists(filename)) {
        
        if(!file.exists(archname)) {
            
            download.file(url, destfile = archname)
            download_date <- Sys.time()
        }
        
        unzip(archname)
    }
    
    wdataframe <- read.table(file = filename, header = TRUE
                            ,sep = ";", na.strings = "?"
                            ,colClasses = c("character", "character", "numeric"
                                            ,"numeric", "numeric", "numeric"
                                            ,"numeric", "numeric", "numeric"))
    
    datetime <- strptime(paste(wdataframe$Date, wdataframe$Time)
                           ,format = "%d/%m/%Y %H:%M:%S")
    
    wdataframe <- cbind(as.data.frame(datetime), wdataframe[,c(-1,-2)])
    rm(datetime)
    wdataframe <- subset(wdataframe
                         ,wdataframe$datetime >= "2007-02-01" & wdataframe$datetime < "2007-02-03")
}
