class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.password_digest == params[:password_digest]
      cookies[:user_id] = @user.id
      redirect_to root_path
    else
      @error = "Invalid username or password"
      render :new
    end
  end

  def destroy
  end
end
