# Copy and paste from Grant's gist
#NOTE: Factory Girl Expects that each class inherits from ActiveRecord

#All of our factory declarations get wrapped in a FactoryGirl.define block
FactoryGirl.define do

  #we define a factory name, and then we specify the class
  factory :a_user, class: User do

    #these setup the attributes, each declaration is a method call
    email "x@y.com"
    password "gemini"
    name "bob"
    username "bob22"

  end
end


# Below is an example of how to use factory girl for test spec files
# This can all be deleted later!!
# require "rails_helper"

# describe User do

#     it "has an email" do
#       #now use FactoryGirl to build a user
#       user = FactoryGirl.build_stubbed(:a_user)
#       expect(user.email).to_not be_nil  
#     end

#     it "has a password" do
#       user = FactoryGirl.build_stubbed(:a_user)
#       expect(user.password).to_not be_nil
#     end

# end