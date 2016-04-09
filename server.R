library(shiny)
data(airquality)


shinyServer(
        function(input, output) {
                output$newHist <- renderPlot({
                        hist(airquality$Temp, xlab='Temperature', col='lightblue',main='Histogram of Temperature')
                        mu <- input$mu
                        lines(c(mu, mu), c(0, 100),col="red",lwd=5)
                        mse <- mean((airquality$Temp - mu)^2)
                        text(60, 27, paste("mu = ", mu),col=2)
                        text(60, 24, paste("MSE = ", round(mse, 2)),col=2)
                })
        }
)

