class AddKadereIdToLoads < ActiveRecord::Migration[7.0]
  def change
    add_column :loads, :kadere_id, :integer
    add_index :loads, :kadere_id
  end
end
