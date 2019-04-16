class ItemsController < ApplicationController
    def index_BnB
        @items_bnb = Item.all.where(bnb: true)
    end

    def index_store
        @items_store = Item.all.where(bnb: false)
    end

    def show
        @item = Item.find(params[:id])
        @items = Item.all
        @order_item = current_order.order_items.new
        @reviews = Review.all
    end
end
