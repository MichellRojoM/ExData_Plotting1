############## gráfico 2 ############# 

getwd()
dir()
data <-read.table("household_power_consumption.txt",
                  header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

newdata <-data[data$Date %in% c("1/2/2007","2/2/2007") ,]

DT <- strptime(paste(newdata$Date, newdata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
#head(DT)
GAP <- as.numeric(newdata$Global_active_power)
png("plot2.png", width=480, height=480)
plot(DT, GAP, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

