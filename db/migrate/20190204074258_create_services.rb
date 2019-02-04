class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.decimal :baserate
      t.decimal :sub_amount
    end
  end
end
