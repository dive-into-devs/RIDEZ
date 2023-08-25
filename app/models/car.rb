class Car < ApplicationRecord
  belongs_to :owner
  has_many :users, through: :offers
  has_many_attached :photos
end
