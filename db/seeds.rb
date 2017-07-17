# Este archivo sirve para crear registros de prueba
user1 = User.create(name: 'Juan Perez', email: 'juan@gmail.com', admin: false, password: 'hola')
user2 = User.create(name: 'Pedro Sánchez', email: 'pedrito@gmail.com', admin: false, password: 'hola')
user3 = User.create(name: 'Jose González', email: 'Josefo22@gmail.com', admin: false, password: 'hola')
user4 = User.create(name: 'Carla Herran', email: 'carla.herran@gmail.com', admin: true, password: 'hola')


flight1 = Flight.create(num_flight: 'A-5001', date: '2017-07-20', depart: '15:30:00', from: 'mexico', to: 'españa', duration: '07:45:00', cost: 5500.00, passengers: 30)
flight2 = Flight.create(num_flight: 'A-7145', date: '2017-08-16', depart: '06:45:00', from: 'paris', to: 'rusia', duration: '14:25:00', cost: 10300.00, passengers: 40)
flight3 = Flight.create(num_flight: 'A-8991', date: '2017-08-16', depart: '14:45:30', from: 'paris', to: 'rusia', duration: '10:40:00', cost: 13400.50, passengers: 25)
flight4 = Flight.create(num_flight: 'B-502', date: '2017-11-03', depart: '08:00:00', from: 'estambul', to: 'alemania', duration: '05:00:00', cost: 2324.75, passengers: 14)
flight5 = Flight.create(num_flight: 'B-801', date: '2017-10-16', depart: '19:45:00', from: 'mexico', to: 'india', duration: '20:00:00', cost: 15600.99, passengers: 37)
flight6 = Flight.create(num_flight: 'C-8410', date: '2017-08-16', depart: '08:30:00', from: 'paris', to: 'rusia', duration: '12:14:00', cost: 11370.00, passengers: 44)
flight7 = Flight.create(num_flight: 'Z-A455', date: '2017-08-16', depart: '13:35:00', from: 'paris', to: 'rusia', duration: '10:20:00', cost: 12345.00, passengers: 37)


booking1 = Booking.create(flight_id: flight1.id, num_booking: '030', total: 5500.00)
booking2 = Booking.create(flight_id: flight1.id, num_booking: '031', total: 5500.00)
booking3 = Booking.create(flight_id: flight1.id, num_booking: '032', total: 5500.00)

user_booking1 = UserBooking.create(user_id: user1.id, booking_id: booking1.id)
user_booking2 = UserBooking.create(user_id: user2.id, booking_id: booking2.id)
user_booking3 = UserBooking.create(user_id: user3.id, booking_id: booking3.id)

user_flight1_user1_flight1 = UserFlight.create(user_id: user1.id, flight_id: flight1.id)
user_flight2_user2_flight1 = UserFlight.create(user_id: user2.id, flight_id: flight1.id)
user_flight3_user3_flight1 = UserFlight.create(user_id: user3.id, flight_id: flight1.id)

