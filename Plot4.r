############ Gráfico 4 #######################
getwd()
dir()
data <-read.table("household_power_consumption.txt",
                  header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

newdata <-data[data$Date %in% c("1/2/2007","2/2/2007") ,]

vol <- as.numeric(newdata$Voltage)
GRP <- as.numeric(newdata$Global_reactive_power)

png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 
plot(DT, GAP, type="l", xlab="", ylab="Global Active Power", cex=0.2)
plot(DT, vol, type="l", xlab="datetime", ylab="Voltage")

plot(DT, sM1, type="l", ylab="Energy Submetering", xlab="")
lines(DT, sM2, type="l", col="red")
lines(DT, sM3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(DT, GAP, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off() 
