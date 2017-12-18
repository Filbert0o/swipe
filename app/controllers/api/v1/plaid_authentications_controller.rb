class Api::V1::PlaidAuthenticationsController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def new
    exchange_token_response = plaid_client.item.public_token.exchange(params['public_token'])
    #store the access token in the session
    session[:plaid_access_token] = exchange_token_response['access_token']

  end
end
