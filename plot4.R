source('create_plot.R')

create_plot('plot4', function(power_consumption) {
    par(pin = c(2.75, 2.25),
        mfrow = c(2, 2),
        mar = c(4, 4, 2, 2)
    )
    
    with(power_consumption,
         plot(datetime, Global_active_power,
              type = 'l',
              xlab = '',
              ylab = 'Global Active Power'))
    
    with(power_consumption,
         plot(datetime, Voltage,
              type = 'l',
              xlab = 'datetime',
              ylab = 'Voltage'))
    
    with(power_consumption,
         plot(datetime, Sub_metering_1,
              type = 'l',
              col = 'black',
              xlab = '',
              ylab = 'Energy sub metering'
         )
    )
    
    with(power_consumption, lines(datetime, Sub_metering_2, col = 'red'))
    with(power_consumption, lines(datetime, Sub_metering_3, col = 'blue'))

    legend('topright',
           bty = 'n',
           lty = c(1, 1),
           col = c('black', 'red', 'blue'),
           legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3')
    )
    
    with(power_consumption,
         plot(datetime, Global_reactive_power,
              type = 'l',
              xlab = 'datetime',
              ylab = 'Global Rective Power'))
})