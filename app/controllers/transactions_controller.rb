class TransactionsController < ApplicationController
  def index
    now = Date.today
    thirty_days_ago = (now - 30)
    transactions_response = plaid_client.transactions.get(access_token, thirty_days_ago, now)
    render json: transactions_response.to_json
  end
end
