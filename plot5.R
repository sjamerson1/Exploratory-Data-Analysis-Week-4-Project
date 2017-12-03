# Retrieve Data from Baltimore and "ON-ROAD" Type
NEI_Baltimore_Vehicle <- subset(NEI, NEI$fips == "24501" & NEI$type == 'ON-ROAD')

#pm2.5 sum per year
TE_Baltimore_Vehicle <- aggregate(NEI_Baltimore_Vehicle[,4], by = list(year= NEI_Baltimore_Vehicle$year), FUN = sum)

# plot 5
png('plot5.png')
g <- ggplot(TE_Baltimore_Vehicle, aes(year,x))
g+geom_point() + geom_line() + labs(x = "year") + labs(y = "Total Emissions") + lab(title = "Total Emissions by Vehicles in Baltimore")
dev.off()