class Api::V1::TransactionsController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    now = Date.today
    thirty_days_ago = (now - 30)
    transactions_response = plaid_client.transactions.get(plaid_access_token, thirty_days_ago, now)
    render json: transactions_response.to_json
  end
end
