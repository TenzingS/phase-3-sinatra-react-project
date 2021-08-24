puts "🌱 Seeding spices..."

User.destroy_all
Stock.destroy_all

# Seed your database here

User.create(name: Faker::Name.name, funds: 1000 )

5.times do
    Stock.create(
        name: Faker::Company.name,
        price: rand(1..1000),
        user_id: 0
    )
end

puts "Seeding done!"
