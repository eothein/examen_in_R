## Script om de examens te genereren

## Cree??r een examen met een aantal vragen.
# De vector die je als argument meegeeft bevat de mogelijke vragen 
## voor het examen
# Indien je een random vraag wil uit een selectie, moet je die meegeven als vector als element in de lijst
library(exams)

## We zetten de seed op 0, om altijd dezelfde examens te genereren.
set.seed(0)

myexam <- list(
  "swisscapital.Rmd",
  c("vervalstedobbelsteen.Rmd","maten.Rmd"),
  "grafen.Rmd",
  "toposort.Rmd"
)

#Bepaal het aantal vragen dat elk examen heeft
aantalVragen <- length(myexam)
numberExams <- 2

## Genereer n examens in een outputdirectory
## - opgave heet pdf-examen_n (met n volnummer)
## - oplossing heeft pdf_oplossing_n (met n volgnummer)
##
## De opgaves staan in de directory exercises
## De templates voor het examen staan in de directory templates
examens <- exams2pdf(myexam, n = numberExams, name = c("pdf-examen", "pdf-oplossing"),
          encoding = "UTF-8",
          showpoints = "TRUE",
          dir = "output",
          edir = "oefeningen",
          inputs = "/Users/eothein/education/examentest/templates/hogent-examen.sty",
          template = c("templates/opgave.tex", "templates/oplossing.tex"),
       )
#Genereer een dataframe voor de antwoorden
# vraagNamen <- sprintf("Vraag %s",seq(1:aantalVragen))
# answers <- as.data.frame(matrix(0, ncol = aantalVragen, nrow = numberExams))
# names(answers) <- vraagNamen



## Itereer over alle examens
# for(i in 1:length(examens)){
#   ## Examen extraheren
#   ex <- examens[[i]]
#   for(j in 1:aantalVragen){
#     vraag <- ex[[j]]
#     answers[i][j] = paste(vraag$metainfo[[16]])
#   }
# }
