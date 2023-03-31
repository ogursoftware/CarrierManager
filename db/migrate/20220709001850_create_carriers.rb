class CreateCarriers < ActiveRecord::Migration[7.0]
  def change
    create_table :carriers do |t|
      t.string :name
      t.integer :mc_number
      t.integer :dot_number
      t.string :address
      t.string :main_contact
      t.integer :contact_number

      t.timestamps
    end
  end
end
