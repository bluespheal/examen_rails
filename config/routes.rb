Rails.application.routes.draw do
  root 'static_pages#home'
  get 'signup', to: "users#new"
  post '/signup',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
end

# Un User puede tener muchos Flights.
# Un Flight puede tener muchos Users.
# Un Flight tiene muchas Bookings.
# Una Booking pertenece a un solo Flight.
# Una Booking tiene muchos Users.
# Un User tiene muchas Bookings.

#$ rails db:migrate:reset
