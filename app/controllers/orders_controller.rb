class OrdersController < ApplicationController
    def index
        @orders = Order.where(user_id: current_user.id, status: true ).ids
    end

    private

    def order_params
    end
end
