library(shiny)
library(data.table)
library(sbo)

#Load prediction model
sbo.model <- readRDS("sbo.model.rds")

# Define server 
shinyServer(function(input, output) {
      observe({ 
            txt <- as.character(input$text)
            output$result_output <-renderPrint({ 
                  predict(sbo.model, txt)
            
      if (query == '') {     
         output$predicted <- renderPrint(cat(''))
      } else {
        output$predicted <- renderPrint(cat(result, sep = '\n'))
                        }
                        
                
            })
      })    
})  


        
