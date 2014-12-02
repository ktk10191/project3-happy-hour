FactoryGirl.define do
  factory :a_business, class: Business do
    id 1
	  phone_number "1234567890"
	  website "bar.com"
	  setting "lively"
	  price "expensive"
  end

end