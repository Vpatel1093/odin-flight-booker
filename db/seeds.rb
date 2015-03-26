# Airports
codes = %w(NYC SFO WAR LON ROM POZ)
codes.each { |code| Airport.create(code: code) }

# Flights
Flight.create(from_airport_id: 1, to_airport_id: 2, departure: 2.days.ago, duration: 3)
Flight.create(from_airport_id: 3, to_airport_id: 5, departure: 6.days.from_now, duration: 1)
Flight.create(from_airport_id: 6, to_airport_id: 1, departure: 2.days.from_now, duration: 2)
Flight.create(from_airport_id: 1, to_airport_id: 3, departure: 4.days.ago, duration: 5)
Flight.create(from_airport_id: 2, to_airport_id: 3, departure: 2.days.from_now, duration: 2)
