class Api::V1::PublicTokensController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    public_token_response = plaid_client.item.public_token.exchange(plaid_access_token)
    render json: public_token_response.to_json
  end
end
