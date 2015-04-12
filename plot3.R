with(mydatasubset, plot(Date, Sub_metering_2, col = 'red', type = "n"))
with(mydatasubset, plot(Sub_metering_1,Date, ylab = "Energy Sub Metering", type = "n"))
with(mydatasubset, lines(Date, Sub_metering_1, type = 'l', col = 'black') )
