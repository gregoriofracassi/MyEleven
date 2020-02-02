class Player < ApplicationRecord
  belongs_to :team
  has_many :startings
  has_many :elevens, through: :startings
end
