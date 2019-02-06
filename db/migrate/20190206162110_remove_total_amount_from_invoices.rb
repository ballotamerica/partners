class RemoveTotalAmountFromInvoices < ActiveRecord::Migration[5.2]
  def change
    remove_column :invoices, :total_amount
  end
end
