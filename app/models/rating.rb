class Rating < ActiveRecord::Base
  # Rating should be from 1-5
  # Figure out how to display stars for rating system
  validates_presence_of :rating
end
