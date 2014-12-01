class AddHappyHrTimeToBusiness < ActiveRecord::Migration
  def change
    remove_column :businesses, :business_id, :integer
    remove_column :businesses, :rating_id, :integer
    add_column :businesses, :happy_hour_time, :string
  end
end
