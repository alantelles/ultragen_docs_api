class SessionsController < ApplicationController
  skip_before_action :check_authorization, only: [:new, :create]
  def index
    @user = User.find(session[:user_id])
  end
  
  def new
    @user = User.new
  end

  def logout
    session[:user_id] = nil
    redirect_to :login_path
  end

  def create
    post_data = params.require(:user).permit(:username, :password)
    @user = User.find_by(username: post_data[:username])
    if @user && @user.authenticate(post_data[:password])
      session[:user_id] = @user.id
      redirect_to :home_page
    else
      flash.notice = "User not found! Can't log you in."
      redirect_to :login_path
    end
  end
end
