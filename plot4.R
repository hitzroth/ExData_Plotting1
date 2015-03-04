#run clean data if not already run
if (!(exists("cleandata") & length(names(cleandata))==8))
  source("cleandata.R")

#open a png graphics device
png(file = "plot4.png")

#set the arrangement and default margins
par(mfrow = c(2,2), mar = c(5.1, 4.1, 4.1, 2.1) )

#top left plot
plot(cleandata$Datetime, cleandata$Global_active_power,
     type = "l",
     main = "",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

#top right plot
plot(cleandata$Datetime, cleandata$Voltage,
     type = "l",
     main = "",
     xlab = "datetime",
     ylab = "Voltage")

#bottom left plot
plot(cleandata$Datetime, cleandata$Sub_metering_1,
     type = "l",
     main = "",
     xlab = "",
     ylab = "Energy sub metering")
lines(cleandata$Datetime, cleandata$Sub_metering_2, col = "red")
lines(cleandata$Datetime, cleandata$Sub_metering_3, col = "blue")
legend("topright",
       legend = tail(names(cleandata),3),
       lty = c(1, 1),
       lwd = c(1, 1),
       col = c("black", "red", "blue"))

#bottom right plot
plot(cleandata$Datetime, cleandata$Global_reactive_power,
     type = "l",
     main = "",
     xlab = "datetime",
     ylab = "Global_reactive_power")

#reset the arrangement and default margins
par(mfrow = c(1,1), mar = c(5.1, 4.1, 4.1, 2.1) )

#close the device
dev.off()