class User < ApplicationRecord
  has_many :reviews
  has_many :cheeses
  has_many :reviewed_cheeses, through: :reviews, source: :cheese

  
end
