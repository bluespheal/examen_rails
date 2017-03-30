class BookingsController < ApplicationController
  before_action :check_unique, only: :bookp

  def bookp
    flight = Flight.find(params[:booking][:flight_id])
    @book = Booking.new(book_params)
    if @book.save
      flight.update_attribute(:passengers, (flight.passengers + (params[:booking][:passengers]).to_i))
      redirect_to book_path
    end
  end

  def bookv
    @book = Booking.order("created_at").last
  end

  def check_unique
    user = current_user
    flight = Flight.find(params[:booking][:flight_id])
    if Booking.find_by(user_id: user.id, flight_id: flight.id)
      flash[:danger] = "Ya tienes una reservación en este vuelo"
      redirect_to root_url
    end
  end

  private 

    def book_params
      params.require(:booking).permit(:num_booking, :total, :flight_id, :user_id) 
    end

end
