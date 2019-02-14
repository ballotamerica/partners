class ChangeDueDateToDateFormat < ActiveRecord::Migration[5.2]
  def change
    change_column :invoices, :due_date, :date
  end
end
