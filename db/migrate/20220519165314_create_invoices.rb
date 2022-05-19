class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.integer :po_number
      t.string :company_name
      t.date :po_date
      t.string :vendor_name
      t.string :shipping_method
      t.text :payment_terms
      t.date :required_date
      t.text :item_description
      t.integer :quantity
      t.float :item_amount

      t.timestamps
    end
  end
end
