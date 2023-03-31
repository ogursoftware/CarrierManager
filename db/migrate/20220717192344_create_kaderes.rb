class CreateKaderes < ActiveRecord::Migration[7.0]
  def change
    create_table :kaderes do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.integer :truck_number
      t.integer :trailer_number
      t.string :carrier_company

      t.timestamps
    end
  end
end
