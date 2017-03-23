class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.string :item_ordered
      t.integer :ordered_price
      t.integer :number_of_items
      t.integer :ordered_amount
      t.integer :ordered_total

      t.timestamps
    end
  end
end
