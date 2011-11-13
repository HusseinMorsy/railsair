class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
  end
  
  def create
    @flight = Flight.find(params[:flight_id])
    @booking = @flight.bookings.create(params[:booking])
    redirect_to [@flight, @booking]
  end
end
