class ChangePhoneNumberFormatInTable < ActiveRecord::Migration
  
  def up
   change_column :businesses, :phone_number, :string
  end

  def down
   change_column :businesses, :phone_number, :integer
  end

end