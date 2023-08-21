class CreateOffers < ActiveRecord::Migration[7.0]
  def change
    create_table :offers do |t|
      t.references :owner, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true
      t.string :price
      t.date :time_period
      t.string :location

      t.timestamps
    end
  end
end
