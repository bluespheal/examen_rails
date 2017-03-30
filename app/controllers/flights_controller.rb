class FlightsController < ApplicationController

  def found
    para = params[:flight]
    lugares = 60 - (para[:passengers]).to_i
    @flights = Flight.where(from: para[:from], to: para[:to], date: para[:date])
    @flights = @flights.where("passengers <= ?", lugares)
  end

  def startbook
    p select = (params[:flight][:number]).to_i - 1
    p saved = params[:flight][:saved].split(" ")
    @flight = Flight.find(saved[select])
  end

  def details
    books = Booking.where(user_id: current_user.id)

    @user_flights = Flight.where(id: books.first.flight_id)
  end

end
