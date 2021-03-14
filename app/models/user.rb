class User < ApplicationRecord
  has_many :reviews
  has_many :cheeses
  has_many :reviewed_cheeses, through: :reviews, source: :cheese

  validates :name, :email, presence: true 
  validates :name, :email, uniqueness: true
  has_secure_password

  def self.from_omniauth(response)
    User.find_or_create_by(uid: response[:uid], provider: response[:provider]) do |u|
     # byebug
      u.name = response[:info][:name]
      u.email = response[:info][:email]
      u.password = SecureRandom.hex(15)
    end 
  end 


end
