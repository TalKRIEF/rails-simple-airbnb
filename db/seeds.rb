puts "ON VA TOUT CASSER"
Flat.destroy_all

puts "Allez on génère des nouveaux trucs"
puts ".................................."

30.times do |flat|
  Flat.create!(
  name: Faker::University.name,
  address: Faker::Address.street_address,
  description: Faker::Movie.quote,
  price_per_night: Faker::Number.number(digits: 2),
  number_of_guests: rand(1..8)
  )
end

puts '.......................'
puts "done"
