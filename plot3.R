source('create_plot.R')

create_plot('plot3', function(power_consumption) {
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
           lty = c(1, 1),
           col = c('black', 'red', 'blue'),
           legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3')
    )
})