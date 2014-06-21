library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Please input a YoutubeId from our pre-selection to see viewing data about that video."),
  sidebarPanel(
    h4("The videos are from Khan Academy’s translation in Bulgarian and this analysis will help you gauge interest in different videos, as measured by how often people actually watch them"),
    selectInput(inputId="videoid",label = "We have pre-selected video IDs for you",
                       choices = c("IrdMDufjFvg" = "IrdMDufjFvg",
                         "00fv7xEGbv8" = "00fv7xEGbv8",
                         "cA19Bjtk4T8" = "cA19Bjtk4T8",
                         "K0UOZyG1_gw" = "K0UOZyG1_gw",
                         "Goi_ucJwHWc" = "Goi_ucJwHWc")
                       ), # need a dynamic drop-down; if not dynamic, then choose 10 videos manually; or radio button)
    selectInput(inputId="measure", label = "Choose your favorite statistic to see",
                       choices = c("view" = "view",
                         "like" = "like",
                         "favorite" = "favorite")
                       ), # need a cynamic drop-down; if not dynamic, then choose 3 measures manually; or radio button)
    numericInput(inputId="benchmark",
                 label = "Provide a number that you want this measure to reach. This will be our benchmark",
                 0, min = 0, max = 1000, step=1),
    actionButton("goButton","Show me the Data")
  ),
  mainPanel(
    p('You selected this video ID:'),
    textOutput('videoid_out'),
    p('You selected this measure:'),
    textOutput('measure_out'),
    p('Current data:'),
    textOutput('stat_out'),
    p('This is how many more of the measure we need to reach your benchmark (negative if we beat your benchmark; error if you did not provide one):'),
    textOutput('bench_diff_out')
    # p('Testing Testing Testing'),
    # textOutput('videoid_index_test') # video_measure
  )
))
