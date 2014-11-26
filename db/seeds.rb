# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
# cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

business1 = Business.create([{ phone_number: '3109980069' , website: 'http://www.barkowski.com/', setting: 'Dive Bar', price: 'low', business_name: 'Barkowski', street_no: '2819', street_name: 'Pico Blvd', city: 'Santa Monica', zipcode: '90405', state: 'California' }])

business2 = Business.create([{ phone_number: '3106569800', website: 'http://www.themisfitbar.com/', setting: 'pub', price: 'low', business_name: 'The Misfit Bar', street_no: '225', street_name: 'Santa Monica Blvd', city: 'Santa Monica', zipcode: '90401', state: 'California' }])

business3 = Business.create([{ phone_number: '3103144855', website: 'http://www.libraryalehouse.com', setting: 'pub', price: 'low', business_name: 'Library Ale House', street_no: '2911', street_name: 'Main St', city: 'Santa Monica', zipcode: '90405', state: 'California' }])

business4 = Business.create([{ phone_number: '3105763030', website: 'http://www.copadoro.com', setting: 'pub', price: 'low', business_name: 'Copa d Oro', street_no: '217', street_name: 'Broadway', city: 'Santa Monica', zipcode: '90401', state: 'California' }])

business5 = Business.create([{ phone_number: '3104507631', website: 'http://www.thedailypint.net', setting: 'pub', price: 'low', business_name: 'The Daily Pint',street_no: '2310', street_name: 'Pico Blvd', city: 'Santa Monica', zipcode: '90405', state: 'California' }])

business6 = Business.create([{ phone_number: '3108996999', website: 'http://www.barchloe.com', setting: 'pub', price: 'low', business_name: 'Bar Chloe', street_no: '1449', street_name: '2nd street', city: 'Santa Monica', zipcode: '90401', state: 'California' }])

business7 = Business.create([{ phone_number: '3102604504989', website: 'http://www.viceroyhotelsandresorts.com/', setting: 'pub', price: 'low',  business_name: 'Cameo Bar', street_no: '1819', street_name: 'Ocean Ave', city: 'Santa Monica', zipcode: '90401', state: 'California' }])

business8 = Business.create([{ phone_number: '3104580707', website: 'http://www.yelp.com/biz/speak-easy-cocktail-santa-monica', setting: 'pub', price: 'low', business_name: 'Speak Easy Cocktail', street_no: '1326', street_name: 'Pico Blvd', city: 'Santa Monica', zipcode: '90405', state: 'California' }])

business9 = Business.create([{ phone_number: '3103956037', website: 'http://www.circa93.com', setting: 'pub', price: 'low', business_name: 'The Room', street_no: '1325', street_name: 'Santa Monica Blvd', city: 'Santa Monica', zipcode: '90404', state: 'California' }])

business10 = Business.create([{ phone_number: '3102594146', website: 'http://www.thecraftsmanbar.com', setting: 'pub', price: 'low', business_name: 'business1', street_no: '119', street_name: 'Broadway', city: 'Santa Monica', zipcode: '90405', state: 'California' }])

user1 = User.create([{ name: 'Steve Smith', username: 'TheSteve', email: 'steve@email.com', password_digest: 'aaaaaa' }])
user2 = User.create([{ name: 'Jane Lee', username: 'TheJane', email: 'jane@email.com', password_digest: 'aaaaaa' }])
user3 = User.create([{ name: 'Kyle Knott', username: 'TheKyle', email: 'kyle@email.com', password_digest: 'aaaaaa' }])
user4 = User.create([{ name: 'Sophana Sok', username: 'TheSophana', email: 'sophana@email.com', password_digest: 'aaaaaa' }])
user5 = User.create([{ name: 'Cosimo Barbato', username: 'TheCosimo', email: 'cosimo@email.com', password_digest: 'aaaaaa' }])
user6 = User.create([{ name: 'Joe James', username: 'TheJoe', email: 'joe@email.com', password_digest: 'aaaaaa' }])
user7 = User.create([{ name: 'Jenny Doe', username: 'TheJenny', email: 'jenny@email.com', password_digest: 'aaaaaa' }])
user8 = User.create([{ name: 'Alex Kim', username: 'TheAlex', email: 'alex@email.com', password_digest: 'aaaaaa' }])
user9 = User.create([{ name: 'Bob Jones', username: 'TheBob', email: 'bob@email.com', password_digest: 'aaaaaa' }])
user10 = User.create([{ name: 'Dan Cobb', username: 'TheDan', email: 'dan@email.com', password_digest: 'aaaaaa' }])

rating1 = Rating.create([{ rating: 1, user_id: 1, business_id: 1}])
rating2 = Rating.create([{ rating: 2, user_id: 2, business_id: 2}])
rating3 = Rating.create([{ rating: 3, user_id: 3, business_id: 3}])
rating4 = Rating.create([{ rating: 4, user_id: 4, business_id: 4}])
rating5 = Rating.create([{ rating: 5, user_id: 5, business_id: 5}])
rating6 = Rating.create([{ rating: 1, user_id: 6, business_id: 6}])
rating7 = Rating.create([{ rating: 2, user_id: 7, business_id: 7}])
rating8 = Rating.create([{ rating: 3, user_id: 8, business_id: 8}])
rating9 = Rating.create([{ rating: 4, user_id: 9, business_id: 9}])
rating10 = Rating.create([{ rating: 5, user_id: 10, business_id: 10}])
rating11 = Rating.create([{ rating: 1, user_id: 10, business_id: 10}])
rating12 = Rating.create([{ rating: 2, user_id: 9, business_id: 9}])
rating13 = Rating.create([{ rating: 3, user_id: 8, business_id: 8}])
rating14 = Rating.create([{ rating: 4, user_id: 7, business_id: 7}])
rating15 = Rating.create([{ rating: 5, user_id: 6, business_id: 6}])
rating16 = Rating.create([{ rating: 1, user_id: 5, business_id: 5}])
rating17 = Rating.create([{ rating: 2, user_id: 4, business_id: 4}])
rating18 = Rating.create([{ rating: 3, user_id: 3, business_id: 3}])
rating19 = Rating.create([{ rating: 4, user_id: 2, business_id: 2}])
rating20 = Rating.create([{ rating: 5, user_id: 1, business_id: 1}])
rating21 = Rating.create([{ rating: 1, user_id: 2, business_id: 2}])
rating22 = Rating.create([{ rating: 2, user_id: 3, business_id: 3}])
rating23 = Rating.create([{ rating: 3, user_id: 4, business_id: 4}])
rating24 = Rating.create([{ rating: 4, user_id: 5, business_id: 5}])
rating25 = Rating.create([{ rating: 5, user_id: 6, business_id: 6}])
rating26 = Rating.create([{ rating: 1, user_id: 7, business_id: 7}])
rating27 = Rating.create([{ rating: 2, user_id: 8, business_id: 8}])
rating28 = Rating.create([{ rating: 3, user_id: 9, business_id: 9}])
rating29 = Rating.create([{ rating: 3, user_id: 9, business_id: 9}])
rating30 = Rating.create([{ rating: 3, user_id: 9, business_id: 9}])

