# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
    {email: "m@gmail.com", password: "101010", password_confirmation: "101010" }
])
Information.create([
    {name: "Ckorb Blansing", age: 25,
    marital_status: "single", state: "NJ", dependent: false,
    user_id: 1 }
])
TaxInformation.create([
    {w2_wages: 20000, capital_gains: 500,
    unemployment_insurance: 0, self_employment: 0,
    information_id: 1 }
])

puts "Seed Created"