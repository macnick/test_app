class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
    # returns true or false
  end

  def require_user
    if !logged_in?
      flash[:danger] = "You must log in to perform that action"
      redirect_to root_path
    end
  end
end
