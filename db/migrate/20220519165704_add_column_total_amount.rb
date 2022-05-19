class AddColumnTotalAmount < ActiveRecord::Migration[7.0]
  def change
    add_column :invoices,:total_amount,:float 
  end
end
