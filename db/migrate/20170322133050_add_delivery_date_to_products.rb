class AddDeliveryDateToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :delivery_date, :date
  end
end
