# ApplicationController
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def plaid_client
    @plaid_client ||= Plaid::Client.new(
      env:        :development,
      client_id:  ENV['PLAID_CLIENT_ID'],
      secret:     ENV['PLAID_SECRET'],
      public_key: ENV['PLAID_PUBLIC_KEY'])
  end

  def access_token
    @access_token ||= session[:access_token]
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :email])
  end
end
