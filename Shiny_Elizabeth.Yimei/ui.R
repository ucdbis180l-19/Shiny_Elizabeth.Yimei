
library(shiny)
library(tidyverse)
options <- c("boxplot", "violin")

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Amylose or Protein Content by Region or Assigned Population"),
  #tells user what app does
  helpText("This will plot either amylose content or protein content of rice plants by region or population assigned based on SNPs."),
   
  sidebarLayout(#controls layout of sidebar
    
       sidebarPanel(radioButtons("trait", "Pick a trait to graph:", c("Amylose.content", "Protein.content" )), #gives ability to pick either amylose content or protein content to graph
    radioButtons("category", "Pick a category to graph trait against", #gives option to 
                 c("Region", "assignedPop")), selectInput("plot", "plot type", options)), 

    
    mainPanel(conditionalPanel(condition = "input.plot == 'boxplot'", plotOutput("boxplot")), conditionalPanel(condition= "input.plot== 'violin'", plotOutput("violinplot"))))))
  

