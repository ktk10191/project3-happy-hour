require 'rails_helper'

RSpec.describe BusinessesController, :type => :controller do
	describe "GET #index" do
		it "should get page for business" do

		    #simulate a 'get' request on our BusinessController
		    #hit the 'index' method
		    get :index

		    #staus code returned should be 200 for success
		    expect(response).to have_http_status(:success)
		end	 
	end
end
