class Eleven < ApplicationRecord
  belongs_to :user
  belongs_to :team
  has_many :comments
  has_many :ratings
  has_many :users, through: :comments
  has_many :users, through: :ratings
  has_many :startings
  has_many :players, through: :startings
end
