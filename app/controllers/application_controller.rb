class ApplicationController < ActionController::Base
  # devise authorise username field
  before_action :configure_permitted_parameters, if: :devise_controller?

  # devise authorise username field

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation])
  end
end
