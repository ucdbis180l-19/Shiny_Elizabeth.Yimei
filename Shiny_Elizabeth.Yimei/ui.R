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
  titlePanel("Amylose or Protein Content by Region or Assigned Population"),
  
  helpText("This will plot either amylose content or protein content of rice plants by region or population assigned based on SNPs."),
   
  sidebarLayout(
    
       sidebarPanel(radioButtons("trait", "Pick a trait to graph:", c("Amylose.content", "Protein.content" )),
    radioButtons("category", "Pick a category to graph trait against", c("Region", "assignedPop"))),
    
    
    mainPanel(plotOutput("boxPlot")))))
  

