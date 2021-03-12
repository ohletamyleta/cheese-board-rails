class User < ApplicationRecord
  has_many :reviews
  has_many :cheeses
  has_many :reviewed_cheeses, through: :reviews, source: :cheese

  validates :name, :email, presence: true 
  validates :name, :email, uniqueness: true
  has_secure_password
end
