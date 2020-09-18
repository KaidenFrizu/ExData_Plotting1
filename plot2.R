# Required to download this additional R file from the repository for the code to work
# It is best to clone the whole repository

source("filecheck.R")

#####################

png(file = "plot2.png")

plot(x = wdataframe$datetime, y = wdataframe$Global_active_power
     ,type = "l"
     ,xlab = "", ylab = "Global Active Power (kilowatts)")

dev.off()