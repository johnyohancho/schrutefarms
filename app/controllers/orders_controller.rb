class OrdersController < ApplicationController
    def index
        @orders = Order.all
    end

    def new
        @order = Order.find(params[:id])
    end

    def create
    end

    private

    def order_params
    end
end
