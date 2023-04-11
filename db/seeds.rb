
Restaurant.destroy_all
Review.destroy_all

puts 'Creating 20 fake restaurants...'
20.times do
  restaurant = Restaurant.new(
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w[chinese italian japanese french belgian].sample
  )
  restaurant.save!

  5..10.times do
    review = Review.new(
      content: Faker::Restaurant.review,
      rating: rand(0..5),
      restaurant: restaurant
    )
    review.save!
  end
end
puts 'Finished!'
