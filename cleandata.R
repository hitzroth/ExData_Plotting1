library(lubridate)

#read the data
data <-read.csv("../data/household_power_consumption.txt",
                sep = ";", na.strings = "?", stringsAsFactors = F)
#convert the dates and times to a single entry
Datetime <- parse_date_time2(paste(data$Date, data$Time),
                             "%d/%m/%Y %H:%M:%S", tz = "UTC")
#rebuild the data frame
data <- data.frame(Datetime = Datetime ,
                Global_active_power = data$Global_active_power,
                Global_reactive_power = data$Global_reactive_power,
                Voltage = data$Voltage,
                Global_intensity = data$Global_intensity,
                Sub_metering_1 = data$Sub_metering_1,
                Sub_metering_2 = data$Sub_metering_2,
                Sub_metering_3 = data$Sub_metering_3)
#strip all but necessary entries
cleandata <- data[floor_date(data$Datetime, unit = "day") == dmy("01-02-2007") |
           floor_date(data$Datetime, unit = "day") == dmy("02-02-2007"),]

#cleanup
rm(Datetime, data)