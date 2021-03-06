class Wine < ApplicationRecord

  has_many :pairings
  has_many :cheeses, through: :pairings
  accepts_nested_attributes_for :cheeses

  validates :varietal, presence: true 
  scope :order_alpha, -> { order(name: :asc)}
  
end

