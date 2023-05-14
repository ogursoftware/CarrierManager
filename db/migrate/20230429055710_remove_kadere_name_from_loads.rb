class RemoveKadereNameFromLoads < ActiveRecord::Migration[7.0]
  def change
    remove_column :loads, :kadere_name, :string
  end
end
