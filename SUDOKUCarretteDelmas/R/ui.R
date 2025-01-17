library(shiny)
library(shinyMatrix)

#' Coté client de l'app shiny sudoku
#'@author Camille Carrette Jean Charles Delmas
#'@import shiny
#'@import shinyMatrix
#'@export


ui <- fluidPage(

  #Tire
  headerPanel('SUDOKU'),

  #Choix des options et bouton de g?n?ration des diff?rentes grilles
  sidebarPanel(
    selectInput('level','Choix de la difficult?',c('facile','difficile')),
    selectInput('Choixgrille','Choix de la grille',c('complete','incomplete')),
    actionButton('genGrille','Génération du sudoku')
  ),

  #Grille
  mainPanel(
    #Panel de la grille
    conditionalPanel(condition = "input.genGrille > 0", uiOutput(outputId = "displayGrid")),
    textOutput("Resultat"),
    conditionalPanel(condition = "input.solve > 0", uiOutput(outputId = "displaySolve")),
  )
)
