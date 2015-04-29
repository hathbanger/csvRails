class AddDetailsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :location, :string
    add_column :products, :phone, :integer
    add_column :products, :website, :string
    add_column :products, :ybRating, :integer
    add_column :products, :userRating, :integer
    add_column :products, :shelfSpace, :integer
    add_column :products, :visited, :boolean
    add_column :products, :notes, :string
  end
end
