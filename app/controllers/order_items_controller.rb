class OrderItemsController < ApplicationController
  before_action :authorize!

  def create
    @order = current_order
    @orderitem = @order.order_items.new(orderitem_params)
    @order.user = current_user
    @order.save
    session[:order_id] = @order.id
    @item = Item.find(@orderitem.item_id)
    flash[:success] = "Added to your cart!"
    if @item.bnb == true
      redirect_to BnB_items_path(@item)
    else
      redirect_to store_items_path(@item)
    end
  end

  private
  def orderitem_params
    params.require(:order_item).permit(:quantity, :item_id)
  end
end
