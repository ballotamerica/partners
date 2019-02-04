class AddPartnerIdToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :partner_id, :integer
  end
end
