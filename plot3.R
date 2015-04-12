with(mydatasubset, plot(Date, Sub_metering_2, col = 'red', type = "n"))
with(mydatasubset, plot(Sub_metering_1,Date, ylab = "Energy Sub Metering", type = "n"))
with(mydatasubset, lines(Date, Sub_metering_1, type = 'l', col = 'black') )
with(mydatasubset, lines(Date, Sub_metering_2, type = 'l', col = 'red') )
with(mydatasubset, lines(Date, Sub_metering_3, type = 'l', col = 'blue') )
legend("topright", lty = 1, col = c("black", "red", "blue"),
legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
