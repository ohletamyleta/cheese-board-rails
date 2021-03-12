class Style < ApplicationRecord

  has_many :cheeses

  validates :name, uniqueness: true 

  scope :order_alpha, -> { order(name: :asc)}

  
end
