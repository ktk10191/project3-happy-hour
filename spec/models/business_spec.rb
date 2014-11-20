require 'rails_helper'
require 'shoulda/matchers'

describe Business, :type => :model do
  
   # validate business has a phone number
  # it { should validate_presence_of(:phone_number) }

   # validates unique phone number
  it { should validate_uniqueness_of(:phone_number) }

  # validate phone number is 10 digits
<<<<<<< HEAD
  # it { should ensure_length_of(:phone_number).is(10) }

  # validate business has ratings
  # it { should have_many(:ratings) }

  # validate business has an address
  # it { should has_one(:address) }
end
=======
  it { should ensure_length_of(:phone_number).is_equal_to(10) }

  # validate phone number format
  it { should allow_value('1234567890').for(:phone_number) }

#   # validate business has ratings
#   it { should have_many(:ratings) }

#   # validate business has an address
#   it { should has_one(:address) }


end
>>>>>>> f4fbb66afb4cc6735e208fe0fd15c884c8237122
