library(shiny)
shinyUI(fluidPage(
  titlePanel("Survive, or not survieve. That is the question."),
  
  
  fluidRow(
    column(3, 
           textInput("Name", label = h3("First Name:"), 
                     value = "Dave")), 
    
    column(3, 
           textInput("Second", label = h3("Second Name:"), 
                     value = "Smith")),
    column(3,
           selectInput("title", label = h3("Tytuł:"), 
                       choices = list("Master", "Miss",
                                      "Mr", "Mrs", 'Unusual Title'), selected = "Master")),
    column(3,
           selectInput("port", label = h3("Port"), 
                       choices = list("C" , "Q",
                                      "S" )))
    
  ),
  
  fluidRow(
    
    column(3,
           radioButtons("plec", label = h3("Sex:"),
                        choices = list("male" = "male", "female" = "female"),selected = "female")),
    
    column(3,
           selectInput("class", label = h3("Passenger Class:"), 
                       choices = list("1st Class" = 1, "2nd Class" = 2,
                                      "3rd Class" = 3), selected = 1)),
    
    column(3, 
           sliderInput("age", label = h3("Age"),
                       min = 0, max = 100, value = 35)
    )
    
     
  ),
  fluidRow( 
    column(3,
           submitButton("Click to Check")) 
  ),
  fluidRow( column(12,
         mainPanel( h3(textOutput("ResultofSurvived")))
  )
  
)))

