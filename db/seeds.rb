
# encoding: utf-8
Product.delete_all
Product.create!(title: 'CoffeeScript',
  description: 
    %{<p>
        CoffeeScript is JavaScript done right. It provides all of JavaScripts
	functionality wrapped in a cleaner, more succinct syntax. In the first
	book on this exciting new language, CoffeeScript guru Trevor Burnham
	shows you how to hold onto all the power and flexibility of JavaScript
	while writing clearer, cleaner, and safer code.
      </p>},
  image_url:   'cs.jpg',    
  price: 36.00,
  categories: 'Essay')
# . . .
Product.create!(title: 'Programming Ruby 1.9 & 2.0',
  description:
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  image_url: 'ruby.jpg',
  price: 49.95,
  categories: 'Legend')
# . . .

Product.create!(title: 'Rails Test Prescriptions',
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: 'rtp.jpg',
  price: 34.95,
  categories: 'Mystery')

# 20.times do 
#   Product.create!(title: Faker::Commerce.product_name,
#                   description: Faker::Lorem.paragraph,
#                   image_url: 'rtp.jpg',
#                   price: Faker::Commerce.price)
#   end

User.delete_all
 
User.create!(name: "user",
            email: 'user@gmail.com',
            password: 'useruser',
            password_confirmation: 'useruser') 
  
User.create!(name: "admin",
            email: 'admin@gmail.com',
            password: 'adminadmin',
            password_confirmation: 'adminadmin',
            admin: true)
            
            
Category.delete_all

# 5.times do
#   Category.create!(name: Faker::Book.genre)
# end
Category.create!(name: "Essay")
Category.create!(name: "Legend")
Category.create!(name: "Suspense/Thriller")
Category.create!(name: "Mythopeia")
Category.create!(name: "Mystery")