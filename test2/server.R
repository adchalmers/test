library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  data_vec <- reactive({
    data.frame(x = runif(input$sample_num))
  })
  output$unif_plot = renderPlot(
		ggplot(data_vec(), aes(x=x)) + geom_histogram(binwidth = 0.2)
	)
})