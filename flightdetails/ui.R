library(shiny)

shinyUI(
  basicPage(
    titlePanel("Random Normal"),
    sliderInput(inputId = "sample_num", label = "Number of samples", min = 10, max = 100, step = 5)
    plotOutput("normal_plot")
  )
)
