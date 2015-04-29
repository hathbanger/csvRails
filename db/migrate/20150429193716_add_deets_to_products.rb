class AddDeetsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :zip, :integer
    add_column :products, :manager, :string
    add_column :products, :contact, :string
    add_column :products, :status, :boolean
  end
end
