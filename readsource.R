# Clean and subset data set
readsource <- function(fileurl) {
datacheckclass <- read.table(fileurl, 
                             nrows = 100, sep = ";", header = T)
classes <- sapply(datacheckclass, class)
data <- read.table(fileurl, 
                   sep = ";", header = T, colClasses = classes, na.strings = "?")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$Datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
data <- subset(data, Date == as.Date("2007-02-01") | Date == as.Date("2007-02-02"))
}