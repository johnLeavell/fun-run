class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :top_size, :bottom_size,:shoe_id])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:password, :remember_me])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :top_size, :bottom_size, :shoe_id])
  end
end
