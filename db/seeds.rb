price_range = (10..40).to_a
name_roll = [:character, :house, :city]

40.times do |x|
  roll = Faker::GameOfThrones.send(name_roll.sample) + " Roll"

  Sushi.create(name: roll,
               description: Faker::Hipster.paragraph,
               price: price_range.sample)
end