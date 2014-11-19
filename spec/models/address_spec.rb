require 'rails_helper'
require 'shoulda/matchers'

describe Address do

  it { should validate_presence_of(:street_address) }

  it { should validate_presence_of(:city) }

  it { should validate_presence_of(:state) }

end
