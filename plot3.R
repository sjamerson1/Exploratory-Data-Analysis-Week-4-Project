# data retrieved from Baltimore
NEI_Baltimore = subset(NEI, NEI$fips == "24510")

# pm2.5 sum for year and type
TE_Baltimore_Type <- aggregate(NEI_Baltimore[,4], by = list(year = NEI_Baltimore$year, type = NEI_Baltimore$type), FUN = sum)

# plot 3
png('plot3.png')
g <- ggplot(TE_Baltimore_Type, aes(year, x))
g + geom_line()+geom_point()+facet_grid(.~ type) + labs(x = "Year", y = "Total Emissions")
ggtitle("Total Emissions in Baltimore, MD")
dev.off()
