class Business < ActiveRecord::Base
  validates_presence_of :phone_number
  validates_uniqueness_of :phone_number
  validates_length_of :phone_number, is: 10
  validates_format_of :phone_number, with: /\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/ 
end