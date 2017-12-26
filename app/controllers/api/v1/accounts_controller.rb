# Api::V1::AccountsController
class Api::V1::AccountsController < ApplicationController
  # def index
  #   accounts = Account.all
  #   render json: accounts
  # end
  def index
    auth_response = plaid_client.auth.get(access_token)
    render json: auth_response.to_json
  end
end
