getwd()
dir()
data <-read.table("household_power_consumption.txt",
                  header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
newdata <-data[data$Date %in% c("1/2/2007","2/2/2007") ,]
sM1 <- as.numeric(newdata$Sub_metering_1)
sM2 <- as.numeric(newdata$Sub_metering_2)
sM3 <- as.numeric(newdata$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(DT, sM1, type="l", ylab="Energy Submetering", xlab="")
lines(DT, sM2, type="l", col="red")
lines(DT, sM3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off() 
