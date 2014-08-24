
shinyUI(navbarPage("Make a boxplot",

tabPanel("Enter data",
shinyUI(fluidPage(
titlePanel(""),
sidebarLayout(
sidebarPanel( "Define random sample:",br(),br(),br(),
numericInput("obs",label = h4("Number of observations"), 
value = 100),
numericInput("m",label = h4("Mean"),value=10),
numericInput("s",label = h4("Standard deviation"),value=3),
br(),br(),br(),br()
),
mainPanel(h4("Boxplot"),fluidRow(
plotOutput("plot1")
))
)
))),         
tabPanel("About",
         h4("Boxplot of a random sample using the normal distribution.",align= "center"),
         br(),
         br(),
         br(),
         p("This application creates a boxplot of a random sample. The sample data are created using normal distribution  after entering the parameters: number of observations, mean and standard deviation."),
         br(),
         br(),
         br(),
         br(),
         br(),
         img(src = "bigorb.png", height = 72, width = 72), a("Shiny",href = "http://www.rstudio.com/shiny")," is a product of ", a("RStudio",href = "http://www.rstudio.com")))


) 
