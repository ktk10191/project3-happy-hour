require 'rails_helper'
require 'shoulda/matchers'

describe Address do

  xit "has a street address" do

    it { should validate_presence_of(:street_address) }

  end

  xit "has a city" do

    it { should validate_presence_of(:city) }

  end

  xit "has a state" do

    it { should validate_presence_of(:state) }

  end

end
