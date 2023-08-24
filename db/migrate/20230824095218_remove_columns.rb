class RemoveColumns < ActiveRecord::Migration[7.0]
  def self.up
    remove_column :offers, :price
    remove_column :offers, :location
  end
end
