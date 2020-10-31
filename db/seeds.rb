# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
    email: "krachtig@iron-shadow.com",
    username: "Krachtig",
    password: "Krachtig",
    password_confirmation: "Krachtig"
)

User.create(
    email: "aleni@iron-shadow.com",
    username: "Aleni",
    password: "Aleni1",
    password_confirmation: "Aleni1"
)