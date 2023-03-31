class CreateLoads < ActiveRecord::Migration[7.0]
  def change
    create_table :loads do |t|
      t.string :load_number
      t.string :pickup_city
      t.string :delivery_city
      t.string :broker
      t.decimal :rate
      t.datetime :pickup_date
      t.datetime :delivery_date
      t.binary :rate_confirmation

      t.timestamps
    end
  end
end
