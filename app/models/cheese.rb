class Cheese < ApplicationRecord

  belongs_to :user
  belongs_to :style
  
  has_many :pairings
  has_many :wines, through: :pairings

  has_many :reviews
  has_many :users, through: :reviews

  validates :name, :color, :texture, presence: true 

  scope :order_alpha, -> { order(name: :asc)}

  def style_attributes=(attributes)
    self.style = Style.find_or_create_by(attributes) if !attributes['name'].empty?
    self.style
  end

  def style_name
    style.try(:name)
  end

  def name_and_style
    "#{name} - #{style.try(:name)}"
  end 


end
