function(input, output) { 
  
  data <- reactive({
    
    na.omit(getSymbols(input$symbols, from=input$dates[1] ,to=input$dates[2] , auto.assign = F) [,4])
    
  })#data
    
  
  output$graph <- renderPlot({
    
    chartSeries(data(),type=input$type,TA=paste0(input$ta,sep=";"))
    
  })
}#function

