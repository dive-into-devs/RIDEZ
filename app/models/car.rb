class Car < ApplicationRecord
  belongs_to :owner
  has_many :users, through: :offers
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
