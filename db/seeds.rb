Business.destroy_all
User.destroy_all
Rating.destroy_all


business1 = Business.create([{ phone_number: '3109980069' , website: 'http://www.barkowski.com/', setting: 'Dive Bar', price: 'inexpensive', business_name: 'Barkowski', street_no: '2819', street_name: 'Pico Blvd', city: 'Santa Monica', zipcode: '90405', state: 'California', happy_hour_time: '5 - 7 pm' }])
business2 = Business.create([{ phone_number: '3106569800', website: 'http://www.themisfitbar.com/', setting: 'pub', price: 'inexpensive', business_name: 'The Misfit Bar', street_no: '225', street_name: 'Santa Monica Blvd', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '12 - 7 pm' }])
business3 = Business.create([{ phone_number: '3103144855', website: 'http://www.libraryalehouse.com', setting: 'pub', price: 'inexpensive', business_name: 'Library Ale House', street_no: '2911', street_name: 'Main St', city: 'Santa Monica', zipcode: '90405', state: 'California', happy_hour_time: '3 - 6 pm' }])
business4 = Business.create([{ phone_number: '3105763030', website: 'http://www.copadoro.com', setting: 'pub', price: 'inexpensive', business_name: 'Copa d Oro', street_no: '217', street_name: 'Broadway', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '5:30 - 8 pm' }])
business5 = Business.create([{ phone_number: '3104507631', website: 'http://www.thedailypint.net', setting: 'pub', price: 'inexpensive', business_name: 'The Daily Pint',street_no: '2310', street_name: 'Pico Blvd', city: 'Santa Monica', zipcode: '90405', state: 'California', happy_hour_time: 'none' }])
business6 = Business.create([{ phone_number: '3108996999', website: 'http://www.barchloe.com', setting: 'pub', price: 'inexpensive', business_name: 'Bar Chloe', street_no: '1449', street_name: '2nd street', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '5 - 7 pm' }])
business7 = Business.create([{ phone_number: '3102604504', website: 'http://www.viceroyhotelsandresorts.com/', setting: 'pub', price: 'inexpensive',  business_name: 'Cameo Bar', street_no: '1819', street_name: 'Ocean Ave', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '4 - 6 pm' }])
business8 = Business.create([{ phone_number: '3104580707', website: 'http://www.yelp.com/biz/speak-easy-cocktail-santa-monica', setting: 'pub', price: 'inexpensive', business_name: 'Speak Easy Cocktail', street_no: '1326', street_name: 'Pico Blvd', city: 'Santa Monica', zipcode: '90405', state: 'California', happy_hour_time: '4 - 7 pm' }])
business9 = Business.create([{ phone_number: '3103956037', website: 'http://www.circa93.com', setting: 'pub', price: 'inexpensive', business_name: 'The Room', street_no: '1325', street_name: 'Santa Monica Blvd', city: 'Santa Monica', zipcode: '90404', state: 'California', happy_hour_time: '9 - 11 pm' }])
business10 = Business.create([{ phone_number: '3102594146', website: 'http://www.thecraftsmanbar.com', setting: 'pub', price: 'inexpensive', business_name: 'The Craftsman', street_no: '119', street_name: 'Broadway', city: 'Santa Monica', zipcode: '90405', state: 'California', happy_hour_time: '5 - 8 pm' }])
business11 = Business.create([{ phone_number: '3104341511', website: 'http://www.makailounge.com/', setting: 'Raw Bar', price: 'moderate', business_name: 'Makai', street_no: '101', street_name: 'Broadway', city: 'Santa Monica', zipcode: '90405', state: 'California', happy_hour_time: '4 - 7 pm' }])
business12 = Business.create([{ phone_number: '3106565777', website: 'http://www.barneysbeanery.com/', setting: 'bar/grill', price: 'inexpensive', business_name: "Barney's Beanery", street_no: '1351', street_name: '3rd Street', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '4 - 7 pm' }])
business13 = Business.create([{ phone_number: '3104583080', website: 'http://www.wokcanorestaurant.com', setting: 'restaurant & lounge', price: 'moderate', business_name: 'Wokcano', street_no: '1413', street_name: '5th Street', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: 'Sunday - Monday all day, Tuesday - Saturday 4 - 7:30 pm' }])
business14 = Business.create([{ phone_number: '3104582012', website: 'http://www.barpintxo.com', setting: 'tapas bar', price: 'moderate', business_name: 'Bar Pintxo', street_no: '109', street_name: 'Santa Monica Blvd', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '12 - 6:30 pm' }])
business15 = Business.create([{ phone_number: '3104585350', website: 'http://www.brittaniapub.com', setting: 'pub', price: 'inexpensive', business_name: 'The Britannia Pub',street_no: '318', street_name: 'Santa Monica', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '12 - 7 pm' }])
business16 = Business.create([{ phone_number: '3103933113', website: 'http://www.theivyrestaurants.com/ivy-at-the-shore/', setting: 'restaurant', price: 'expensive', business_name: 'Ivy at the Shore', street_no: '1535', street_name: 'Ocean Blvd', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: 'None' }])
business17 = Business.create([{ phone_number: '3103932666', website: 'http://www.bigdeansoceanfrontcafe.com/', setting: 'pub', price: 'inexpensive',  business_name: "Big Dean's Ocean Front Cafe", street_no: '1615', street_name: 'Ocean Front Walk', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '4 - 7 pm' }])
business18 = Business.create([{ phone_number: '3103935755', website: 'http://www.thecabocantina.com', setting: 'bar', price: 'inexpensive', business_name: 'Cabo Cantina', street_no: '1240', street_name: '3rd Street', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '4 - 8 pm' }])
business19 = Business.create([{ phone_number: '3104584771', website: 'http://www.innovativedining.com/restaurants/sushiroku', setting: 'sushi bar', price: 'expensive', business_name: 'Sushi Roku', street_no: '1401', street_name: 'Ocean Blvd', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '5 - 7 pm' }])
business20 = Business.create([{ phone_number: '3104511402', website: 'http://www.yeoldekingshead.com/', setting: 'pub', price: 'inexpensive', business_name: "Ye Olde King's Head", street_no: '116', street_name: 'Santa Monica Blvd', city: 'Santa Monica', zipcode: '90401', state: 'California', happy_hour_time: '4 - 7 pm' }])

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


