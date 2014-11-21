class Rating < ActiveRecord::Base
  validates_presence_of :rating
  validates_numericality_of :rating, only_integer: true
  validates_numericality_of :rating, greater_than_or_equal_to: 0, less_than_or_equal_to: 5

  belongs_to :business
  belongs_to :user
end