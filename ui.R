### Coursera's Data Science Capstone : Final Project
### ui.R file for the Shiny app
### It builds required UI for Next Word Predictor application which accepts an n-gram and predicts the next word.

suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
library(png)
shinyUI(navbarPage("Coursera's Data Science Capstone: Final Project",
                   tabPanel("Next Word Predictor",
                            HTML("<strong>Author:Anish Raj</strong>"),
                            br(),
                            HTML("<strong>Date: 10 February 2020</strong>"),
                            br(),
                            img(src = "header_anish.PNG",height=50,width=400),
                            # Sidebar
                            sidebarLayout(
                                sidebarPanel(
                                    helpText("This application takes your string and predict the next word to your string"),
                                    textInput("inputString", "Enter your word or partial phrase here",value = ""),
                                    helpText("Once you finished typing your word or phrase, please click on the below button NextWord to suggest next expected word for your word or phrase"),
                                    submitButton('NextWord'),
                                    br(),
                                    br(),
                                    br(),
                                    br()
                                ),
                                mainPanel(
                                    h2("The suggested next word for your word or phrase is"),
                                    br(),
                                    strong("You entered the following word or phrase as Input to the application:"),
                                    verbatimTextOutput("prediction"),
                                    tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: blue;}'), 
                                    textOutput('text1')
                                )
                            )
                            
                   ),
                   tabPanel("Overview",
                            mainPanel(
                              img(src ="header_anish.PNG",height=50,width=400),
                              includeMarkdown("Overview.md"),
                              img(src = "app.png",height=300,width=800)
                            )
                   ),
                   tabPanel("Instructions",
                            mainPanel(
                              img(src = "header_anish.PNG",height=50,width=400),
                              includeMarkdown("Instructions.md")
                            )
                   )
                
)
)