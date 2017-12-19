require 'rails_helper'

describe Balance, type: :model do
  FactoryBot.find_definitions

  it { should have_valid(:available).when(120, 305.01, nil) }
  it { should have_valid(:current).when(304, 1230.01, nil) }
  it { should have_valid(:current).when(10000000, nil) }

  it { should have_valid(:account_id).when(1, 100) }

  it 'has an account' do
    account = Account.create(
      id: 1,
      account_id: '123456789',
      mask: '2754',
      name: 'Regular Savings',
      official_name: 'Regular Savings',
      subtype: 'savings',
      maintype: 'depository'
    )
    balance = Balance.create(
      available: 239,
      current: 240,
      limit: 100,
      account_id: 1
    )

    expect(account.balance).to be_truthy
    expect(account.balance.available).to eq(239)

    expect(balance.account).to be_truthy
    expect(balance.account.account_id).to eq('123456789')
  end
end
