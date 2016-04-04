library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  data_vec <- reactive({
    data.frame(x = rnorm(input$sample_num))
  })
  output$normal_plot = renderPlot(
		ggplot(data_vec(), aes(x=x)) + geom_histogram(binwidth = 0.2)
	)
})