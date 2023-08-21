class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :full_name
      t.string :billing_address
      t.string :phone_number

      t.timestamps
    end
  end
end
