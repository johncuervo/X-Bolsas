class AddNameToVendors < ActiveRecord::Migration[5.2]
  def change
    add_column :vendors, :name, :string
    add_index :vendors, :name, unique: true
  end
end
