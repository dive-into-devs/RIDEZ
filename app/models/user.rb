class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :cars, through: :offers
  has_many :offers
  has_one :owner
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
