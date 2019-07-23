class ChangeWidthInProduct < ActiveRecord::Migration[5.2]
  def up
    change_column :products, :width, :integer
  end

  def down
    change_column :products, :width, :decimal
  end
end
