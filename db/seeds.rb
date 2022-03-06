# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "open-uri"
file1 = URI.open("https://images.unsplash.com/photo-1522196772883-393d879eb14d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=685&q=80")
file2 = URI.open("https://images.unsplash.com/photo-1587723958656-ee042cc565a1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
file3 = URI.open("https://images.unsplash.com/photo-1579783901467-31b604eac7a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=461&q=80")

user1 = User.find_or_initialize_by(name: "Juanito", email: "admin@gmail.com")
user1.password = "291ABASD932"
user1.password_confirmation = "291ABASD932"
user1.photo.attach(io: file1, filename: "avatar1", content_type: "image/png")
user1.save

user2 = User.find_or_initialize_by(name: "Juanchi", email: "usuario1@gmail.com")
user2.password = "291ABASD934"
user2.password_confirmation = "291ABASD934"
user2.photo.attach(io: file2, filename: "avatar2", content_type: "image/png")
user2.save

user3 = User.find_or_initialize_by(name: "Rosita", email: " usuario2@gmail.com")
user3.password = "281ABASD932"
user3.password_confirmation = "281ABASD932"
user3.photo.attach(io: file3, filename: "avatar3", content_type: "image/png")
user3.save

status1 = Status.find_or_initialize_by(status: "Prospecto")
status1.save
status2 = Status.find_or_initialize_by(status: "Muy interesado")
status2.save
status3 = Status.find_or_initialize_by(status: "Cliente")
status3.save


