class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favor(micropost)
    flash[:success] = 'いいねしました。'
    redirect_back(fallback_location: root_path)
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavor(micropost)
    flash[:success] = 'いいねを取り消しました。'
    redirect_back(fallback_location: root_path)
  end
end
