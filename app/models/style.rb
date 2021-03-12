class Style < ApplicationRecord

  has_many :cheeses

  validates :name, uniqueness: true 

  scope :alpha -> {order(:name)}

  
end
