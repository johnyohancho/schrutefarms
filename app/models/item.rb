class Item < ApplicationRecord
  has_many :orders, through: :order_items
  has_many :users, through: :reviews
  has_many :reviews
  has_many :order_items
end
