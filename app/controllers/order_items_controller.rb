class OrderItemsController < ApplicationController
  before_action :authorize!

  def create
    @order = current_order
    @orderitem = @order.order_items.new(orderitem_params)
    @order.user = current_user
    @item = Item.find(@orderitem.item_id)
    @order.status = false
    @order.save
    session[:order_id] = @order.id
    flash[:notice] = "Added to your cart!"
    redirect_to item_path(@orderitem.item_id)
    # if @item.bnb == true
    #   redirect_to BnB_items_path(@item)
    # else
    #   redirect_to store_items_path(@item)
    # end
  end

  private
  def orderitem_params
    params.require(:order_item).permit(:quantity, :item_id)
  end
end
