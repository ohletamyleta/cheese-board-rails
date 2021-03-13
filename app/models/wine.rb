class Wine < ApplicationRecord

  has_many :cheeses

  validates :varietal, uniqueness: true 

  scope :order_alpha, -> { order(name: :asc)}
  
end
