class CandidatesController < ApplicationController
  before_action :authenticate_current_user

  def index
    @candidates = Candidates::List.new(session[:access_token]).call
  end

  def create
    @candidate = Candidates::Create.new(session[:access_token]).call
    redirect_to candidates_path(@candidate.data["id"])
  end

  def show
    @candidate = Candidates::Get.new(params[:id], session[:access_token]).call
  end

  def destroy
    @candidate = Candidates::Destroy.new(params[:id], session[:access_token]).call
    redirect_to root_path
  end
end
