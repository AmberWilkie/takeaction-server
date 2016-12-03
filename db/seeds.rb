# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cause.delete_all
Action.delete_all
Article.delete_all


cause1 = Cause.create(name: 'Poverty')
cause2 = Cause.create(name: 'Global Warming')
cause3 = Cause.create(name: 'AIDS')

action1 = Action.create(name: 'Tweet')
action2 = Action.create(name: 'Volunteer')
action3 = Action.create(name: 'Sign the petition')
action4 = Action.create(name: 'Call your legislator')
action5 = Action.create(name: 'Email your legislator')
action6 = Action.create(name: 'Join this Event')
action7 = Action.create(name: 'Donate')

article1 = Article.create(title: 'Climate Change is going to kill us all.', body: 'No, really.', link: 'http://www.climate.org', cause: cause2)
article1.action_items.create(action_id: action1.id)
article1.action_items.create(action_id: action5.id)