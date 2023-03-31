class AddKadereNameToLoads < ActiveRecord::Migration[7.0]
  def change
    add_column :loads, :kadere_name, :string
  end
end
