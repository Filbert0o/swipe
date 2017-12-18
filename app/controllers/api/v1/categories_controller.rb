class Api::V1::CategoriesController < ApplicationController
  def index
    response = plaid_client.categories.get()
    categories = response['categories']
    render json: categories.to_json
  end
end
