class Address < ActiveRecord::Base

  validates_presence_of :street_address
  validates_presence_of :city
  validates_presence_of :state
  
end
