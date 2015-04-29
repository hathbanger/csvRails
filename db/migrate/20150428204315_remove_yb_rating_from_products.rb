class RemoveYbRatingFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :ybRating
  end

  def down
    add_column :products, :ybRating, :integer
  end
end
