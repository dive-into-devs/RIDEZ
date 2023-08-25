class Owner < ApplicationRecord
  belongs_to :user
  has_many :cars
end
