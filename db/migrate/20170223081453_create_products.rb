class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :product_id
      t.string :product_name
      t.integer :product_price
      t.integer :product_stock
      t.string :date_delivered
      t.string :supplier

      t.timestamps
    end
  end
end
