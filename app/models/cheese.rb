class Cheese < ApplicationRecord

  belongs_to :user

  
  has_many :pairings
  has_many :wines, through: :pairings

  has_many :reviews
  has_many :users, through: :reviews

  validates :name, :color, :texture, presence: true 

  scope :order_alpha, -> { order(name: :asc)}


end
