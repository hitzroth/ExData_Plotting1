#run clean data if not already run
if (!(exists("cleandata") & length(names(cleandata))==8))
  source("cleandata.R")

#open a png graphics device
png(file = "plot2.png")

#set the arrangement and default margins
par(mfrow = c(1,1), mar = c(5.1, 4.1, 4.1, 2.1) )

#make the plot
plot(cleandata$Datetime, cleandata$Global_active_power,
     type = "l",
     main = "",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

#close the device
dev.off()