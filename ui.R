# load shiny package
library(shiny)
# begin shiny UI
shinyUI(pageWithSidebar(
      headerPanel("Word prediction model"),
      sidebarPanel(
            textInput(inputId="text1", label = "Enter up to four words"),
            actionButton("goButton", "Start")
      ),
      mainPanel(
            h3('Word(s) prediction'),
            p("Three possible predictions are shown below"),
            verbatimTextOutput("result_output")
            
      )
))