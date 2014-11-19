class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address_id
      t.string :street_address
      t.string :city
      t.string :state_id
      t.string :state

      t.timestamps
    end
  end
end
