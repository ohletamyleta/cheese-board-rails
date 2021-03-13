class Cheese < ApplicationRecord

  belongs_to :user
  belongs_to :style
  has_many :wines

  has_many :reviews
  has_many :users, through: :reviews

  validates :name, :color, :texture, presence: true 

  scope :order_alpha, -> { order(name: :asc)}
  
  # figure out why this sin't working 
  validate :not_a_duplicate

  def not_a_duplicate
    cheese = Cheese.find_by(name: name, style_id: style_id)
    if !!cheese && cheese != self
      errors.add(:name, 'has already been added for that style')
    end
  end 

  def style_name
    style.try(:name)
  end

  def name_and_style
    "#{name} - #{style.try(:name)}"
  end 


end
