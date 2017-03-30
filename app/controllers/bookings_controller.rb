class BookingsController < ApplicationController

  def bookp
    user = User.where(name: params[:nombre])
    flight = Flight.find(params[:booking][:flight_id])
    @book = Booking.new(book_params)
    if @book.save
      flight.update_attribute(:passengers, (flight.passengers + (params[:booking][:passengers]).to_i))
      redirect_to book_path
    else
      flash[:danger] = "Error al realizar Booking"
      render "startbook"
    end
  end

  def bookv
    @book = Booking.order("created_at").last
  end

  private 

    def book_params
      params.require(:booking).permit(:num_booking, :total, :flight_id, :user_id) 
    end

end
