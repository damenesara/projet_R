#recuperer un cube olap a partir de lentrepot en ligne (grace a des requetes sql) , et contruire des analyses normales sous R sur ce cube
#library(datasets)
#library(markdown)
# Use a fluid Bootstrap layout
fluidPage(    
  
#Navbar pour creer des navigations
navbarPage("Decouvrir",
           
           
 tabPanel("Plot",
          # Give the page a title   
          tags$head(
            tags$style(HTML("
                            h1 {
                            font-family: 'Lobster', cursive;
                            font-weight: 500;
                            line-height: 1.1;
                            color: #48ca3b;
                            }
                            
                            "))
            ),
  headerPanel("emission CO2 by region"),
  

  # generer un endroit pour tout, sidebalayout(sidebarPanel,mainPanel)
  sidebarLayout(      
    
    # Define the sidebar with one input
    sidebarPanel(
      selectInput("region", "Region:", 
                  choices=colnames(tab)),
      hr(),
      helpText("vvghbh jhhnhjk,.")),  #fin de sidebarPanel
    
    
    
    # creer un endroit pour le plot
    mainPanel(
      plotOutput("graph")  
    )
    
  )
),
tabPanel("Statistiques", verbatimTextOutput("summary")),

navbarMenu("More",
           tabPanel("Table",
                    DT::dataTableOutput("table")
           ))

)
)
