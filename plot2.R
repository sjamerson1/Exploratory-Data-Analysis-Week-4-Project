# retrieve data for Baltimore
NEI_Baltimore = subset(NEI, NEI$fips == "24510")

# pm2.5 sum per year
TotalEmission_Baltimore <- aggregate(NEI_Baltimore[,4], by = list(year = NEI_Baltimore$year), FUN = sum)

# Plot2
png(filename = 'plot2.png')
barplot(TotalEmission_Baltimore$x, names.arg = TotalEmission_Baltimore$year, xlab = "year", ylab = "Total Emission", main = "Total pm2.5 Emissions in Baltimore")
dev.off()
