## Script om de examens te genereren

## Cree??r een examen met een aantal vragen.
# De vector die je als argument meegeeft bevat de mogelijke vragen 
## voor het examen
# Indien je een random vraag wil uit een selectie, moet je die meegeven als vector als element in de lijst
library(exams)
myexam <- list(
  "swisscapital.Rmd",
  c("vervalstedobbelsteen.Rmd","maten.Rmd"),
  "grafen.Rmd",
  "toposort.Rmd"
)


## Genereer n examens in een outputdirectory
## - opgave heet pdf-examen_n (met n volnummer)
## - oplossing heeft pdf_oplossing_n (met n volgnummer)
##
## De opgaves staan in de directory exercises
## De templates voor het examen staan in de directory templates
exams2pdf(myexam, n = 1, name = c("pdf-examen", "pdf-oplossing"),
          encoding = "UTF-8",
          showpoints = "TRUE",
          dir = "output",
          edir = "oefeningen",
          inputs = "/Users/eothein/education/examentest/templates/hogent-examen.sty",
          template = c("templates/opgave.tex", "templates/oplossing.tex"),
         )

