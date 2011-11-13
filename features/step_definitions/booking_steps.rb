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
  fill_in "Name", with: "Luke Skywalker"
  fill_in "Email", with: "luke@lucasarts.com"
end

Wenn /^ich bezahle$/ do
  click_button "pay"
end

Dann /^soll ich eine Buchungsbestätigung für den Flug "([^"]*)" erhalten$/ do |nr|
  page.should have_content("Your booking confirmation")
  flight = Flight.find_by_nr(nr)
  flight.should have(1).bookings
  booking = flight.bookings.first
  booking.name.should == "Luke Skywalker"
  booking.email.should == "luke@lucasarts.com"
end

Dann /^soll mir angezeigt werden, dass der Flug ausgebucht ist$/ do
  pending # express the regexp above with the code you wish you had
end