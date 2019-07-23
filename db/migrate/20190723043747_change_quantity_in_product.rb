class ChangeQuantityInProduct < ActiveRecord::Migration[5.2]
  def up
    change_column :products, :quantity, :integer
  end

  def down
    change_column :products, :quantity, :decimal
  end
end
