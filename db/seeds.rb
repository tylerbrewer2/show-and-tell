# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create({ first_name: 'Diana', middle_name: 'of', last_name: 'Themyscira', role: 'Wonder Woman'})
User.create({ first_name: 'Wallace', middle_name: 'Rudolph', last_name: 'West', role: 'Kid Flash'})
User.create({ first_name: 'Oliver', middle_name: 'Jonas', last_name: 'Queen', role: 'Green Arrow'})
User.create({ first_name: 'Dinah', middle_name: 'Laurel', last_name: 'Lance', role: 'Black Canary'})