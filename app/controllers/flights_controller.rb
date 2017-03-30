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
    if select >= saved.length || select < 0
      flash[:danger] = "Selecciona un numero de vuelo válido"
      redirect_to root_url
    else
      @flight = Flight.find(saved[select])
    end

  end

  def details
    @books = Booking.where(user_id: current_user.id)
  end

end
