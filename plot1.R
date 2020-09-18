# Required to download this additional R file from the repository for the code to work
# It is best to clone the whole repository

source("filecheck.R")

#####################

png(file = "plot1.png")

hist(wdataframe$Global_active_power
     ,main = "Global Active Power"
     ,xlab = "Global Active Power (kilowatts)"
     ,ylab = "Frequency"
     ,col = "red")

dev.off()