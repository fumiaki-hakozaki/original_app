class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: :top
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery

  def after_sign_in_path_for(resource)
    user_path(current_user.id)
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def not_authenticated
    flash[:info] = 'ログインしてください'
    redirect_to main_app.login_path
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :image])
  end

end
