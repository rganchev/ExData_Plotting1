source('create_plot.R')

create_plot('plot1', function(power_consumption) {
    hist(power_consumption$Global_active_power,
         col = 'red',
         main = 'Global Active Power',
         xlab = 'Global Active Power (kilowatts)')
})