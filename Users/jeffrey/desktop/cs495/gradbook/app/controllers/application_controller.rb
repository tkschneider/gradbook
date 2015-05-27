class ApplicationController < ActionController::Base
  # Joe and Tim added code for Devise functionality
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  #before_action: authenticate_login!
  #before_action :authenticate_login!
  #Allows sign_up to accept more login fields besides
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :middle_initial, :last_name, :username, :type, :email, :password, :password_confirmation) }
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:logon, :username, :email, :password, :remember_me) }
    end
end
