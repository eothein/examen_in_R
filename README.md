# Skelet code om examens te genereren

Deze repo bevat een eerste aanzet om examens te genereren, gebruik maken van [R/Exams](http://www.r-exams.org/). Je kunt hiermee

- Willekeurig één (of meer) vragen selecteren uit een reeks oefeningen voor elke deelnemer.
- Willekeurig genereren van antwoorden en alternatieven in vragen met één keuze en meerkeuzevragen.
- Willekeurig nummers, tekstblokken, afbeeldingen enz. selecteren met de R-programmeertaal.
- Een (wiskundige) vraag volledig paramtriseren zodat deze voor elke student anders is.

Je genereert de examens door in `R` code in `generate.R` uit te voeren. Sequentieel.

## Selectie van de vragen
Je kan een selectie van vragen maken door de `list` aan te passen. Als een vraag enkelvoudig (niet als element van een vector) voorkomt, dan zit deze vraag zeker in het examen. In `generate.R` is dat bijvoorbeeld `swisscapital.Rmd`. Steek je de vraag in een vector, dan wordt random voor deze vraag op het examen, een vraag uit de vector gehaald. In ons voorbeeld is dat de vraag met de dobbelsteen, ofwel die van de (centrum-  en spreidings)maten `c("vervalstedobbelsteen.Rmd","maten.Rmd")`.

De vragen moeten in dir `oefenigen` staan om te kunnen genereren. 

De vragenexemplaren worden genereerd als `pdf-examen{volgnummer}` en de oplossingen worden gegenereerd als `pdf-oplossing{volgnummer}` in de map output. Bij de opgavebladeren wordt op het eerste blad een antwoordenblad gegenereerd die moet ingevuld worden door de studenten. Bij het antwoordenblad, staat dezelfde structuur, alleen met de oplossingen van de vragen erin genoteerd. Het komt er dan enkel op neer de antwoorden te vergelijken met elkaar bij het verbeteren. 

## Gebruik van R

Je kunt R praktisch alles laten berekenen, als je maar de juiste bibliotheen laadt. Voor de vragen rond grafen, wordt bv. de library `igraph` gebruik waardoor je grafen kunt plotten in het examen, korste paden kunt berekenen, topologische sorteringen kunt berekenen en veel meer. Hetzelfde voor LP-problemen, waardoor als je vragen generiek genoeg maakt je R een graaf kan laten genereren die voor elk examen anders (en dus de antwoorden op de vragen ook).

## TODO

Op dit moment wordt een erg eenvoudige template gebruikt om het vragenblad te genereren. Volgende stap is dit conform de template voorgesteld door HoGent op te maken. 

## Authors

- Jens Buysse


