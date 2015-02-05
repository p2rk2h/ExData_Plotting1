source( 'pj1data.R' )

plot2 <- function( data = NULL , dates = c( '2007-02-01' , '2007-02-02' ) ) {
	if ( is.null( data ) )
		data <- pj1data( dates )

	# relative to directory 'ExData_Plotting1'
	png( 'figure/plot2.png' , width = 480 , height = 480 )

	plot( data$Time , data$Global_active_power , type = 'l' ,
		xlab = '' , ylab = 'Global Active Power (kilowatts)' )

	dev.off( )
}
