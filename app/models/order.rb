class Order < ApplicationRecord
  has_many :items, through: :orderitems
  has_many :orderitems
  belongs_to :user
end
