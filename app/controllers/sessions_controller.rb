class SessionsController < ApplicationController
  def create
    if User.authorized_token? params[:auth_token]
      cookies[:auth_token] = params[:auth_token]
      redirect_to projects_path
    else
      # authentication failed for some reason
      render :text => "Something failed horribly."
    end
  end

  def destroy
    
  end

end
