TotalEmission_year <- aggregate(NEI[,4], by = list(year = NEI$year), FUN = sum)
# pm2.5 sum per year

#Plot 1
png(filename = 'plot1.png')
barplot(TotalEmission_year$x, names.arg = TotalEmission_year$year, xlab = "year", ylab = "Total Emission", main = "Total PM2.5 Emission")
dev.off()