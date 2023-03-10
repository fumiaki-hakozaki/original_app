class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = current_user
    # @user = User.find(params[:id])
    favorites = Favorite.where(user_id: current_user.id).pluck(:factory_id)
    @favorite_list = Factory.find(favorites)
  end

  private

  def feed_params
    params.require(:user).permit(:image, :image_cache)
  end
end
