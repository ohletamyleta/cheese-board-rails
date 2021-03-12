class Cheese < ApplicationRecord

  belongs_to :user
  belongs_to :style

  has_many :reviews
  has_many :users, through: :reviews

  validates :name, :color, :texture, presence: true 
  # validates :not_a_duplicate 

  # def not_a_duplicate
  #   cheese = Cheese.find_by(name: name, style_id: style_id)
  #   if !!cheese && cheese != self
  #     errors.add(:name, 'has already been added for that style')
  #   end
  # end 

  #scope :alpha -> {order(:name)}

end
