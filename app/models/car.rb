class Car < ApplicationRecord
  belongs_to :owner
  has_many :users, through: :offers
end
