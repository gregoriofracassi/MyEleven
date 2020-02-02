class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :elevens
  has_many :comments
  has_many :ratings
  has_many :elevens, through: :comments
  has_many :elevens, through: :ratings
end
