class Seed::Item

  def self.generate(number)
    number.times do |i|
      item = Item.create!(
        name: Faker::Commerce.product_name,
        description: Faker::Lorem.paragraph,
        image_url: "http://robohash.org/#{i}.png?set=set1&size=200x200"
        )
    end
    puts "Your moms items are here"
  end

end
