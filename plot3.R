source( 'pj1data.R' )

plot3 <- function( data = NULL , dates = c( '2007-02-01' , '2007-02-02' ) ) {
	if ( is.null( data ) )
		data <- pj1data( dates )

	# relative to directory 'ExData_Plotting1'
	png( 'figure/plot3.png' , width = 480 , height = 480 )

	plot( data$Time , data$Sub_metering_1 , type = 'l' ,
		xlab = '' , ylab = 'Energy sub metering' )
	lines( data$Time , data$Sub_metering_2 , col = 'red' )
	lines( data$Time , data$Sub_metering_3 , col = 'blue' )
	legend( 'topright' , col = c( 'black' , 'red' , 'blue' ) ,
		paste( 'Sub_metering' , 1:3 , sep = '_' ) , lty = 1 )

	dev.off( )
}
