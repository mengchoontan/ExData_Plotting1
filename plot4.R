setwd(“/home/mc/c4/assign1")
list.files(".")
mydata <- read.table("household_power_consumption.txt", sep = ";" , header = TRUE)
mydatasubset = subset(mydata, mydata$Date == "1/2/2007" | mydata$Date == "2/1/2007")

par(mfrow = c(2,2), mar = c(4,4,2,1))
with(mydatasubset, plot(Global_active_power, Date, type = 'l', col = 'black', main = NA, xlab = NA, ylab = "Global Active Power")) 
with(mydatasubset, plot(Voltage, Date, type = 'l', col = 'black', main = NA, xlab = "datetime", ylab = "Voltage"))
with(mydatasubset, plot(Date, Sub_metering_1, type = 'n', main = NA, xlab = NA, ylab = "Energy sub metering"))
lines(Date, Sub_metering_1, type = 'l', col = 'black')
lines(Ddate, Sub_metering_2, type = 'l', col = 'red')
lines(Date, Sub_metering_3, type = 'l', col = 'blue')
legend("topright", lty = 1, col = c("black", "red", "blue"),  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

with(mydatasubset, plot(Global_reactive_power, Date,  type = 'l', col = 'black', main = NA, xlab = "datetime", ylab = "Global_reactive_power")

par(mfrow = c(1,1), mar = c(4,4,2,1))





dev.copy(png, file = "plot4.png")
dev.off()
