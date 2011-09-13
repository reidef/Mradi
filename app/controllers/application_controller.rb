class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  def current_user
    @current_user ||= User.authorized_token?(cookies[:auth_token]) if cookies[:auth_token]
  end
  
  def logged_in?
    current_user
  end
  
  def login_required
    unless logged_in?
      client_token = "Mradi"
      callback_url = "http://localhost:3000/remote_sessions/create/#{client_token}"
      redirect_to callback_url
    end
  end
  
  helper_method :current_user
end
