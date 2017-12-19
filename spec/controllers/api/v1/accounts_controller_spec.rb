require 'rails_helper'
require 'json'

describe Api::V1::AccountsController, type: :controller do
  let!(:account) do
    Account.create(
      account_id: '123456789',
      mask: '2754',
      name: 'Regular Savings',
      official_name: 'Regular Savings',
      subtype: 'savings',
      maintype: 'depository'
    )
  end

  describe 'GET#index' do
    it 'should return a list of all the venues' do
      get :index
      returned_json = JSON.parse(response.body)
      returned_json = returned_json['accounts']

      expect(response.status).to eq 200
      expect(response.content_type).to eq('application/json')

      expect(returned_json.length).to eq 1
      expect(returned_json[0]['account_id']).to eq '123456789'
      expect(returned_json[0]['mask']).to eq '2754'
      expect(returned_json[0]['name']).to eq 'Regular Savings'
      expect(returned_json[0]['official_name']).to eq 'Regular Savings'
      expect(returned_json[0]['subtype']).to eq 'savings'
      expect(returned_json[0]['maintype']).to eq 'depository'
    end
  end
end
