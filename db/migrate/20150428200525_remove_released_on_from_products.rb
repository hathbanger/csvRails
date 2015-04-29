class RemoveReleasedOnFromProducts < ActiveRecord::Migration
  def up
    remove_column :products, :released_on
  end

  def down
    add_column :products, :released_on, :string
  end
end
