class AddKadereIdToCarriers < ActiveRecord::Migration[7.0]
  def change
    add_column :carriers, :kadere_id, :integer
    add_index :carriers, :kadere_id
  end
end
