# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.destroy_all

accounts = [
  {
    account_id: "PPVP5VYDkzTnYZOOdJZOs0DoK0BQPkFMkMOMO",
    mask: "2754",
    name: "Regular Savings",
    official_name: "Regular Savings",
    subtype: "savings",
    maintype: "depository"
  },
  {
    account_id: "qkekye6YmAsdDAOO9JAOCQ71nQymwEcaXa1aE",
    mask: "5355",
    name: "BofA Core Checking",
    official_name: "BofA Core Checking",
    subtype: "checking",
    maintype: "depository"
  },
  {
    account_id: "BR5RZ5aEMziL3RjjmbRjfywMey0xv9Uxoxvxd",
    mask: "5986",
    name: "Bank of America Cash Rewards Visa Platinum Plus",
    official_name: "Bank of America Cash Rewards Visa Platinum Plus",
    subtype: "credit card",
    maintype: "credit"
  }
]

accounts.each do |v|
  Account.create(
    account_id: v[:account_id],
    mask: v[:mask],
    name: v[:name],
    official_name: v[:official_name],
    subtype: v[:subtype],
    maintype: v[:maintype]
  )
end


balances = [
  {
    available: 315.01,
    current: 315.01,
    limit: nil,
    account_id: 1
  },
  {
    available: 488.68,
    current: 78.68,
    limit: nil,
    account_id: 2
  },
  {
    available: nil,
    current: 0,
    limit: nil,
    account_id: 3
  }
]

balances.each do |v|
  Balance.create(
    available: v[:available],
    current: v[:current],
    limit: v[:limit],
    account_id: v[:account_id]
  )
end
