create_plot <- function (name, fun) {
    header <- read.table('data/household_power_consumption.txt',
                         nrows = 1,
                         header = FALSE,
                         sep =';',
                         stringsAsFactors = FALSE)
    
    data <- read.table('data/household_power_consumption.txt',
                       skip = 66637,
                       nrows = 2880,
                       header = FALSE,
                       na.strings = '?',
                       sep = ';',
                       stringsAsFactors = FALSE)
    
    colnames(data) <- unlist(header)
    dates = apply(data[, c('Date', 'Time')], 1, function(d) {
        strptime(paste(d, collapse=' '), format = '%d/%m/%Y %H:%M:%S')
    })
    data$datetime <- do.call('c', dates)
    
    png(paste0(name, '.png'), 480, 480)
    par(pin = c(5, 5))
    
    fun(data)
    
    dev.off()
}


