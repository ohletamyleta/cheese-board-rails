class Wine < ApplicationRecord

  has_many :cheeses

  scope :order_alpha, -> { order(name: :asc)}
  
end

