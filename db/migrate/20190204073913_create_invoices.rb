class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string "invoice_number"
      t.date "invoice_date"
      t.datetime "due_date"
      t.decimal "total_amount"
      t.text "invoice_note"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
