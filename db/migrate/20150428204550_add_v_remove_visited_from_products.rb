class AddVRemoveVisitedFromProducts < ActiveRecord::Migration
  def change
    add_column :products, :visted, :boolean
  end
end
