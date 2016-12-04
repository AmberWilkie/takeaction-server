# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.delete_all
Cause.delete_all
Action.delete_all



cause1 = Cause.create(name: 'Inequality')
cause2 = Cause.create(name: 'Food and Land Rights')
cause3 = Cause.create(name: "Women's Rights")
cause4 = Cause.create(name: 'Democratic Governance')
cause5 = Cause.create(name: 'Education')
cause6 = Cause.create(name: 'Emergencies and Conflict')
cause7 = Cause.create(name: 'Climate Change')
cause8 = Cause.create(name: 'HIV and AIDS')
cause9 = Cause.create(name: 'Youth')


action1 = Action.create(name: 'Tweet')
action2 = Action.create(name: 'Volunteer')
action3 = Action.create(name: 'Sign the petition')
action4 = Action.create(name: 'Call your legislator')
action5 = Action.create(name: 'Email your legislator')
action6 = Action.create(name: 'Join this Event')
action7 = Action.create(name: 'Donate')

article1 = Article.create(title: 'Some people have way more money than other people', body: 'And that kinda sucks.', link: 'http://www.equality.org', cause: cause1)
article1.action_items.create(action_id: action1.id, link: 'http://www.twitter.com', phone: '0890247912', email:'inequality@inequality.com', info: 'Fight inequality by making companies pay for their unfair actions against the poor.')
article1.action_items.create(action_id: action5.id, email: 'legislator@riksdagen.se', info: 'Sample email: Dear legislator,<br>It would be so great if you could not vote for this terrible bill coming up.', category: 'event', date: 'January 12, 2017 11am')

article2 = Article.create(title: "It's pretty seriously unfair how rich some people are", body: "It's cool when they work hard and give back and everything, obviously. But plenty of people are getting rich by <i>making</i> other people poor and that really sucks.", link: 'http://www.killtherich.com', cause: cause1, category: 'article')
article2.action_items.create(action_id: action1.id, link:'http://www.twitter.com')

article3 = Article.create(title: 'Demonstration against Inequality!', body: 'Gather at Ideon', link: 'http://www.equality.org', location: 'Ideon Headquarters, Lund, Sweden', date: '12/12/16', cause: cause1, category: 'event', date: 'December 14, 2016 1pm')
article3.action_items.create(action_id: action2.id, link: 'http://www.volunteer.com', info: 'Join us at Ideon for a demonstration against inequality')
article3.action_items.create(action_id: action4.id, phone: '0890247913', info: 'Sample transcript:<br>Hello, I am calling to discuss inequality in Lund.')