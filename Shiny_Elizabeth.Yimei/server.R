#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   rice.pheno<-read.csv("/home/ubuntu/Desktop/hw/4/data.pheno.mds.csv")
   rice.pheno <- rice.pheno %>% mutate(assignedPop=as.character(assignedPop))
   
     output$boxplot <- renderPlot({
       # set up the plot
       
       pl <- ggplot(data = rice.pheno,
                    #Use aes_string below so that input$trait is interpreted
                    #correctly.  The other variables need to be quoted
                    aes_string(x=input$category,
                               y=input$trait,
                               fill=input$category)
       )
       # draw the boxplot for the specified trait
       pl + geom_boxplot()
     })

     output$violinplot <- renderPlot({
       # set up the plot
       
       pl <- ggplot(data = rice.pheno,
                    #Use aes_string below so that input$trait is interpreted
                    #correctly.  The other variables need to be quoted
                    aes_string(x=input$category,
                               y=input$trait,
                               fill=input$category))
       
       # draw the boxplot for the specified trait
       pl + geom_violin()
       
     })

  
})