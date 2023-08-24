class AddColumns < ActiveRecord::Migration[7.0]
  def self.up
    add_column :cars, :price, :float
    add_column :cars, :location, :string
  end
end
