# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

quilt1 = Product.new(name: "Blue Quilt", price: 300, size: "55in. x 55in.", image_url: "https://wombatquilts.files.wordpress.com/2014/01/baby-blue-quilt.jpg", description: "This is a blue quilt.")
quilt1.save

quilt2 = Product.new(name: "Red Quilt", price: 425, size: "46in. x 40in.", image_url: "http://images.allpeoplequilt.mdpcdn.com/sites/allpeoplequilt.com/files/styles/story_detail_enlarge/public/101521596_600w.jpg?itok=94WxyXTZ", description: "This is a red quilt.")
quilt2.save

quilt3 = Product.new(name: "Green Quilt", price: 275, size: "36in. x 36in.", image_url: "http://static-sympoz.s3.amazonaws.com/blog/2013/03/quilt-pattern-double-irish-chain.jpg", description: "This is a green quilt.")
quilt3.save

quilt4 = Product.new(name: "Black Quilt", price: 35, size: "2in. x 2in.", image_url: "https://mobileimages.lowes.com/product/converted/038398/038398750153.jpg", description: "This is small.")
quilt4.save
