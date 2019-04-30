class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  before_action :authenticate_user!, except: [:welcome, :login]

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate_user!
    current_user
    if @current_user.nil?
      redirect_to root_path
    end
  end
end
