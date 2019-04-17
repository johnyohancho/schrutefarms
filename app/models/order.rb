class Order < ApplicationRecord
  has_many :items, through: :order_items
  has_many :order_items
  belongs_to :user

  before_save :update_total

  private

  def update_total
    self.total_price = total_cost
  end

  def total_cost
    sum = 0
    self.order_items.each do |orderitem|
      sum += orderitem.item.cost * orderitem.quantity
    end
    sum
  end

end
