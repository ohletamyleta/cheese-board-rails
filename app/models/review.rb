class Review < ApplicationRecord
  belongs_to :cheese
  belongs_to :user 

  validates :title, presence: true 
  validates :blocks, numericality: {only_integer: true, greater_than_or_equal_to: 0, less_than: 11}

  validates :cheese, uniqueness: { scope: :user, message: "has already been reviewed by you" }



end
