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
    if @order.errors.present?
      flash[:alert] = "Need to add quantity!"
      redirect_to item_path(@orderitem.item_id)
    else
      flash[:notice] = "Added to your cart!"
      redirect_to item_path(@orderitem.item_id)
    end
  end

  def destroy
    OrderItem.destroy(params[:id])
    redirect_to cart_path
  end

  private
  def orderitem_params
    params.require(:order_item).permit(:quantity, :item_id)
  end
end
