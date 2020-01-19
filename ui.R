dashboardPage(
  dashboardHeader(title = "Financial analysis"),
  dashboardSidebar(),
  dashboardBody(
    fluidRow(
      box(
        title = "STOCK",
        selectInput("symbols",label = NULL, choices =symbols,selected=sample(symbols,1))
      ),#BOX SYMBOLS
      box(
        title="PERIOD",
        dateRangeInput("dates", 
                       "Date range",
                       start = "2015-01-01", 
                       end = as.character(Sys.Date()))  
        ),#BOX PERIOD
      box(
        submitButton("Analysis")
        )#BOX RUN
    ),#fluid row
    fluidRow(
      box(
        title = "TYPE",
        selectInput("type",label = NULL, choices =type,selected="auto")
      ),
      box(
        title="TA",
        selectInput("ta", label=NULL,choices=ta,multiple = T)
      ),
      box(
        title="GRAPH",
        plotOutput('graph')
      )
    )
  )#dashboard body
)#dashboard page
