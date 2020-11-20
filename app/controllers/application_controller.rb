class ApplicationController < ActionController::Base
  before_action :check_authorization
  helper_method :logged_in?
  helper_method :current_user
  helper_method :admin?

  def current_user
    if !session[:user_id].nil?
      User.find(session[:user_id])
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def admin?
    current_user && current_user.role == 100
  end

  def check_authorization
    redirect_to :login_path unless logged_in?
  end
end
