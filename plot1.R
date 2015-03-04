#open a png graphics device
png(file = "plot1.png")

#set the arrangement and default margins
par(mfrow = c(1,1), mar = c(5.1, 4.1, 4.1, 2.1) )

#make the plot
hist(df$Global_active_power,
     breaks = 12,
     col="red",
     main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency")

#close the device
dev.off()