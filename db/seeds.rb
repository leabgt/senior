# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"


Trip.destroy_all
Contact.destroy_all
Repertoire.destroy_all
User.destroy_all
Meal.destroy_all

puts "destroy all"

puts "creating users"

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598530240/lea.jpg")
lea = User.create(email: "lea@gmail.com", first_name: "Lea", last_name: "Bugeat", address: "Merignac", phone_number: "0123456789", password: "azerty")
lea.photo.attach(io: file, filename:"lea.jpg", content_type: "image/jpg")
lea.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598530240/adrien.jpg")
adrien = User.create(email: "adrien@gmail.com", first_name: "Adrien", last_name: "Loiseau", address: "Paris", phone_number: "0123656089", password: "azerty")
adrien.photo.attach(io: file, filename: "adrien.jpg", content_type: "image/jpg")
adrien.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598363967/queen_elizabeth_II.jpg")
anais = User.create(email: "anais@gmail.com", first_name: "Anais", last_name: "Arrondeau", address: "Orléans", phone_number: "0193454782", password: "azerty")
anais.photo.attach(io: file, filename: "queen_elizabeth_II.jpg.jpg", content_type: "image/jpg")
anais.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598530240/Ludo.jpg")
ludo = User.create(email: "ludo@gmail.com", first_name: "Ludovic", last_name: "Magnol", address: "Bordeaux", phone_number: "0113856784", password: "azerty")
ludo.photo.attach(io: file, filename: "ludo.jpg", content_type: "image/jpg")
ludo.save!

puts "creating repertoires"

repertoire_Lea = Repertoire.create(user: lea)
repertoire_Adrien = Repertoire.create(user: adrien)
repertoire_Anais = Repertoire.create(user: anais)
repertoire_Ludo = Repertoire.create(user: ludo)

puts "creating contacts"

contact_Lea = Contact.create(repertoire: repertoire_Lea, user: adrien, video_link: "https://senior.daily.co/Adrien")
contact_Lea2 = Contact.create(repertoire: repertoire_Lea, user: anais, video_link: "https://senior.daily.co/Anais")
contact_Lea3 = Contact.create(repertoire: repertoire_Lea, user: ludo, video_link: "https://senior.daily.co/Ludo")

contact_Adrien = Contact.create(repertoire: repertoire_Adrien, user: lea, video_link: "https://senior.daily.co/Lea")
contact_Adrien2 = Contact.create(repertoire: repertoire_Adrien, user: anais, video_link: "https://senior.daily.co/Anais")
contact_Adrien3 = Contact.create(repertoire: repertoire_Adrien, user: ludo, video_link: "https://senior.daily.co/Ludo")

contact_Anais = Contact.create(repertoire: repertoire_Anais, user: lea, video_link: "https://senior.daily.co/Lea")
contact_Anais2 = Contact.create(repertoire: repertoire_Anais, user: adrien, video_link: "https://senior.daily.co/Adrien")
contact_Anais3 = Contact.create(repertoire: repertoire_Anais, user: ludo, video_link: "https://senior.daily.co/Ludo")

contact_Ludo = Contact.create(repertoire: repertoire_Ludo, user: lea, video_link: "https://senior.daily.co/Lea")
contact_Ludo2 = Contact.create(repertoire: repertoire_Ludo, user: adrien, video_link: "https://senior.daily.co/Adrien")
contact_Ludo3 = Contact.create(repertoire: repertoire_Ludo, user: anais, video_link: "https://senior.daily.co/Anais")

puts "creating meals"

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598622787/breakfast.jpg")
breakfast = Meal.new(name: "Salty", category: "breakfast", description: "These are the ingredients you’ll need for this healthy breakfast sandwich." )
breakfast.photo.attach(io: file, filename: "breakfast.jpg", content_type: "image/jpg")
breakfast.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598616625/pancakes.jpg")
pancakes = Meal.new(name: "Pancakes", category: "breakfast", description: "No sweet pancakes here! These pancakes are great for weekday mornings when you need some fuel in the morning to get through the day without spiking blood sugar levels." )
pancakes.photo.attach(io: file, filename: "pancakes.jpg", content_type: "image/jpg")
pancakes.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598616837/salmon.jpg")
salmon = Meal.new(name: "Salmon", category: "lunch", description: "Heat control when cooking fish is notoriously difficult. Use the steam mode for perfectly tender and juicy results!" )
salmon.photo.attach(io: file, filename: "salmon.jpg", content_type: "image/jpg")
salmon.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618045/beef.jpg")
beef = Meal.new(name: "Beef", category: "lunch" , description: "Succulent roast topside of beef, made especially irresistible with a mustard crust, piquant shallots and red wine enriched gravy." )
beef.photo.attach(io: file, filename: "beef.jpg", content_type: "image/jpg")
beef.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618316/salad.jpg")
salad = Meal.new(name: "Salad", category: "lunch", description: "Give salad a shake-up with an Egyptian-inspired recipe that combines fava beans with egg and the rich flavours of tahini, garlic, lemon and cumin." )
salad.photo.attach(io: file, filename: "salad.jpg", content_type: "image/jpg")
salad.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618426/veal.jpg")
veal = Meal.new(name: "Veal", category: "diner", description: "Marinate rose veal chops in a zesty mix of lemon, garlic and rosemary then serve with the salsa for a simple yet flavourful supper." )
veal.photo.attach(io: file, filename: "veal.jpg", content_type: "image/jpg")
veal.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598621760/pestopasta.jpg")
pestopasta = Meal.new(name: "Pesto Pasta", category: "diner", description: "A fresh and flavour-packed homemade pesto with peas and pine nuts" )
pestopasta.photo.attach(io: file, filename: "pestopasta.jpg", content_type: "image/jpg")
pestopasta.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618695/fish.jpg")
fish = Meal.new(name: "Fish", category: "diner", description: "Cod vegetables: Cod is the common name for the demersal fish genus Gadus, belonging to the family Gadidae." )
fish.photo.attach(io: file, filename: "fish.jpg", content_type: "image/jpg")
fish.save!



puts "created"
