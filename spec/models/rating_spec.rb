require 'rails_helper'
require 'shoulda/matchers'

describe Rating do

  it { should validate_presence_of(:rating) }

  it { should validate_numericality_of(:rating).only_integer }

  it { should belong_to(:business) }
  
  it { should belong_to(:user) }

  it { should validate_numericality_of(:rating).is_greater_than_or_equal_to(0).is_less_than_or_equal_to(5) }

end