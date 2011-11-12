# language: de
Funktionalität: Buchung eines Railsair Fluges
  Als Passagier soll es möglich sein, einen Flug auf der 
  Website der Fluggesellschaft Railsair zu buchen.
  
  Szenario: Erfolgreich einen Flug buchen
    Gegeben sei ein Flug "RA-448" mit 10 freien Plätzen
    Wenn ich den Flug "RA-448" auswähle
    Und ich meine Personalien eingebe
    Und ich bezahle
    Dann soll ich eine Buchungsbestätigung erhalten

  Szenario: Das Buchen eines ausgebuchten Fluges soll nicht möglich sein
    Gegeben sei ein Flug "RA-448" mit 0 freien Plätzen
    Wenn ich den Flug "RA-448" auswähle
    Dann soll mir angezeigt werden, dass der Flug ausgebucht ist