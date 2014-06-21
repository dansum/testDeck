# 1. Set up the environment
library(shiny)
require("RJSONIO")
require("stringr")
require("RCurl")
# 2. Load the input data of Youtube IDs
id <- c("IrdMDufjFvg", "00fv7xEGbv8", "cA19Bjtk4T8", "K0UOZyG1_gw", "Goi_ucJwHWc")
view <- c(121,593,299,34,3945)
like <- c(5,3,7,2,11)
favorite <- c(3,2,9,1,21)
stats <- data.frame(id,view,like,favorite)

# 5. Make the server side of the Shiny App
shinyServer(
  function(input,output) {
    # video_measure <- input$measure
    # output$stat_out <- stats[videoid_index(), video_measure()]
    output$videoid_out <- renderText({input$videoid})
    output$measure_out <- renderText({input$measure})
  #  stat_out_temp <- reactive({
  #    stat_out_temp <- stats[stats['id']==input$videoid,"view"] # stats["id"]==input$videoid      
  #  })
    output$stat_out <- renderText({stats[stats["id"]==input$videoid,input$measure]})
  #  benchmark <- renderText({input$measure})
    output$bench_diff_out <- renderText({input$benchmark - stats[stats["id"]==input$videoid,input$measure]})
  }
)
