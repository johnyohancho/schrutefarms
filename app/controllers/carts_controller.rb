class CartsController < ApplicationController
  before_action :authorize!

  def show
    #@order_items.user = current_user
    @order_items = current_order.order_items
  end

  def confirmation
    session[:order_id] = nil
  end
end
