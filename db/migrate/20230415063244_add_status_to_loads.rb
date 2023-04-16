class AddStatusToLoads < ActiveRecord::Migration[7.0]
  def change
    add_column :loads, :status, :integer
  end
end
