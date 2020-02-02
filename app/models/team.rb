class Team < ApplicationRecord
  has_many :elevens
  has_many :players
end
