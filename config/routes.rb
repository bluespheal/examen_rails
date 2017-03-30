Rails.application.routes.draw do
  root 'static_pages#home'
  get 'signup', to: "users#new"
  post '/signup',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get '/found', to: 'flights#found'
  get '/startbook', to: 'flights#startbook'
  get '/details', to: 'flights#details'

  get '/book', to: 'bookings#bookv'
  post '/book', to: 'bookings#bookp'

  resources :users
end

# Un User puede tener muchos Flights.
# Un Flight puede tener muchos Users.
# Un Flight tiene muchas Bookings.
# Una Booking pertenece a un solo Flight.
# Una Booking tiene muchos Users.
# Un User tiene muchas Bookings.

#$ rails db:migrate:reset


# class User < ApplicationRecord
#   has_many :bookings
#   has_many :flights, through: :bookings
# end
 
# class Booking < ApplicationRecord
#   belongs_to :user
#   belongs_to :flight
# end
 
# class Flight < ApplicationRecord
#   has_one :booking
#   has_many :users, through: :bookings
# end
