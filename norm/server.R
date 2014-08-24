# server.R

shinyServer(function(input, output) {
  output$plot1<-renderPlot({
     d<-rnorm(input$obs,mean=input$m,sd=input$s)
     boxplot(d)
    })
    })

