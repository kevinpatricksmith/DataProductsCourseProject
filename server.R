library(shiny)

shinyServer(
  function(input, output) {
     output$Accuracy <- renderPrint(({input$tp_dp}+{input$tn_dn})/({input$tp_dp}+{input$tp_dn}+{input$tn_dp}+{input$tn_dn})*100)
     output$Sensitivity <- renderPrint({input$tp_dp}/({input$tp_dp}+{input$tn_dp})*100)
     output$Specificity <- renderPrint({input$tn_dn}/({input$tp_dn}+{input$tn_dn})*100)
     output$PrevalenceInPop <- renderPrint(({input$tp_dp}+{input$tn_dp})/({input$tp_dp}+{input$tp_dn}+{input$tn_dp}+{input$tn_dn})*100)
     
  }
)
