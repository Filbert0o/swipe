class Api::V1::ItemsController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    item_response = plaid_client.item.get(access_token)
    institution_response = plaid_client.institutions.get_by_id(item_response['item']['institution_id'])
    render json: { item: item_response['item'], institutions: institution_response['institution'] }.to_json
  end
end
