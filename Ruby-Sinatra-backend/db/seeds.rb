puts "🌱 Seeding spices..."


# Seed your database here

User.create(name: Faker::Name.name, funds: 1000 )

5.times do
    Stock.create(
        name: Faker::Finance.ticker,
        logo_url: Faker::Company.logo,
        price: rand(1..1000),
        user_id: 0
    )
end

Stock.create(
        name: Faker::Finance.ticker,
        logo_url: Faker::Company.logo,
        price: rand(1..1000),
        user_id: User.first.id
)

puts "Seeding done!"
