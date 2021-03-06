setwd(“/home/mc/c4/assign1")
list.files(".")
mydata <- read.table("household_power_consumption.txt", sep = ";" , header = TRUE)
mydatasubset = subset(mydata, mydata$Date == "1/2/2007" | mydata$Date == "2/1/2007")

with(mydatasubset, plot(Date, Sub_metering_2, col = 'red', type = "n"))
with(mydatasubset, plot(Sub_metering_1,Date, ylab = "Energy Sub Metering", type = "n"))
with(mydatasubset, lines(Date, Sub_metering_1, type = 'l', col = 'black') )
with(mydatasubset, lines(Date, Sub_metering_2, type = 'l', col = 'red') )
with(mydatasubset, lines(Date, Sub_metering_3, type = 'l', col = 'blue') )
legend("topright", lty = 1, col = c("black", "red", "blue"),
legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file = "plot3.png")
dev.off()
