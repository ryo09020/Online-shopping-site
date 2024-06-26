# frozen_string_literal: true

class Admin::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  def after_sign_in_path_for(resource)
    
    flash[:notice] ="Welcome! a have signed in successfully."
    admin_homes_path
  end
  # GET /resource/sign_in
  # def new
  #   super
  # end
  def after_sign_out_path_for(resource)
    flash[:notice] ="You have signed out successfully."
    new_admin_session_path
  end
  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end
  

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
