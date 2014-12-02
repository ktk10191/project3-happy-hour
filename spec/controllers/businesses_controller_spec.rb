require 'rails_helper'
require 'shoulda/matchers'

describe BusinessesController, :type => :controller do

  it "should get page for index" do
    get :index
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end

  it "should create a business" do
    post :create, business: FactoryGirl.attributes_for(:a_business)
    expect(response).to be_success
    expect(response).to have_http_status(201)
  end

  it "should delete a business" do
    delete :destroy, business: FactoryGirl.attributes_for(:a_business)
    expect(response).to be_success
  end

  it "should update a business" do
    patch :update, business: FactoryGirl.attributes_for(:a_business)
    expect(response).to be_success
  end

end
