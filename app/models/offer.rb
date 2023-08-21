class Offer < ApplicationRecord
  belongs_to :owner
  belongs_to :user
  belongs_to :car
end
