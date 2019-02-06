class AddBaserateToServices < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :baserate, :decimal, :precision => 8, :scale => 2
  end
end
