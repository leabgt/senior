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
Doctor.destroy_all

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

repertoire_Lea = Repertoire.create(user_id: lea.id)
repertoire_Adrien = Repertoire.create(user_id: adrien.id)
repertoire_Anais = Repertoire.create(user_id: anais.id)
repertoire_Ludo = Repertoire.create(user_id: ludo.id)

puts "creating contacts"

contact_Lea = Contact.create(repertoire: repertoire_Lea, user_id: adrien.id, video_link: "https://senior.daily.co/Adrien")
contact_Lea2 = Contact.create(repertoire: repertoire_Lea, user_id: anais.id, video_link: "https://senior.daily.co/Anais")
contact_Lea3 = Contact.create(repertoire: repertoire_Lea, user_id: ludo.id, video_link: "https://senior.daily.co/Ludo")

contact_Adrien = Contact.create(repertoire: repertoire_Adrien, user_id: lea.id, video_link: "https://senior.daily.co/Lea")
contact_Adrien2 = Contact.create(repertoire: repertoire_Adrien, user_id: anais.id, video_link: "https://senior.daily.co/Anais")
contact_Adrien3 = Contact.create(repertoire: repertoire_Adrien, user_id: ludo.id, video_link: "https://senior.daily.co/Ludo")

contact_Anais = Contact.create(repertoire: repertoire_Anais, user_id: lea.id, video_link: "https://senior.daily.co/Lea")
contact_Anais2 = Contact.create(repertoire: repertoire_Anais, user_id: adrien.id, video_link: "https://senior.daily.co/Adrien")
contact_Anais3 = Contact.create(repertoire: repertoire_Anais, user_id: ludo.id, video_link: "https://senior.daily.co/Ludo")

contact_Ludo = Contact.create(repertoire: repertoire_Ludo, user_id: lea.id, video_link: "https://senior.daily.co/Lea")
contact_Ludo2 = Contact.create(repertoire: repertoire_Ludo, user_id: adrien.id, video_link: "https://senior.daily.co/Adrien")
contact_Ludo3 = Contact.create(repertoire: repertoire_Ludo, user_id: anais.id, video_link: "https://senior.daily.co/Anais")

puts "creating meals"

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598622787/breakfast.jpg")
breakfast = Meal.new(day: "Monday", name: "Salty", category: "breakfast", description: "These are the ingredients you’ll need for this healthy breakfast sandwich." )
breakfast.photo.attach(io: file, filename: "breakfast.jpg", content_type: "image/jpg")
breakfast.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598616625/pancakes.jpg")
pancakes = Meal.new(day: "Monday", name: "Pancakes", category: "breakfast", description: "No sweet pancakes here! These pancakes are great for weekday mornings when you need some fuel in the morning to get through the day without spiking blood sugar levels." )
pancakes.photo.attach(io: file, filename: "pancakes.jpg", content_type: "image/jpg")
pancakes.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598616837/salmon.jpg")
salmon = Meal.new(day: "Monday", name: "Salmon", category: "lunch", description: "Heat control when cooking fish is notoriously difficult. Use the steam mode for perfectly tender and juicy results!" )
salmon.photo.attach(io: file, filename: "salmon.jpg", content_type: "image/jpg")
salmon.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618045/beef.jpg")
beef = Meal.new(day: "Monday", name: "Beef", category: "lunch" , description: "Succulent roast topside of beef, made especially irresistible with a mustard crust, piquant shallots and red wine enriched gravy." )
beef.photo.attach(io: file, filename: "beef.jpg", content_type: "image/jpg")
beef.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618316/salad.jpg")
salad = Meal.new(day: "Monday", name: "Salad", category: "lunch", description: "Give salad a shake-up with an Egyptian-inspired recipe that combines fava beans with egg and the rich flavours of tahini, garlic, lemon and cumin." )
salad.photo.attach(io: file, filename: "salad.jpg", content_type: "image/jpg")
salad.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618426/veal.jpg")
veal = Meal.new(day: "Monday", name: "Veal", category: "diner", description: "Marinate rose veal chops in a zesty mix of lemon, garlic and rosemary then serve with the salsa for a simple yet flavourful supper." )
veal.photo.attach(io: file, filename: "veal.jpg", content_type: "image/jpg")
veal.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598621760/pestopasta.jpg")
pestopasta = Meal.new(day: "Monday", name: "Pesto Pasta", category: "diner", description: "A fresh and flavour-packed homemade pesto with peas and pine nuts" )
pestopasta.photo.attach(io: file, filename: "pestopasta.jpg", content_type: "image/jpg")
pestopasta.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618695/fish.jpg")
fish = Meal.new(day: "Monday", name: "Fish", category: "diner", description: "Cod vegetables: Cod is the common name for the demersal fish genus Gadus, belonging to the family Gadidae." )
fish.photo.attach(io: file, filename: "fish.jpg", content_type: "image/jpg")
fish.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598622787/breakfast.jpg")
breakfast = Meal.new(day: "Tuesday", name: "Salty", category: "breakfast", description: "These are the ingredients you’ll need for this healthy breakfast sandwich." )
breakfast.photo.attach(io: file, filename: "breakfast.jpg", content_type: "image/jpg")
breakfast.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598616625/pancakes.jpg")
pancakes = Meal.new(day: "Tuesday", name: "Pancakes", category: "breakfast", description: "No sweet pancakes here! These pancakes are great for weekday mornings when you need some fuel in the morning to get through the day without spiking blood sugar levels." )
pancakes.photo.attach(io: file, filename: "pancakes.jpg", content_type: "image/jpg")
pancakes.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598616837/salmon.jpg")
salmon = Meal.new(day: "Tuesday", name: "Salmon", category: "lunch", description: "Heat control when cooking fish is notoriously difficult. Use the steam mode for perfectly tender and juicy results!" )
salmon.photo.attach(io: file, filename: "salmon.jpg", content_type: "image/jpg")
salmon.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618045/beef.jpg")
beef = Meal.new(day: "Tuesday", name: "Beef", category: "lunch" , description: "Succulent roast topside of beef, made especially irresistible with a mustard crust, piquant shallots and red wine enriched gravy." )
beef.photo.attach(io: file, filename: "beef.jpg", content_type: "image/jpg")
beef.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618316/salad.jpg")
salad = Meal.new(day: "Tuesday", name: "Salad", category: "lunch", description: "Give salad a shake-up with an Egyptian-inspired recipe that combines fava beans with egg and the rich flavours of tahini, garlic, lemon and cumin." )
salad.photo.attach(io: file, filename: "salad.jpg", content_type: "image/jpg")
salad.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618426/veal.jpg")
veal = Meal.new(day: "Tuesday", name: "Veal", category: "diner", description: "Marinate rose veal chops in a zesty mix of lemon, garlic and rosemary then serve with the salsa for a simple yet flavourful supper." )
veal.photo.attach(io: file, filename: "veal.jpg", content_type: "image/jpg")
veal.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598621760/pestopasta.jpg")
pestopasta = Meal.new(day: "Tuesday", name: "Pesto Pasta", category: "diner", description: "A fresh and flavour-packed homemade pesto with peas and pine nuts" )
pestopasta.photo.attach(io: file, filename: "pestopasta.jpg", content_type: "image/jpg")
pestopasta.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618695/fish.jpg")
fish = Meal.new(day: "Tuesday", name: "Fish", category: "diner", description: "Cod vegetables: Cod is the common name for the demersal fish genus Gadus, belonging to the family Gadidae." )
fish.photo.attach(io: file, filename: "fish.jpg", content_type: "image/jpg")
fish.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598622787/breakfast.jpg")
breakfast = Meal.new(day: "Sunday", name: "Salty", category: "breakfast", description: "These are the ingredients you’ll need for this healthy breakfast sandwich." )
breakfast.photo.attach(io: file, filename: "breakfast.jpg", content_type: "image/jpg")
breakfast.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598616625/pancakes.jpg")
pancakes = Meal.new(day: "Sunday", name: "Pancakes", category: "breakfast", description: "No sweet pancakes here! These pancakes are great for weekday mornings when you need some fuel in the morning to get through the day without spiking blood sugar levels." )
pancakes.photo.attach(io: file, filename: "pancakes.jpg", content_type: "image/jpg")
pancakes.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598616837/salmon.jpg")
salmon = Meal.new(day: "Sunday", name: "Salmon", category: "lunch", description: "Heat control when cooking fish is notoriously difficult. Use the steam mode for perfectly tender and juicy results!" )
salmon.photo.attach(io: file, filename: "salmon.jpg", content_type: "image/jpg")
salmon.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618045/beef.jpg")
beef = Meal.new(day: "Sunday", name: "Beef", category: "lunch" , description: "Succulent roast topside of beef, made especially irresistible with a mustard crust, piquant shallots and red wine enriched gravy." )
beef.photo.attach(io: file, filename: "beef.jpg", content_type: "image/jpg")
beef.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618316/salad.jpg")
salad = Meal.new(day: "Sunday", name: "Salad", category: "lunch", description: "Give salad a shake-up with an Egyptian-inspired recipe that combines fava beans with egg and the rich flavours of tahini, garlic, lemon and cumin." )
salad.photo.attach(io: file, filename: "salad.jpg", content_type: "image/jpg")
salad.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618426/veal.jpg")
veal = Meal.new(day: "Sunday", name: "Veal", category: "diner", description: "Marinate rose veal chops in a zesty mix of lemon, garlic and rosemary then serve with the salsa for a simple yet flavourful supper." )
veal.photo.attach(io: file, filename: "veal.jpg", content_type: "image/jpg")
veal.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598621760/pestopasta.jpg")
pestopasta = Meal.new(day: "Sunday", name: "Pesto Pasta", category: "diner", description: "A fresh and flavour-packed homemade pesto with peas and pine nuts" )
pestopasta.photo.attach(io: file, filename: "pestopasta.jpg", content_type: "image/jpg")
pestopasta.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618695/fish.jpg")
fish = Meal.new(day: "Sunday", name: "Fish", category: "diner", description: "Cod vegetables: Cod is the common name for the demersal fish genus Gadus, belonging to the family Gadidae." )
fish.photo.attach(io: file, filename: "fish.jpg", content_type: "image/jpg")
fish.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598622787/breakfast.jpg")
breakfast = Meal.new(day: "Saturday", name: "Salty", category: "breakfast", description: "These are the ingredients you’ll need for this healthy breakfast sandwich." )
breakfast.photo.attach(io: file, filename: "breakfast.jpg", content_type: "image/jpg")
breakfast.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598616625/pancakes.jpg")
pancakes = Meal.new(day: "Saturday", name: "Pancakes", category: "breakfast", description: "No sweet pancakes here! These pancakes are great for weekday mornings when you need some fuel in the morning to get through the day without spiking blood sugar levels." )
pancakes.photo.attach(io: file, filename: "pancakes.jpg", content_type: "image/jpg")
pancakes.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598616837/salmon.jpg")
salmon = Meal.new(day: "Saturday", name: "Salmon", category: "lunch", description: "Heat control when cooking fish is notoriously difficult. Use the steam mode for perfectly tender and juicy results!" )
salmon.photo.attach(io: file, filename: "salmon.jpg", content_type: "image/jpg")
salmon.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618045/beef.jpg")
beef = Meal.new(day: "Saturday", name: "Beef", category: "lunch" , description: "Succulent roast topside of beef, made especially irresistible with a mustard crust, piquant shallots and red wine enriched gravy." )
beef.photo.attach(io: file, filename: "beef.jpg", content_type: "image/jpg")
beef.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618316/salad.jpg")
salad = Meal.new(day: "Saturday", name: "Salad", category: "lunch", description: "Give salad a shake-up with an Egyptian-inspired recipe that combines fava beans with egg and the rich flavours of tahini, garlic, lemon and cumin." )
salad.photo.attach(io: file, filename: "salad.jpg", content_type: "image/jpg")
salad.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618426/veal.jpg")
veal = Meal.new(day: "Saturday", name: "Veal", category: "diner", description: "Marinate rose veal chops in a zesty mix of lemon, garlic and rosemary then serve with the salsa for a simple yet flavourful supper." )
veal.photo.attach(io: file, filename: "veal.jpg", content_type: "image/jpg")
veal.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598621760/pestopasta.jpg")
pestopasta = Meal.new(day: "Saturday", name: "Pesto Pasta", category: "diner", description: "A fresh and flavour-packed homemade pesto with peas and pine nuts" )
pestopasta.photo.attach(io: file, filename: "pestopasta.jpg", content_type: "image/jpg")
pestopasta.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618695/fish.jpg")
fish = Meal.new(day: "Saturday", name: "Fish", category: "diner", description: "Cod vegetables: Cod is the common name for the demersal fish genus Gadus, belonging to the family Gadidae." )
fish.photo.attach(io: file, filename: "fish.jpg", content_type: "image/jpg")
fish.save!


file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598622787/breakfast.jpg")
breakfast = Meal.new(day: "Wednesday", name: "Salty", category: "breakfast", description: "These are the ingredients you’ll need for this healthy breakfast sandwich." )
breakfast.photo.attach(io: file, filename: "breakfast.jpg", content_type: "image/jpg")
breakfast.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598616625/pancakes.jpg")
pancakes = Meal.new(day: "Wednesday", name: "Pancakes", category: "breakfast", description: "No sweet pancakes here! These pancakes are great for weekday mornings when you need some fuel in the morning to get through the day without spiking blood sugar levels." )
pancakes.photo.attach(io: file, filename: "pancakes.jpg", content_type: "image/jpg")
pancakes.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598616837/salmon.jpg")
salmon = Meal.new(day: "Wednesday", name: "Salmon", category: "lunch", description: "Heat control when cooking fish is notoriously difficult. Use the steam mode for perfectly tender and juicy results!" )
salmon.photo.attach(io: file, filename: "salmon.jpg", content_type: "image/jpg")
salmon.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618045/beef.jpg")
beef = Meal.new(day: "Wednesday", name: "Beef", category: "lunch" , description: "Succulent roast topside of beef, made especially irresistible with a mustard crust, piquant shallots and red wine enriched gravy." )
beef.photo.attach(io: file, filename: "beef.jpg", content_type: "image/jpg")
beef.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618316/salad.jpg")
salad = Meal.new(day: "Wednesday", name: "Salad", category: "lunch", description: "Give salad a shake-up with an Egyptian-inspired recipe that combines fava beans with egg and the rich flavours of tahini, garlic, lemon and cumin." )
salad.photo.attach(io: file, filename: "salad.jpg", content_type: "image/jpg")
salad.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618426/veal.jpg")
veal = Meal.new(day: "Wednesday", name: "Veal", category: "diner", description: "Marinate rose veal chops in a zesty mix of lemon, garlic and rosemary then serve with the salsa for a simple yet flavourful supper." )
veal.photo.attach(io: file, filename: "veal.jpg", content_type: "image/jpg")
veal.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598621760/pestopasta.jpg")
pestopasta = Meal.new(day: "Wednesday", name: "Pesto Pasta", category: "diner", description: "A fresh and flavour-packed homemade pesto with peas and pine nuts" )
pestopasta.photo.attach(io: file, filename: "pestopasta.jpg", content_type: "image/jpg")
pestopasta.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618695/fish.jpg")
fish = Meal.new(day: "Wednesday", name: "Fish", category: "diner", description: "Cod vegetables: Cod is the common name for the demersal fish genus Gadus, belonging to the family Gadidae." )
fish.photo.attach(io: file, filename: "fish.jpg", content_type: "image/jpg")
fish.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598622787/breakfast.jpg")
breakfast = Meal.new(day: "Thursday", name: "Salty", category: "breakfast", description: "These are the ingredients you’ll need for this healthy breakfast sandwich." )
breakfast.photo.attach(io: file, filename: "breakfast.jpg", content_type: "image/jpg")
breakfast.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598616625/pancakes.jpg")
pancakes = Meal.new(day: "Thursday", name: "Pancakes", category: "breakfast", description: "No sweet pancakes here! These pancakes are great for weekday mornings when you need some fuel in the morning to get through the day without spiking blood sugar levels." )
pancakes.photo.attach(io: file, filename: "pancakes.jpg", content_type: "image/jpg")
pancakes.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598616837/salmon.jpg")
salmon = Meal.new(day: "Thursday", name: "Salmon", category: "lunch", description: "Heat control when cooking fish is notoriously difficult. Use the steam mode for perfectly tender and juicy results!" )
salmon.photo.attach(io: file, filename: "salmon.jpg", content_type: "image/jpg")
salmon.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618045/beef.jpg")
beef = Meal.new(day: "Thursday", name: "Beef", category: "lunch" , description: "Succulent roast topside of beef, made especially irresistible with a mustard crust, piquant shallots and red wine enriched gravy." )
beef.photo.attach(io: file, filename: "beef.jpg", content_type: "image/jpg")
beef.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618316/salad.jpg")
salad = Meal.new(day: "Thursday", name: "Salad", category: "lunch", description: "Give salad a shake-up with an Egyptian-inspired recipe that combines fava beans with egg and the rich flavours of tahini, garlic, lemon and cumin." )
salad.photo.attach(io: file, filename: "salad.jpg", content_type: "image/jpg")
salad.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618426/veal.jpg")
veal = Meal.new(day: "Thursday", name: "Veal", category: "diner", description: "Marinate rose veal chops in a zesty mix of lemon, garlic and rosemary then serve with the salsa for a simple yet flavourful supper." )
veal.photo.attach(io: file, filename: "veal.jpg", content_type: "image/jpg")
veal.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598621760/pestopasta.jpg")
pestopasta = Meal.new(day: "Thursday", name: "Pesto Pasta", category: "diner", description: "A fresh and flavour-packed homemade pesto with peas and pine nuts" )
pestopasta.photo.attach(io: file, filename: "pestopasta.jpg", content_type: "image/jpg")
pestopasta.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618695/fish.jpg")
fish = Meal.new(day: "Thursday", name: "Fish", category: "diner", description: "Cod vegetables: Cod is the common name for the demersal fish genus Gadus, belonging to the family Gadidae." )
fish.photo.attach(io: file, filename: "fish.jpg", content_type: "image/jpg")
fish.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598622787/breakfast.jpg")
breakfast = Meal.new(day: "Friday", name: "Salty", category: "breakfast", description: "These are the ingredients you’ll need for this healthy breakfast sandwich." )
breakfast.photo.attach(io: file, filename: "breakfast.jpg", content_type: "image/jpg")
breakfast.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598616625/pancakes.jpg")
pancakes = Meal.new(day: "Friday", name: "Pancakes", category: "breakfast", description: "No sweet pancakes here! These pancakes are great for weekday mornings when you need some fuel in the morning to get through the day without spiking blood sugar levels." )
pancakes.photo.attach(io: file, filename: "pancakes.jpg", content_type: "image/jpg")
pancakes.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598616837/salmon.jpg")
salmon = Meal.new(day: "Friday", name: "Salmon", category: "lunch", description: "Heat control when cooking fish is notoriously difficult. Use the steam mode for perfectly tender and juicy results!" )
salmon.photo.attach(io: file, filename: "salmon.jpg", content_type: "image/jpg")
salmon.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618045/beef.jpg")
beef = Meal.new(day: "Friday", name: "Beef", category: "lunch" , description: "Succulent roast topside of beef, made especially irresistible with a mustard crust, piquant shallots and red wine enriched gravy." )
beef.photo.attach(io: file, filename: "beef.jpg", content_type: "image/jpg")
beef.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618316/salad.jpg")
salad = Meal.new(day: "Friday", name: "Salad", category: "lunch", description: "Give salad a shake-up with an Egyptian-inspired recipe that combines fava beans with egg and the rich flavours of tahini, garlic, lemon and cumin." )
salad.photo.attach(io: file, filename: "salad.jpg", content_type: "image/jpg")
salad.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618426/veal.jpg")
veal = Meal.new(day: "Friday", name: "Veal", category: "diner", description: "Marinate rose veal chops in a zesty mix of lemon, garlic and rosemary then serve with the salsa for a simple yet flavourful supper." )
veal.photo.attach(io: file, filename: "veal.jpg", content_type: "image/jpg")
veal.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598621760/pestopasta.jpg")
pestopasta = Meal.new(day: "Friday", name: "Pesto Pasta", category: "diner", description: "A fresh and flavour-packed homemade pesto with peas and pine nuts" )
pestopasta.photo.attach(io: file, filename: "pestopasta.jpg", content_type: "image/jpg")
pestopasta.save!

file = URI.open("https://res.cloudinary.com/dyrbktlhi/image/upload/v1598618695/fish.jpg")
fish = Meal.new(day: "Friday", name: "Fish", category: "diner", description: "Cod vegetables: Cod is the common name for the demersal fish genus Gadus, belonging to the family Gadidae." )
fish.photo.attach(io: file, filename: "fish.jpg", content_type: "image/jpg")
fish.save!


puts "creating doctors"

doctor1 = Doctor.create(name: "Professor Margaret Johnson", specialty: "Pulmonologist", video_link: "https://senior.daily.co/Johnson")
doctor2 = Doctor.create(name: "Professor Nicholas Peters", specialty: "Cardiologist", video_link: "https://senior.daily.co/Peters")
doctor2 = Doctor.create(name: "Mr Vik Sharma", specialty: "Ophthalmologist", video_link: "https://senior.daily.co/Sharma")
doctor2 = Doctor.create(name: "Dr Antimos Ouzounoglou", specialty: "Dentist", video_link: "https://senior.daily.co/Ouzounoglou")


puts "created"
