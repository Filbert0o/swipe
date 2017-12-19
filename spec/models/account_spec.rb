require 'rails_helper'

describe Account, type: :model do
  it { should have_valid(:account_id).when('123456789', '54345676543245678') }
  it { should_not have_valid(:account_id).when(nil, '') }

  it { should have_valid(:mask).when('3210', '0213') }
  it { should_not have_valid(:mask).when(nil, '') }

  it { should have_valid(:name).when('checking', 'savings') }
  it { should_not have_valid(:name).when(nil, '') }

  it { should have_valid(:official_name).when('Checking', 'Savings') }
  it { should_not have_valid(:official_name).when(nil, '') }

  it { should have_valid(:subtype).when('saving', 'checking') }
  it { should_not have_valid(:subtype).when(nil, '') }

  it { should have_valid(:maintype).when('depository', 'deposit') }
  it { should_not have_valid(:maintype).when(nil, '') }

  it 'should display an error if any of the required fields are left blank' do
    account = Account.new
    account.account_id = nil
    account.mask = nil
    account.name = nil
    account.official_name = nil
    account.subtype = nil
    account.maintype = nil

    expect(account).to_not be_valid
    expect(account.errors[:account_id]).to_not be_blank
    expect(account.errors[:mask]).to_not be_blank
    expect(account.errors[:name]).to_not be_blank
    expect(account.errors[:official_name]).to_not be_blank
    expect(account.errors[:subtype]).to_not be_blank
    expect(account.errors[:maintype]).to_not be_blank
  end
end
