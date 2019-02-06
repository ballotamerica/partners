class AddTotalAmountToInvoices < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :total_amount, :decimal, :precision => 8, :scale => 2
  end
end
