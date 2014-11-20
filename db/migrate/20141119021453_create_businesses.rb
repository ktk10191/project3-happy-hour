class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.integer :business_id
      t.integer :address_id
      t.string :phone_number
      t.string :website
      t.integer :rating_id
      t.string :setting
      t.string :price

      t.timestamps
    end
  end
end