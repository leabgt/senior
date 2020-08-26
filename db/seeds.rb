# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Trip.destroy_all
Contact.destroy_all
Repertoire.destroy_all
User.destroy_all
puts "destroy all"

lea = User.create(email: "lea@gmail.com", first_name: "Lea", last_name: "Wagon", address: "Merignac", phone_number: "0123456789", password: "azerty")
lea.save!
adrien = User.create(email: "adrien@gmail.com", first_name: "Adrien", last_name: "Wagon", address: "Paris", phone_number: "0123656089", password: "azerty")
adrien.save!
anais = User.create(email: "anais@gmail.com", first_name: "Anais", last_name: "Wagon", address: "Orléans", phone_number: "0193454782", password: "azerty")
anais.save!
ludo = User.create(email: "ludo@gmail.com", first_name: "Ludo", last_name: "Wagon", address: "Bordeaux", phone_number: "0113856784", password: "azerty")
ludo.save!

repertoire_Lea = Repertoire.create(user: lea)
repertoire_Adrien = Repertoire.create(user: adrien)
# repertoire_Anais = Repertoire.create(user_id: anais)
# repertoire_Ludo = Repertoire.create(user_id: ludo)

contact_Lea = Contact.create(repertoire: repertoire_Lea, user: adrien, video_link: "https://senior.daily.co/Adrien")
contact_Lea2 = Contact.create(repertoire: repertoire_Lea, user: anais, video_link: "https://senior.daily.co/Anais")
contact_Lea3 = Contact.create(repertoire: repertoire_Lea, user: ludo, video_link: "https://senior.daily.co/Ludo")

contact_Adrien = Contact.create(repertoire: repertoire_Adrien, user: lea, video_link: "https://senior.daily.co/Lea")
contact_Adrien2 = Contact.create(repertoire: repertoire_Adrien, user: anais, video_link: "https://senior.daily.co/Anais")
contact_Adrien3 = Contact.create(repertoire: repertoire_Adrien, user: ludo, video_link: "https://senior.daily.co/Ludo")

puts "created"
