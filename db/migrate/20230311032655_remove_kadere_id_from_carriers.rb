class RemoveKadereIdFromCarriers < ActiveRecord::Migration[7.0]
  def change
    remove_column :carriers, :kadere_id, :integer
  end
end
