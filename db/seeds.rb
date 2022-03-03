# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user1 = User.find_or_initialize_by(name: "Juanito", email: "admin@gmail.com")
user1.password = "291ABASD932"
user1.password_confirmation = "291ABASD932"
user1.save
user2 = User.find_or_initialize_by(name: "Juanchi", email: "usuario1@gmail.com")
user2.password = "291ABASD934"
user2.password_confirmation = "291ABASD934"
user2.save
user3 = User.find_or_initialize_by(name: "Mauri", email: " usuario2@gmail.com")
user3.password = "281ABASD932"
user3.password_confirmation = "281ABASD932"
user3.save

status1 = Status.find_or_initialize_by(status: "Prospecto")
status1.save
status2 = Status.find_or_initialize_by(status: "Muy interesado")
status2.save
status3 = Status.find_or_initialize_by(status: "Cliente")
status3.save
