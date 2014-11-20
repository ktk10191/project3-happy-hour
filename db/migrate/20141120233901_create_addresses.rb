class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_no
      t.string :street_name
      t.string :city
      t.string :zipcode
      t.string :state
      t.references :business, index: true

      t.timestamps
    end
  end
end
