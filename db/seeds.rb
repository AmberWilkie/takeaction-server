# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cause.create(name: 'Poverty')
Cause.create(name: 'Global Warming')
Cause.create(name: 'AIDS')

Action.create(name: 'Tweet')
Action.create(name: 'Volunteer')
Action.create(name: 'Sign the petition')
