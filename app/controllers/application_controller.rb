class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def plaid_client
    @plaid_client ||= Plaid::Client.new(env: :sandbox,
      client_id: ENV['PLAID_CLIENT_ID'],
      secret: ENV['PLAID_SECRET'],
      public_key: ENV['PLAID_PUBLIC_KEY'])

  end

  def access_token
    @access_token ||= session[:access_token]
  end


end
