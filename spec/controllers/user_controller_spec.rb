require "rails_helper"
require 'shoulda/matchers'

describe UsersController do
  
  	describe "#index" do
		it "responds successfully with HTTP 200 status" do

		    #simulate a 'get' request on our UserController
		    #hit the 'index' method
		    get :index

		    #staus code returned should be 200 for success
		    expect(response).to have_http_status(:success)

		    #check that the index view was rendered
		    expect(response).to render_template(:index)

		end	

		it "renders the index template" do
      		get :index
      		expect(response).to render_template("index")
    end

		#index should return object
	  	it "should get an object from db" do

		    # kick off a get request
		    get :index

		    # simply test that this controller will assign an 
		    # @users object for our view
		    assigns(:users).should_not be_nil
	   end
	end



end

