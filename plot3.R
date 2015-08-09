# Get the clean and subset data
source("readsource.R")
data <- readsource("household_power_consumption.txt")

# Plot3
png(file = "plot3.png")

with(data, plot(x = Datetime, y = Sub_metering_1, type = "l", col = "black", 
                ylim = range(Sub_metering_1, Sub_metering_2, Sub_metering_3),
                xlab = "", ylab = "Energy sub metering"))

lines(x = data$Datetime, y = data$Sub_metering_2, col = "red")
lines(x = data$Datetime, y = data$Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), 
       pch = c(NA, NA, NA), lty = c(1, 1, 1),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()