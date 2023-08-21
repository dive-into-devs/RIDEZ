class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :plate
      t.string :model
      t.integer :vin
      t.references :owner, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
