class AddBusinessRefToRating < ActiveRecord::Migration
  def change
    add_reference :ratings, :business, index: true
  end
end
