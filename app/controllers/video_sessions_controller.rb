class VideoSessionsController < ApplicationController
  before_action :authenticate_current_user

  def new
    @candidate = params[:candidate_id]
  end

  def create
    @video_session = VideoSessions::Create.new(params[:candidate_id], session[:access_token], params[:max_duration], params[:max_bookmarks_count]).call
    redirect_to video_session_path(@video_session.data["id"])
  end

  def show
    @video_session = VideoSessions::Get.new(params[:id], session[:access_token]).call
  end

  def destroy
    VideoSessions::Destroy.new(params[:id], session[:access_token]).call
    redirect_to root_path
  end
end
