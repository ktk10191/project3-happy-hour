class Rating < ActiveRecord::Base
  validates_presence_of :rating
<<<<<<< HEAD

  belongs_to :business
  belongs_to :user
=======
>>>>>>> 0bd5a66d22d14b0d5d04d99b5a71ab4b5ead3080
end