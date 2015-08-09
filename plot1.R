# Get the clean and subset data
source("readsource.R")
data <- readsource("household_power_consumption.txt")

# Plot1
png(file = "plot1.png")

hist(data$Global_active_power, xlab = "Global Active Power (kilowatts)", 
     main = "Global Active Power", col = "red")

dev.off()