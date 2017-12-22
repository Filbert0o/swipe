require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_valid(:first_name).when('Tim', 'Ace') }
  it { should_not have_valid(:first_name).when(nil, '') }

  it { should have_valid(:last_name).when('Fil', 'Dog') }
  it { should_not have_valid(:last_name).when(nil, '') }

  it { should have_valid(:email).when('tim@gmail.com', 'ace@gmail.com') }
  it { should_not have_valid(:email).when(nil, '') }

  it { should have_valid(:password).when('123456789', 'iplaygame') }
  it { should_not have_valid(:password).when(nil, '') }

  it 'should display an error if any of the required fields are left blank' do
    user = User.new
    user.first_name = nil
    user.last_name = nil
    user.email = nil
    user.password = nil

    expect(user).to_not be_valid
    expect(user.errors[:first_name]).to_not be_blank
    expect(user.errors[:last_name]).to_not be_blank
    expect(user.errors[:email]).to_not be_blank
    expect(user.errors[:password]).to_not be_blank
  end
end
