Business.destroy_all
User.destroy_all
Rating.destroy_all


business1 = Business.create([{ phone_number: '3109980069' , website: 'http://www.barkowski.com/', business_name: 'Barkowski', address: '2819 Pico Blvd', city: 'Santa Monica', zipcode: '90405', state: 'California', happy_hour_time: '5 - 7 pm' }])
business2 = Business.create([{ phone_number: '3106569800', website: 'http://www.themisfitbar.com/', business_name: 'The Misfit Bar', address: '225 Santa Monica Blvd', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '12 - 7 pm' }])
business3 = Business.create([{ phone_number: '3103144855', website: 'http://www.libraryalehouse.com', business_name: 'Library Ale House', address: '2911 Main St', city: 'Santa Monica', zipcode: '90405', state: 'California', happy_hour_time: '3 - 6 pm' }])
business4 = Business.create([{ phone_number: '3105763030', website: 'http://www.copadoro.com', business_name: 'Copa d Oro', address: '217 Broadway', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '5:30 - 8 pm' }])
business5 = Business.create([{ phone_number: '3104507631', website: 'http://www.thedailypint.net', business_name: 'The Daily Pint',address: '2310 Pico Blvd', city: 'Santa Monica', zipcode: '90405', state: 'California', happy_hour_time: 'none' }])
business6 = Business.create([{ phone_number: '3108996999', website: 'http://www.barchloe.com', business_name: 'Bar Chloe', address: '1449 2nd street', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '5 - 7 pm' }])
business7 = Business.create([{ phone_number: '3102604504', website: 'http://www.viceroyhotelsandresorts.com/', business_name: 'Cameo Bar', address: '1819 Ocean Ave', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '4 - 6 pm' }])
business8 = Business.create([{ phone_number: '3104580707', website: 'http://www.yelp.com/biz/speak-easy-cocktail-santa-monica', business_name: 'Speak Easy Cocktail', address: '1326 Pico Blvd', city: 'Santa Monica', zipcode: '90405', state: 'California', happy_hour_time: '4 - 7 pm' }])
business9 = Business.create([{ phone_number: '3103956037', website: 'http://www.circa93.com', business_name: 'The Room', address: '1325 Santa Monica Blvd', city: 'Santa Monica', zipcode: '90404', state: 'California', happy_hour_time: '9 - 11 pm' }])
business10 = Business.create([{ phone_number: '3102594146', website: 'http://www.thecraftsmanbar.com', business_name: 'The Craftsman', address: '119 Broadway', city: 'Santa Monica', zipcode: '90405', state: 'California', happy_hour_time: '5 - 8 pm' }])
business11 = Business.create([{ phone_number: '3104341511', website: 'http://www.makailounge.com/', business_name: 'Makai', address: '101 Broadway', city: 'Santa Monica', zipcode: '90405', state: 'California', happy_hour_time: '4 - 7 pm' }])
business12 = Business.create([{ phone_number: '3106565777', website: 'http://www.barneysbeanery.com/', business_name: "Barney's Beanery", address: '1351 3rd Street', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '4 - 7 pm' }])
business13 = Business.create([{ phone_number: '3104583080', website: 'http://www.wokcanorestaurant.com', business_name: 'Wokcano', address: '1413 5th Street', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: 'Sunday - Monday all day, Tuesday - Saturday 4 - 7:30 pm' }])
business14 = Business.create([{ phone_number: '3104582012', website: 'http://www.barpintxo.com', business_name: 'Bar Pintxo', address: '109 Santa Monica Blvd', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '12 - 6:30 pm' }])
business15 = Business.create([{ phone_number: '3104585350', website: 'http://www.brittaniapub.com', business_name: 'The Britannia Pub',address: '318 Santa Monica', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '12 - 7 pm' }])
business16 = Business.create([{ phone_number: '3103933113', website: 'http://www.theivyrestaurants.com/ivy-at-the-shore/', business_name: 'Ivy at the Shore', address: '1535 Ocean Blvd', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: 'None' }])
business17 = Business.create([{ phone_number: '3103932666', website: 'http://www.bigdeansoceanfrontcafe.com/', business_name: "Big Dean's Ocean Front Cafe", address: '1615 Ocean Front Walk', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '4 - 7 pm' }])
business18 = Business.create([{ phone_number: '3103935755', website: 'http://www.thecabocantina.com', business_name: 'Cabo Cantina', address: '1240 3rd Street', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '4 - 8 pm' }])
business19 = Business.create([{ phone_number: '3104584771', website: 'http://www.innovativedining.com/restaurants/sushiroku', business_name: 'Sushi Roku', address: '1401 Ocean Blvd', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '5 - 7 pm' }])
business20 = Business.create([{ phone_number: '3104511402', website: 'http://www.yeoldekingshead.com/', business_name: "Ye Olde King's Head", address: '116 Santa Monica Blvd', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '4 - 7 pm' }])

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
  Business.all[i].ratings.create([{rating:3, user: User.all[i]}, {rating:2, user: User.all[i]}, {rating:5, user: User.all[User.count - i - 1]}, {rating:1, user: User.all[User.count - i - 1]}])

end


