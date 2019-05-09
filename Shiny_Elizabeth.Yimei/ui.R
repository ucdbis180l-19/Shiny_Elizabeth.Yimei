
library(shiny)
library(tidyverse)
options <- c("Boxplot", "Violin.Plot")

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Amylose or Protein Content by Region or Assigned Population"),
  
  helpText("This will plot either amylose content or protein content of rice plants by region or population assigned based on SNPs."),
   
  sidebarLayout(
    
       sidebarPanel(radioButtons("trait", "Pick a trait to graph:", c("Amylose.content", "Protein.content" )),
    radioButtons("category", "Pick a category to graph trait against", c("Region", "assignedPop")), selectInput("plot", "plot type", options)), 
    
    
    mainPanel(plotOutput("boxPlot")))))
  

