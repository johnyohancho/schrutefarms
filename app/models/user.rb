class User < ApplicationRecord
  has_many :items, through: :reviews
  has_many :reviews
  has_many :orders
  # validates :username, :password, presence: true
  # validates :username, uniqueness: true
end
