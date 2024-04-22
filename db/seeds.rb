require 'faker'

# Clear existing data
Run.destroy_all
Shoe.destroy_all
User.destroy_all
Waiver.destroy_all

# Create sample shoes
50.times do
  Shoe.create!(
    size: %w[7 8 9 10 11 12].sample,
    brand: Faker::Company.name,
    model: Faker::Commerce.product_name,
    mileage: '0' # or any default mileage you want
  )
end

# Create sample users with associated shoes
50.times do
  user = User.create!(
    email: Faker::Internet.unique.email,
    password: 'password',
    username: Faker::Internet.unique.username,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    bottom_size: %w[S M L].sample,
    top_size: %w[S M L].sample,
    pronation_level: %w[neutral overpronation underpronation].sample,
    admin: false,
    avatar: nil,
    shoe_id: Shoe.all.sample.id
  )
  user.save!
end

50.times do
  Run.create!(
    distance: "#{rand(1..10)} miles",
    name: Faker::Lorem.words(number: 3).join(' '),
    user_id: User.all.sample.id,
    route: Faker::Address.street_address,
    waivers_count: rand(0..10),
    user_runs_count: rand(0..10)
  )
end


puts "50 sample users with associated shoes created successfully!"
