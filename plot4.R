#open a png graphics device
png(file = "plot4.png")

#set the arrangement and default margins
par(mfrow = c(2,2), mar = c(5.1, 4.1, 4.1, 2.1) )

#top left plot
plot(df$Datetime, df$Global_active_power,
     type = "l",
     main = "",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

#top right plot
plot(df$Datetime, df$Voltage,
     type = "l",
     main = "",
     xlab = "datetime",
     ylab = "Voltage")

#bottom left plot
plot(df$Datetime, df$Sub_metering_1,
     type = "l",
     main = "",
     xlab = "",
     ylab = "Energy sub metering")
lines(df$Datetime, df$Sub_metering_2, col = "red")
lines(df$Datetime, df$Sub_metering_3, col = "blue")
legend("topright",
       legend = tail(names(df),3),
       lty = c(1, 1),
       lwd = c(1, 1),
       col = c("black", "red", "blue"))

#bottom right plot
plot(df$Datetime, df$Global_reactive_power,
     type = "l",
     main = "",
     xlab = "datetime",
     ylab = "Global_reactive_power")

#reset the arrangement and default margins
par(mfrow = c(1,1), mar = c(5.1, 4.1, 4.1, 2.1) )

#close the device
dev.off()