class Wine < ApplicationRecord

  has_many :pairings
  has_many :cheeses, through: :pairings

  scope :order_alpha, -> { order(name: :asc)}
  
end

