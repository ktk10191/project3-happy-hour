require 'rails_helper'
require 'shoulda/matchers'

describe Business, :type => :model do
  
   # validate business has a phone number
  it { should validate_presence_of(:phone_number) }

  # validate phone number is 10 digits
  it { should ensure_length_of(:phone_number).is(10) }

  # validate phone number is an integer
  it { should validate_numericality_of(:phone_number).only_integer }

  # validate business has ratings
  it { should have_many(:ratings) }

  # validate business has an address
  it { should has_one(:address) }


end


  it { should validate_presence_of(:name) }

  it { should ensure_length_of(:name).is_at_least(1) }

  it { should ensure_length_of(:name).is_at_most(50) }  

  it { should belong_to(:list) }