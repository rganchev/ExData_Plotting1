source('create_plot.R')

create_plot('plot2', function(power_consumption) {
    with(power_consumption,
         plot(datetime, Global_active_power,
              type = 'l',
              xlab = '',
              ylab = 'Global Active Power (kilowatts)'))
})