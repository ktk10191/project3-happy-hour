class Addresstobusiness < ActiveRecord::Migration
  def change
   add_column :businesses, :street_no, :string
   add_column :businesses, :street_name, :string
   add_column :businesses, :city, :string
   add_column :businesses, :zipcode, :string
   add_column :businesses, :state, :string
   remove_column :businesses, :address_id, :integer
  end
end
