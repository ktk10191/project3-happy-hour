class Rating < ActiveRecord::Base
  validates_presence_of :rating

  belongs_to :business
  belongs_to :user
end