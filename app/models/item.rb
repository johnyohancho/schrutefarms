class Item < ApplicationRecord
  has_many :orders, through: :orderitems
  has_many :users, through: :reviews
  has_many :reviews
  has_many :orderitems
end
