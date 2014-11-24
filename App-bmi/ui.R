
library(shiny)

# ui.R

shinyUI(fluidPage(
        titlePanel("Body Mass Index (BMI)"),
        
        sidebarLayout(position = "right",
                sidebarPanel(h3("Your Body Mass Index Result"),
                             br(),
                             h4(textOutput("BMI")),
                             br(),
                             h4(textOutput("BMIcategory")),
                             br(),
                             textOutput("sweight"),
                             br(),
                             textOutput("minweight"),
                             br(),
                             textOutput("maxweight"),
                             br(),
                             textOutput("sheight"),
                             br(),
                             br(),
                             p("Please only rely on this calculated value if you are above 20 years old.")
                            
                             ),
                mainPanel(
                        p("Body Mass Index (BMI) is a number calculated from a person's weight and height. BMI is a fairly reliable indicator of body fatness for most people.[1]"),                                                                        
                        div("This App is designed to calculate your BMI and give you a classification category. To use the app please select your height and weigth below and make clic on the 'calculate' button", style = "color:blue"),
                        h3("Select your height and weight", aling = "center"),        
                        
                        # Include the slider bars for users in the main panel
                        sliderInput("height", label = h4("Height in centimeters (cm)"),
                                    min = 54, max = 260, value = 180, step = 1, width = "150%", animate = TRUE),
                        br(),
                        sliderInput("weight", label = h4("Weight in Kilograms (kg)"),
                                    min = 12, max = 560, value = 80, step = 0.1, width = "150%"),
                        br(),
                        br(),
                        br(),
                        submitButton(h4("calculate")),
                        br(),
                        br(),
                        br(),
                        p("[1] ", a("WHO", href = "http://apps.who.int/bmi/index.jsp?introPage=intro_3.html"), style = "font-family: 'times'; font-si8pt")
                        
                        
                        )
                             )
                )
        )
