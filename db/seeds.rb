# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
# cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Business.destroy_all
User.destroy_all
Rating.destroy_all


business1 = Business.create([{ phone_number: '3109980069' , website: 'http://www.barkowski.com/', setting: 'Dive Bar', price: 'low', business_name: 'Barkowski', street_no: '2819', street_name: 'Pico Blvd', city: 'Santa Monica', zipcode: '90405', state: 'California' }])
business2 = Business.create([{ phone_number: '3106569800', website: 'http://www.themisfitbar.com/', setting: 'pub', price: 'low', business_name: 'The Misfit Bar', street_no: '225', street_name: 'Santa Monica Blvd', city: 'Santa Monica', zipcode: '90401', state: 'California' }])
business3 = Business.create([{ phone_number: '3103144855', website: 'http://www.libraryalehouse.com', setting: 'pub', price: 'low', business_name: 'Library Ale House', street_no: '2911', street_name: 'Main St', city: 'Santa Monica', zipcode: '90405', state: 'California' }])
business4 = Business.create([{ phone_number: '3105763030', website: 'http://www.copadoro.com', setting: 'pub', price: 'low', business_name: 'Copa d Oro', street_no: '217', street_name: 'Broadway', city: 'Santa Monica', zipcode: '90401', state: 'California' }])
business5 = Business.create([{ phone_number: '3104507631', website: 'http://www.thedailypint.net', setting: 'pub', price: 'low', business_name: 'The Daily Pint',street_no: '2310', street_name: 'Pico Blvd', city: 'Santa Monica', zipcode: '90405', state: 'California' }])
business6 = Business.create([{ phone_number: '3108996999', website: 'http://www.barchloe.com', setting: 'pub', price: 'low', business_name: 'Bar Chloe', street_no: '1449', street_name: '2nd street', city: 'Santa Monica', zipcode: '90401', state: 'California' }])
business7 = Business.create([{ phone_number: '3102604504989', website: 'http://www.viceroyhotelsandresorts.com/', setting: 'pub', price: 'low',  business_name: 'Cameo Bar', street_no: '1819', street_name: 'Ocean Ave', city: 'Santa Monica', zipcode: '90401', state: 'California' }])
business8 = Business.create([{ phone_number: '3104580707', website: 'http://www.yelp.com/biz/speak-easy-cocktail-santa-monica', setting: 'pub', price: 'low', business_name: 'Speak Easy Cocktail', street_no: '1326', street_name: 'Pico Blvd', city: 'Santa Monica', zipcode: '90405', state: 'California' }])
business9 = Business.create([{ phone_number: '3103956037', website: 'http://www.circa93.com', setting: 'pub', price: 'low', business_name: 'The Room', street_no: '1325', street_name: 'Santa Monica Blvd', city: 'Santa Monica', zipcode: '90404', state: 'California' }])
business10 = Business.create([{ phone_number: '3102594146', website: 'http://www.thecraftsmanbar.com', setting: 'pub', price: 'low', business_name: 'The Craftsman', street_no: '119', street_name: 'Broadway', city: 'Santa Monica', zipcode: '90405', state: 'California' }])


user1 = User.create([{ name: 'Steve Smith', username: 'TheSteve', email: 'steve@email.com', password: 'aaaaaa', password_confirmation: 'aaaaaa' }])
user2 = User.create([{ name: 'Jane Lee', username: 'TheJane', email: 'jane@email.com', password: 'aaaaaa', password_confirmation: 'aaaaaa' }])
user3 = User.create([{ name: 'Kyle Knott', username: 'TheKyle', email: 'kyle@email.com', password: 'aaaaaa', password_confirmation: 'aaaaaa' }])
user4 = User.create([{ name: 'Sophana Sok', username: 'TheSophana', email: 'sophana@email.com', password: 'aaaaaa', password_confirmation: 'aaaaaa' }])
user5 = User.create([{ name: 'Cosimo Barbato', username: 'TheCosimo', email: 'cosimo@email.com', password: 'aaaaaa', password_confirmation: 'aaaaaa' }])
user6 = User.create([{ name: 'Joe James', username: 'TheJoe', email: 'joe@email.com', password: 'aaaaaa', password_confirmation: 'aaaaaa' }])
user7 = User.create([{ name: 'Jenny Doe', username: 'TheJenny', email: 'jenny@email.com', password: 'aaaaaa', password_confirmation: 'aaaaaa' }])
user8 = User.create([{ name: 'Alex Kim', username: 'TheAlex', email: 'alex@email.com', password: 'aaaaaa', password_confirmation: 'aaaaaa' }])
user9 = User.create([{ name: 'Bob Jones', username: 'TheBob', email: 'bob@email.com', password: 'aaaaaa', password_confirmation: 'aaaaaa' }])
user10 = User.create([{ name: 'Dan Cobb', username: 'TheDan', email: 'dan@email.com', password: 'aaaaaa', password_confirmation: 'aaaaaa' }])

(0...Business.count).each do |i|
  Business.all[i].ratings.create([{rating:3, user: User.all[i]}, {rating:5, user: User.all[User.count - i - 1]}])

end
