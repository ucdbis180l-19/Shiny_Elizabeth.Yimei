#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Test App"),
  
  helpText("This should plot either amylose content or protein content by region"),
   
  sidebarLayout(
    sidebarPanel(
       radioButtons("trait", "Pick a trait to graph:", c("Amylose.content", "Protein.content")) 
    ),
    
    
    mainPanel(plotOutput("boxPlot")))))
  

