library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
	vec <- rnorm(input$sample_num)	
	output$normal_plot = renderPlot(
		ggplot(vec) + geom_histogram(binwidth = 0.05)
	)
})
