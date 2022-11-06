# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
# user1 = User.create(name: Faker::Name.name)
# user2 = User.create(name: Faker::Name.name)
# user3 = User.create(name: Faker::Name.name)  

user1 = User.create(name: "Brain")
user2 = User.create(name: "Sheilah")
user3 = User.create(name: "Linah")
user4 = User.create(name: "Kelvin")
user5 = User.create(name: "John")

puts "Creating products..."
product1 = Product.create(name: "Stapler", price: 10)
product2 = Product.create(name: "Whiteboard", price: 15)
product3 = Product.create(name: "Dry Erase Markers", price: 5)
product4 = Product.create(name: "Ballpoint Pens", price: 2)
product5 = Product.create(name: "Scotch Tape", price: 3)

puts "Creating reviews..."
Review.create(star_rating:4, comment:"Affordable", product_id: 4, user_id: 1)
Review.create(star_rating:5, comment:"Expensive",   product_id: 2, user_id: 3)
Review.create(star_rating:8, comment:"Best so far",   product_id: 3, user_id: 2)
Review.create(star_rating:3, comment:"Big pins",    product_id: 4, user_id: 5 )
Review.create(star_rating:9, comment:"Quality check",     product_id: 5, user_id: 1)
Review.create(star_rating:6, comment:"Good pins",    product_id: 2, user_id: 5 )
Review.create(star_rating:1, comment:"Bad",    product_id: 1, user_id: 4 )
Review.create(star_rating:7, comment:"Quality not bad",     product_id: 2, user_id: 1)


# *****************************************************************
# * TODO: create reviews! Remember, a review belongs to a product *
# * and a review belongs to an user.                              *
# *****************************************************************
# Create Reviews Here

puts "Seeding done!"