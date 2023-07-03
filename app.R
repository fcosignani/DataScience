library(shiny)
library(readxl)

# Load the pre-trained logistic regression model
model <- readRDS("model_LR_kfcv.rda")

ui <- fluidPage(
  sidebarLayout(
    sidebarPanel(
      fileInput("file", "Subir el archivo test_pred.xlsx ubicado en la carpeta Data del proyecto."),
      actionButton("submit", "Submit")
    ),
    mainPanel(
      tableOutput("output"),
      verbatimTextOutput("prediction")
    )
  )
)

server <- function(input, output) {
  data <- reactiveValues(df = NULL)
  
  observeEvent(input$submit, {
    req(input$file)
    
    # Read the uploaded Excel file
    df <- read_excel(input$file$datapath)
    
    # Make predictions using the data frame
    predictions <- predict(model, newdata = df, type = "response")
    
    # Display the predictions
    output$prediction <- renderPrint({
      paste("Predictions:", paste(predictions, collapse = ", "))
    })
  })
  
  output$output <- renderTable({
    data$df
  })
}

shinyApp(ui, server)
