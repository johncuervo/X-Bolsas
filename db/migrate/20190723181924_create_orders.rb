class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.decimal :total
      t.decimal :subtotal
      t.decimal :iva
      t.references :vendor, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
