# proj1: read, prepare, and subset data for given dates in %Y-%m-%d format

pj1data <- function( dates ) {	# array of dates
	data <- read.table( 'household_power_consumption.txt' , header = TRUE , sep = ';' , na = '?' )	# hardcoded input file here

        data$Time <- strptime( paste( data$Date , data$Time ) , '%d/%m/%Y %H:%M:%S' )	# convert Date and Time's known input format into POSIXlt Time
        data$Date <- as.Date( data$Date , '%d/%m/%Y' )	# convert to Date

	# return subset for desired dates
        subset( data , Date %in% as.Date( dates , '%Y-%m-%d' ) )
}
