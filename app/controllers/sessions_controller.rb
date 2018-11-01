class SessionsController < ApplicationController
  def new
  end

  def create
    session[:access_token] = params[:token]
    redirect_to root_path
  end

  def destroy
    session.clear
    redirect_to new_sessions_path
  end
end
