# Get the clean and subset data
source("readsource.R")
data <- readsource("household_power_consumption.txt")

# Plot4
png(file = "plot4.png")

par(mfrow = c(2, 2))
par(mar = c(4, 4, 2, 2))
#plot1
plot(x = data$Datetime, y = data$Global_active_power, xlab = "",
     ylab = "Global Active Power", type = "l")

#plot2
plot(x = data$Datetime, y = data$Voltage, xlab = "datetime",
                type = "l", ylab = "Voltage")
     
#plot3
<<<<<<< HEAD
# plot(x = data$Datetime, y = data$Sub_metering_1, type = "l", col = "black", 
#                 ylim = range(data$Sub_metering_1, data$Sub_metering_2, 
#                              data$Sub_metering_3),
#                 xlab = "", ylab = "Energy sub metering")

with(data, {
        plot(x = Datetime, y = Sub_metering_1, type = "l", col = "black", 
        ylim = range(Sub_metering_1, Sub_metering_2, Sub_metering_3),
        xlab = "", ylab = "Energy sub metering")

lines(x = Datetime, y = Sub_metering_2, col = "red")
lines(x = Datetime, y = Sub_metering_3, col = "blue")
legend("topright", col = c("black", "red", "blue"), 
       pch = c(NA, NA, NA), lty = c(1, 1, 1),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
})
=======
plot(x = data$Datetime, y = data$Sub_metering_1, type = "l", col = "black", 
                ylim = range(data$Sub_metering_1, data$Sub_metering_2, 
                             data$Sub_metering_3),
                xlab = "", ylab = "Energy sub metering")
>>>>>>> bcad6c12a97479562cbfea331b2d7be60930c489

#plot4
plot(x = data$Datetime, y = data$Global_reactive_power, xlab = "datetime",
     type = "l", ylab = "Global_reactive_power")
     
dev.off()