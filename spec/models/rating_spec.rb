require 'rails_helper'
require 'shoulda/matchers'

describe Rating do

  it { should validate_presence_of(:rating) }

end