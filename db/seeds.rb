# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hotel.create(name: "Marriott", city: "Los Angeles", summary: "Good great awesome")
Hotel.create(name: "Hilton", city: "Denver", summary: "Good great awesome")
Hotel.create(name: "Best Western", city: "Tooele", summary: "Good great awesome")


HotelRoom.create(room_type: "King", price: 99.99, description: "King no smoking", hotel_id: 1)
HotelRoom.create(room_type: "Queen", price: 98.99, description: "Queen no smoking", hotel_id: 1)
HotelRoom.create(room_type: "King", price: 99.99, description: "King no smoking", hotel_id: 2)
HotelRoom.create(room_type: "Queen", price: 98.99, description: "Queen no smoking", hotel_id: 2)
HotelRoom.create(room_type: "King", price: 99.99, description: "King no smoking", hotel_id: 3)
HotelRoom.create(room_type: "Queen", price: 98.99, description: "Queen no smoking", hotel_id: 3)
