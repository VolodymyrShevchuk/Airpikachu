class ApplicationController < ActionController::Base

  before_action :configre_permitted_parameters, if: :devise_controller?

  protected

  def configre_permitted_parameters
    devise_parameter_sanitizer.permit(:sing_up, keys: [:fullname])
    devise_parameter_sanitizer.permit(:account_update, keys: [:fullname])

  end
end
