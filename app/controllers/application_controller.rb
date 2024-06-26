class ApplicationController < ActionController::Base
  # before_action :authenticate_customer!, except: [:top, :about]
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  
  
  
  
  
  protected

  def configure_permitted_parameters
    added_attrs = [ :last_name, :last_name_kana, :first_name, :first_name_kana, :postal_code, :address, :email, :phone_number, :password, :password_confirmation]
    devise_parameter_sanitizer.permit(:sign_up, keys: added_attrs)
    devise_parameter_sanitizer.permit(:account_update, keys: added_attrs)
  end
end
