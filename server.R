
#library(datasets)
library(shiny)
library(DT) #affiche la table de donnees et fournit des fonctions de filtrage, de tri 
# Define a server for the Shiny app

function(input, output) {
  
  # remplir l'endroit cree pour le plot 
  output$graph <- renderPlot({
    
    # Render a barplot (graphe en bar), pie 
    barplot(tab[,input$region], 
            main=input$region,
            ylab="emission CO2",
            xlab="Year",
            names.arg=row.names(tab)
            )
  })
  
  output$summary = renderPrint({ 
    summary (tab[,input$region])
    
    })
  output$table <- DT::renderDataTable({
    DT::datatable(tab)
  }) 
  
}
