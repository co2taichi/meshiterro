class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configre_permitted_parametters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
