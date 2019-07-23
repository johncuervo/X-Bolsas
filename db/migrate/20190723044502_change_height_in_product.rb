class ChangeHeightInProduct < ActiveRecord::Migration[5.2]
  def up
    change_column :products, :height, :integer
  end

  def down
    change_column :products, :height, :decimal
  end
end
