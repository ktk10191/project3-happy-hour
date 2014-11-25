# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#   
   business1 = Business.create([{ phone_number: '3109980069' }, { website: 'http://www.barkowski.com/' }, 
   	{ rating_id: '1' }, { setting: 'Dive Bar' }, { price: 'low' }, { business_name: 'Barkowski' }, { street_no: '2819' }, { street_name: 'Pico Blvd' }
   	, { city: 'Santa Monica' }, { zipcode: '90405' }, { state: 'California' }])
     
	business2 = Business.create([{ phone_number: '3106569800' }, { website: 'http://www.themisfitbar.com/' }, 
   	{ rating_id: '1' }, { setting: 'pub' }, { price: 'low' }, { business_name: 'The Misfit Bar' }, { street_no: '225' }, { street_name: 'Santa Monica Blvd' }
   	, { city: 'Santa Monica' }, { zipcode: '90401' }, { state: 'California' }])

   	business3 = Business.create([{ phone_number: '3103144855' }, { website: 'http://www.libraryalehouse.com' }, 
   	{ rating_id: '1' }, { setting: 'pub' }, { price: 'low' }, { business_name: 'Library Ale House' }, { street_no: '2911' }, { street_name: 'Main St' }
   	, { city: 'Santa Monica' }, { zipcode: '90405' }, { state: 'California' }])

   	business4 = Business.create([{ phone_number: '3105763030' }, { website: 'http://www.copadoro.com' }, 
   	{ rating_id: '1' }, { setting: 'pub' }, { price: 'low' }, { business_name: 'Copa d Oro' }, { street_no: '217' }, { street_name: 'Broadway' }
   	, { city: 'Santa Monica' }, { zipcode: '90401' }, { state: 'California' }])

   	business5 = Business.create([{ phone_number: '3104507631' }, { website: 'http://www.thedailypint.net' }, 
   	{ rating_id: '1' }, { setting: 'pub' }, { price: 'low' }, { business_name: 'The Daily Pint' }, { street_no: '2310' }, { street_name: 'Pico Blvd' }
   	, { city: 'Santa Monica' }, { zipcode: '90405' }, { state: 'California' }])

   	business6 = Business.create([{ phone_number: '3108996999' }, { website: 'http://www.barchloe.com' }, 
   	{ rating_id: '1' }, { setting: 'pub' }, { price: 'low' }, { business_name: 'Bar Chloe' }, { street_no: '1449' }, { street_name: '2nd street' }
   	, { city: 'Santa Monica' }, { zipcode: '90401' }, { state: 'California' }])

   	business7 = Business.create([{ phone_number: '3102604504989' }, { website: 'http://www.viceroyhotelsandresorts.com/' }, 
   	{ rating_id: '1' }, { setting: 'pub' }, { price: 'low' }, { business_name: 'Cameo Bar' }, { street_no: '1819' }, { street_name: 'Ocean Ave' }
   	, { city: 'Santa Monica' }, { zipcode: '90401' }, { state: 'California' }])

   	business8 = Business.create([{ phone_number: '3104580707' }, { website: 'http://www.yelp.com/biz/speak-easy-cocktail-santa-monica' }, 
   	{ rating_id: '1' }, { setting: 'pub' }, { price: 'low' }, { business_name: 'Speak Easy Cocktail' }, { street_no: '1326' }, { street_name: 'Pico Blvd' }
   	, { city: 'Santa Monica' }, { zipcode: '90405' }, { state: 'California' }])

   	business9 = Business.create([{ phone_number: '3103956037' }, { website: 'http://www.circa93.com' }, 
   	{ rating_id: '1' }, { setting: 'pub' }, { price: 'low' }, { business_name: 'The Room' }, { street_no: '1325' }, { street_name: 'Santa Monica Blvd' }
   	, { city: 'Santa Monica' }, { zipcode: '90404' }, { state: 'California' }])

   	business10 = Business.create([{ phone_number: '3102594146' }, { website: 'http://www.thecraftsmanbar.com' }, 
   	{ rating_id: '1' }, { setting: 'pub' }, { price: 'low' }, { business_name: 'business1' }, { street_no: '119' }, { street_name: 'Broadway' }
   	, { city: 'Santa Monica' }, { zipcode: '90405' }, { state: 'California' }])