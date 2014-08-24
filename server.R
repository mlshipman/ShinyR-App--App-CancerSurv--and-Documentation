#Cancer Survival Calc App for R - Shiny Server Script
#Based on American Cancer Society Survival Data from 2006 to 2010

#MLS, Aug 18, 2014

#Required library loads
library(shiny)
library(xlsx)

#Loads ACS cancer development and death rates dataset from .xlsx file.
acsdata <- read.xlsx("ACSDiagData.xlsx",
                     sheetIndex = 1,
                     header = TRUE)

#Define the server functions
shinyServer(
        function(input, output){
                #Generates the selected site output.
                output$siteID <- renderText(paste("Selected Site: ", input$site))
                
                #Generates the special notes output based on site selected.
                output$SpNote <- renderText(as.character(acsdata$Notes[(acsdata$Site == input$site)][2]))
                
                #Generates the Prob of development for Women at the selected site.
                PrDevWmn <- function(){
                        return(as.numeric(as.character(
                        (acsdata[which(acsdata$Site == input$site & acsdata$Gender == "Female", arr.ind=TRUE), 3])
                        )))
                }
                
                #Generates the output for Prob of development for women at the selected site.
                output$DevWmn <- renderText(paste("Probability of Development for Women: ", PrDevWmn(), "%"))
                
                #Generates the Prob of development for Men at the selected site.
                PrDevMn <- function(){
                        return(as.numeric(as.character(
                        (acsdata[which(acsdata$Site == input$site & acsdata$Gender == "Male", arr.ind=TRUE), 3])
                        )))
                }
                
                #Generates the output for Prob of development for women at the selected site.
                output$DevMn <- renderText(paste("Probability of Development for Men: ", PrDevMn(), "%"))
                
                #Generates the Prob of death for Women at the selected site.
                PrDthWmn <- function(){
                        return(as.numeric(as.character(
                        (acsdata[which(acsdata$Site == input$site & acsdata$Gender == "Female", arr.ind=TRUE), 5])
                        )))
                }
                
                #Generates the output for Prob of death for women at the selected site.
                output$DthWmn <- renderText(paste("Probability of Death for Women: ", PrDthWmn(), "%"))
                
                #Generates the Prob of death for Men at the selected site.
                PrDthMn <- function(){
                        return(as.numeric(as.character(
                        (acsdata[which(acsdata$Site == input$site & acsdata$Gender == "Male", arr.ind=TRUE), 5])
                        )))
                }
                
                #Generates the output for Prob of death for Men at the selected site.
                output$DthMn <- renderText(paste("Probability of Death for Men: ", PrDthMn(), "%"))
                
                #Calculates the woman's survival probability if developed cancer at the selected site.
                PrSrvlWmn <- function(){
                        return(round((1 - (PrDthWmn()/PrDevWmn()))*100, 2))
                }
                
                #Generates the output for Prob of survival for women at the selected site.
                output$SrvlWmn <- renderText(paste("Probability of Survival for Women: ", PrSrvlWmn(), "%"))
                
                #Calculates the man's survival probability if developed cancer at the selected site.
                PrSrvlMn <- function(){
                        return(round((1 - (PrDthMn()/PrDevMn()))*100, 2))
                }

                #Generates the output for Prob of survival for men at the selected site.
                output$SrvlMn <- renderText(paste("Probability of Survival for Men: ", PrSrvlMn(), "%"))
                
        }
)