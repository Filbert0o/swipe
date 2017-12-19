require 'rails_helper'

describe AccountsController, type: :controller do
  it 'should have a index method' do
    assert_response :success
  end
end
