class AddInvoiceIdToServices < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :invoice_id, :integer
  end
end
