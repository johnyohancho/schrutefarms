class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        user_id = session[:user_id]
        if user_id.present?
            User.find(user_id)
        end
    end

    def authorize!
        unless current_user
            redirect_to login_path
        end
    end

    def current_order
      if session[:order_id]
        Order.find(session[:order_id])
      else
        Order.new
      end
    end
end
