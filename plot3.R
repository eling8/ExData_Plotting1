source("load.R")

addPlot3 <- function(data) {
  plot(data$DateTime, data$Sub_metering_1, 
       type="l",
       xlab = "",
       ylab = "Energy sub metering")
  points(data$DateTime, data$Sub_metering_2, 
         type="l",
         col="red")
  points(data$DateTime, data$Sub_metering_3, 
         type="l",
         col="blue")
  legend("topright", 
         legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         col=c("black", "red", "blue"),
         lwd=1)
}

plot3 <- function() {
  data <- download_and_load_data()
  png(filename = "plot3.png")
  addPlot3(data)
  dev.off()
}
