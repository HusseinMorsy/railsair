# encoding: utf-8

Gegebensei /^ein Flug "([^"]*)" mit (\d+) freien Plätzen$/ do |nr,seats|
  Flight.create(nr: nr, max_seats: seats)
end

Wenn /^ich den Flug "([^"]*)" auswähle$/ do |flight_nr|
  visit flights_path
  click_link flight_nr
end

Wenn /^ich meine Personalien eingebe$/ do
  pending # express the regexp above with the code you wish you had
end

Wenn /^ich bezahle$/ do
  pending # express the regexp above with the code you wish you had
end

Dann /^soll ich eine Buchungsbestätigung erhalten$/ do
  pending # express the regexp above with the code you wish you had
end

Dann /^soll mir angezeigt werden, dass der Flug ausgebucht ist$/ do
  pending # express the regexp above with the code you wish you had
end