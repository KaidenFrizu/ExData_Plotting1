# Required to download this additional R file from the repository for the code to work
# It is best to clone the whole repository

source("filecheck.R")

#####################

png(file = "plot3.png")

ylim <- range(wdataframe$Sub_metering_1)

plot(x = wdataframe$datetime, y = wdataframe$Sub_metering_1
     ,type = "l", ylim = ylim
     ,xlab = "", ylab = "Energy sub metering")
par(new = TRUE)

plot(x = wdataframe$datetime, y = wdataframe$Sub_metering_2
     ,col = "red"
     ,type = "l", ylim = ylim
     ,xlab = "", ylab = "")
par(new = TRUE)

plot(x = wdataframe$datetime, y = wdataframe$Sub_metering_3
     ,col = "blue"
     ,type = "l", ylim = ylim
     ,xlab = "", ylab = "")

legend("topright"
       ,legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
       ,col = c("black", "red", "blue"), lwd = 1)

dev.off()