class ItemsController < ApplicationController
    def index_BnB
        @items_bnb = Item.all.where(bnb: true)
    end

    def index_store
        @items_store = Item.all.where(bnb: false)
    end
    
    def show
        @item = Item.find(params[:id])
    end
end