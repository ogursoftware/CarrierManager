class AddCarrierIdToKaderes < ActiveRecord::Migration[7.0]
  def change
    add_column :kaderes, :carrier_id, :integer
    add_index :kaderes, :carrier_id
  end
end
