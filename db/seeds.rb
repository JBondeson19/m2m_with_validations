# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

goods = []
50.times do 
    goods << Good.create(name: Faker::Dessert.variety,
                price: rand(1.00...100.00),
                calories: rand(50...500)
                )   
end

10.times do 
    BakeShop.create(name: Faker::Games::Pokemon.move + " Bake Shop",
                  city: Faker::Games::DnD.city,
                  phone_number: Faker::PhoneNumber.cell_phone,
                  goods: goods.sample(5)
    )
end
   