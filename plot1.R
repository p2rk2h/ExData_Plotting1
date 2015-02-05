source( 'pj1data.R' )

plot1 <- function( data = NULL , dates = c( '2007-02-01' , '2007-02-02' ) ) {
	if ( is.null( data ) )
		data <- pj1data( dates )

	# relative to directory 'ExData_Plotting1'
	png( 'figure/plot1.png' , width = 480 , height = 480 )

	hist( data$Global_active_power , main = 'Global Active Power' ,
		xlab = 'Global Active Power (kilowatts)' , ylab = 'Frequency' ,
		col = 'red' )

	dev.off( )
}
