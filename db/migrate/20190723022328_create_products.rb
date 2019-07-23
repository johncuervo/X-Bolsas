class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.decimal :width
      t.decimal :height
      t.decimal :unit
      t.decimal :quantity
      t.decimal :price
      t.string :code

      t.timestamps
    end
  end
end
