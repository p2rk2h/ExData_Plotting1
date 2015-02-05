source( 'pj1data.R' )

plot4 <- function( data = NULL , dates = c( '2007-02-01' , '2007-02-02' ) ) {
	if ( is.null( data ) )
		data <- pj1data( dates )

	# relative to directory 'ExData_Plotting1'
	png( 'figure/plot4.png' , width = 480 , height = 480 )

	par( mfrow = c( 2 , 2 ) )

	# 1:1 plot
	plot( data$Time , data$Global_active_power , type = 'l' ,
		xlab = '' , ylab = 'Global Active Power' )

	# 1:2 plot
	plot( data$Time , data$Voltage , type='l' ,
		xlab = 'datetime' , ylab = 'Voltage' )

	# 2:1 plot
	plot( data$Time , data$Sub_metering_1 , type = 'l' ,
		xlab = '' , ylab = 'Energy sub metering' )
	lines( data$Time , data$Sub_metering_2 , col = 'red' )
	lines( data$Time , data$Sub_metering_3 , col = 'blue' )
	legend( 'topright' , col = c( 'black' , 'red' , 'blue' ) ,
		paste( 'Sub_metering' , 1:3 , sep = '_' ) ,
		lty = 1 , box.lwd = 0 )

	# 2:2 plot
	plot( data$Time , data$Global_reactive_power , type='n' ,
		xlab = 'datetime' , ylab = 'Global_reactive_power' )
	lines( data$Time , data$Global_reactive_power )

	dev.off( )
}
