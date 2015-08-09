# Get the clean and subset data
source("readsource.R")
data <- readsource("household_power_consumption.txt")

# Plot2
png(file = "plot2.png")

with(data, plot(x = Datetime, y = Global_active_power, xlab = "", main = "", 
                type = "l", ylab = "Global Active Power (kilowatts)"))

dev.off()