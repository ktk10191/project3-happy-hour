class UpdateBusinessModelAddress < ActiveRecord::Migration
  def change
    add_column :businesses, :address, :string
    remove_column :businesses, :street_no, :string
    remove_column :businesses, :street_name, :string
    remove_column :businesses, :price, :string
    remove_column :businesses, :setting, :string
  end
end
