class Pairing < ApplicationRecord
  belongs_to :wine
  belongs_to :cheese
end
