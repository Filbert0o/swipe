# PlaidAuthenticationsController
class Api::V1::PlaidAuthenticationsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    exchange_token_response = plaid_client.item.public_token.exchange(params['_json'])
    # store the access token in the session
    session[:access_token] = exchange_token_response['access_token']
    item_id = exchange_token_response['item_id']
    render json: exchange_token_response.to_json
  end
end
