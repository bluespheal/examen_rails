Rails.application.routes.draw do
  root 'static_pages#home'
  get 'static_pages/home'
end

# Un User puede tener muchos Flights.
# Un Flight puede tener muchos Users.
# Un Flight tiene muchas Bookings.
# Una Booking pertenece a un solo Flight.
# Una Booking tiene muchos Users.
# Un User tiene muchas Bookings.

