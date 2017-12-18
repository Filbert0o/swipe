class PublicTokensController < ApplicationController
  def index
    public_token_response = plaid_client.item.public_token.exchange(access_token)
    render json: public_token_response.to_json
  end
end
