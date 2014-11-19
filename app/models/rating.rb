class Rating < ActiveRecord::Base
  validates_presence_of :rating
end
