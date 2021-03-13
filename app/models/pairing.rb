class Pairing < ApplicationRecord
  belongs_to :wine
  belongs_to :cheese

  scope :order_alpha, -> { order(name: :asc)}

  
end
