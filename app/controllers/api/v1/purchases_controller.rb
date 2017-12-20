# Api::V1::TransactionsController
class Api::V1::PurchasesController < ApplicationController
  def index
    purchases = Purchase.all
    render json: purchases
  end
end
