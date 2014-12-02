require 'rails_helper'
require 'shoulda/matchers'

describe UsersController do

  it "should get page for users" do
    get :index
    expect(response).to have_http_status(:success)
    expect(response).to render_template(:index)
  end

  it "should create a new user" do 
    post :create, user: FactoryGirl.attributes_for(:a_user)
    expect(response).to redirect_to(root_url)
  end

  it "should delete a user" do
    delete :destroy, user: FactoryGirl.attributes_for(:a_user)
    expect(response).to have_http_status(:success)
  end

  it "should update a user" do
    patch :update, user: FactoryGirl.attributes_for(:a_user)
    expect(response).to have_http_status(:success)
  end
end