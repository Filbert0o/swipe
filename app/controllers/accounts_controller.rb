class AccountsController < ApplicationController
  def index
    auth_response = plaid_client.auth.get(access_token)
    render json: auth_response.to_json
  end
end
