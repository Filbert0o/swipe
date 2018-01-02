# TransactionsController
class Api::V1::TransactionsController < ApplicationController
  # skip_before_action :verify_authenticity_token
  def index
    now = Date.today
    thirty_days_ago = (now - 31)
    fourty_days_ago = (now - 45)
    transactions_response = plaid_client.transactions.get(access_token, thirty_days_ago, now, {count: 500})
    transactions_fourty_five = plaid_client.transactions.get(access_token, fourty_days_ago, now, {count: 500})
    # render json: {thirty_days_transactions: transactions_response, fourty_five_transactions: transactions_fourty_five}
    render json: transactions_response.to_json
  end
end
