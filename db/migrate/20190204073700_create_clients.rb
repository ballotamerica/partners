class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :client_type
      t.string :poc_name
      t.string :poc_email
      t.string :poc_number
    end
  end
end
