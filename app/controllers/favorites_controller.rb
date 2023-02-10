class FavoritesController < ApplicationController
  
  def create
    favorite = current_user.favorites.create(factory_id: params[:factory_id])
    redirect_to factory_path(favorite.factory_id), notice: "#{favorite.factory.factory_name}をお気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to factory_path(favorite.factory_id), notice: "#{favorite.factory.factory_name}をお気に入り解除しました"
  end
end
