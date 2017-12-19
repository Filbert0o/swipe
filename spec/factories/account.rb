FactoryBot.define do
  factory :account do
    account_id '123456789'
    mask '2754'
    name 'Regular Savings'
    official_name 'Regular Savings'
    subtype 'savings'
    maintype 'depository'
  end
end
