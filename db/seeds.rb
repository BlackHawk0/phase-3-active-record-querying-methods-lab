# require 'faker'

puts "Seeding shows ..."

30.times do 
    Show.create(
        name: Faker::Book.title,
        network: Faker::Company.name,
        day: Faker::Date.between(from: 2.days.ago, to: Date.today),
        rating: Faker::Number.between(from: 1, to: 10),
        season: Faker::Number.between(from: 1, to: 10)
    )

end

puts "Done seeding!"
