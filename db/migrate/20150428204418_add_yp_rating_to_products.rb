class AddYpRatingToProducts < ActiveRecord::Migration
  def change
    add_column :products, :ypRating, :integer
  end
end
