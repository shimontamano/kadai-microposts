class FavoritesController < ApplicationController
  def create
    micropost=Micropost.find(params[:like_id])
    current_user.like(micropost)
    flash[:success] = 'Micropostをお気に入りにしました。'
    redirect_to :back
    
  end

  def destroy
     micropost=Micropost.find(params[:like_id])
    current_user.unlike(micropost)
    flash[:success] = 'Micropostをお気に入りから抹消しました。'
    redirect_to :back
  end
end
