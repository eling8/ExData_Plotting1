library(lubridate)

# Downloads the zipfile, and unzips it, and loads the data into a table
download_and_load_data <- function() {
  # download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "w4-project.zip")
  # unzip("w4-project.zip")
  data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";")
  data <- transform(data, 
                    Date = dmy(Date),
                    Time = hms(Time),
                    DateTime = dmy_hms(paste(Date, Time)),
                    Global_active_power = as.numeric(Global_active_power),
                    Global_reactive_power = as.numeric(Global_reactive_power),
                    Voltage = as.numeric(Voltage),
                    Global_intensity = as.numeric(Global_intensity),
                    Sub_metering_1 = as.numeric(Sub_metering_1),
                    Sub_metering_2 = as.numeric(Sub_metering_2),
                    Sub_metering_3 = as.numeric(Sub_metering_3))
  data <- data[data$Date >= ymd("2007-02-01") & data$Date <= ymd("2007-02-02"),]
  data
}
