class RemoveAmountFromServices < ActiveRecord::Migration[5.2]
  def change
    remove_column :services, :sub_amount
  end
end
