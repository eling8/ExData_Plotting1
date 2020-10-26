source("load.R")

data <- download_and_load_data()

png(filename = "plot1.png")
hist(data$Global_active_power, 
     xlab="Global Active Power (kilowatts)", 
     col="red", 
     main = "Global Active Power")
dev.off()