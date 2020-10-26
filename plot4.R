source("load.R")
source("plot2.R")
source("plot3.R")

data <- download_and_load_data()

png(filename = "plot4.png")

par(mfcol=c(2, 2))
addPlot2(data)
addPlot3(data)

plot(data$DateTime, data$Voltage, 
     type="l",
     xlab = "datetime",
     ylab = "Voltage")
plot(data$DateTime, data$Global_reactive_power, 
     type="l",
     xlab = "datetime",
     ylab = "Global_reactive_power")

dev.off()