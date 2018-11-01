class ApplicationController < ActionController::Base

  def authenticate_current_user
    redirect_to new_session_path if session[:access_token].nil?
  end
end
