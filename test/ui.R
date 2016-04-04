library(shiny)

shinyUI(
  basicPage(
    titlePanel("Random Normal"),
    sliderInput(inputId = "sample_num", label = "Number of samples", min = 100, max = 1000, step = 50, value = 500),
    plotOutput("normal_plot")
  )
)
