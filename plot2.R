source("load.R")

addPlot2 <- function(data) {
  plot(data$DateTime, data$Global_active_power, 
       type="l",
       xlab = "",
       ylab = "Global Active Power (kilowatts)")
}

plot2 <- function(data) {
  data <- download_and_load_data()
  png(filename = "plot2.png")
  addPlot2(data)
  dev.off()
}
