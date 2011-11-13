# encoding: utf-8

Gegebensei /^ein Flug "([^"]*)" mit (\d+) freien Plätzen$/ do |nr,seats|
  Flight.create(nr: nr, max_seats: seats)
end

Wenn /^ich den Flug "([^"]*)" auswähle$/ do |flight_nr|
  visit flights_path
  click_link flight_nr
  page.should have_content("Booking of RA-448")
end

Wenn /^ich meine Personalien eingebe$/ do
  fill_in :name, with: "Luke Skywalker"
  fill_in :email, with: "luke@lucasarts.com"
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