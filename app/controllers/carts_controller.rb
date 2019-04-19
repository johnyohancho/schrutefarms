class CartsController < ApplicationController
  before_action :authorize!

  def show
    @order_items = current_order.order_items
    Order.update(total_price: current_order.id)
  end

  def confirmation
    @order = Order.find(session[:order_id])
    @order.update(status: true)
    session[:order_id] = nil
  end
end
