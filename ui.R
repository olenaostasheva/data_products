shinyUI(pageWithSidebar(
        headerPanel("Example plot"),
        sidebarPanel(
                sliderInput('mu', 'Guess at the mean',value = 70, min = 56, max = 97, step = 0.5,)
        ),
        mainPanel(
                plotOutput('newHist')
        )
))

