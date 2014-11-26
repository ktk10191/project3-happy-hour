require "rails_helper"
require 'shoulda/matchers'

describe UsersController do
  
  	describe "GET #index" do
		it "should get page for users" do

		    #simulate a 'get' request on our UserController
		    #hit the 'index' method
		    get :index

		    #staus code returned should be 200 for success
		    expect(response).to have_http_status(:success)

		    #check that the index view was rendered
		    expect(response).to render_template(:index)

		end	
	end

end

