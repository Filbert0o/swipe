class PlaidAuthenticationsController < ApplicationController
  #pointing to this with a `public_token` param will set the access token in the session
  def new
    exchange_token_response = plaid_client.item.public_token.exchange(params['public_token'])
    #store the access token in the session
    session[:access_token] = exchange_token_response['access_token']
    redirect_to root_path
  end

  def create
    binding.pry
    exchange_token_response = plaid_client.item.public_token.exchange(params['public_token'])
    #store the access token in the session
    session[:access_token] = exchange_token_response['access_token']
    item_id = exchange_token_response['item_id']
    binding.pry
    render json: exchange_token_response.to_json
  end
end
