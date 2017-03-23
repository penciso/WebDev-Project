class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.string :supplier_name
      t.string :supplier_address
      t.string :supplier_manager
      t.integer :contact_number

      t.timestamps
    end
  end
end
