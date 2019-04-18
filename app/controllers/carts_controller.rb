class CartsController < ApplicationController
  before_action :authorize!

  def show
    #@order_items.user = current_user
    @order_items = current_order.order_items
  end

  def confirmation
    @order = Order.find(session[:order_id])
    @order.update(status: true)
    session[:order_id] = nil
  end
end
