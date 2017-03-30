User.create!(name:  "Juan",
             email: "bluespheal@gmail.com",
             password:              "secreto",
             password_confirmation: "secreto",
             admin: true)

4.times do |n|
  name  = Faker::Pokemon.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end



15.times do |n|
  date = Date.today
  time = Time.now.hour
  from = "CDMX"
  to = Faker::Address.state
  duration = rand(5..10)
  cost = [1500, 2000, 2500, 3000].sample
  passengers = rand(50..58)
  Flight.create!(num_flight: rand(10000..99999),
                 date: date,
                 depart: time,
                 from: from,
                 to: to,
                 duration: duration,
                 cost: cost,
                 passengers: passengers,
                 )

end