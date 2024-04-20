# app/controllers/root_controller.rb
class RunnersController < ApplicationController
  def index
    if user_signed_in?
      redirect_to runners_path
    else
      redirect_to welcome_path
    end
  end
end
