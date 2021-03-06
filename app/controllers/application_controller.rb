class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) do |u| u.permit(:email, :password, :remember_me) end
    devise_parameter_sanitizer.for(:sign_up) do |u| u.permit(:email, :password, :password_confirmation, :remember_me,:first_name, :last_name, :company, :register_by, :zip_code, :is_idology_verified, :is_active, :reason_for_deactivate) end
    devise_parameter_sanitizer.for(:account_update) do |u| u.permit(:email, :password, :password_confirmation, :current_password,:first_name, :last_name, :company, :register_by, :zip_code, :is_idology_verified, :is_active, :reason_for_deactivate) end
  end
end
