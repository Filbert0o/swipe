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

purchases = [
  {
    account_id: 2,
    account_owner: nil,
    amount: -410,
    category_id: "21007000",
    transaction_date: "2017-12-18",
    name: "BANK OF AMERICA ATM 12/18 #000000008443 DEPOSIT 129TH SOUTH 16TH STREET",
    pending: true,
    pending_transaction_id: nil,
    transaction_id: "yxexNeyoaJiBX0qq570qsQDpzkv45KTL50yJZ",
    transaction_type: "special"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 135,
    category_id: "19000000",
    transaction_date: "2017-12-17",
    name: "Amazon",
    pending: true,
    pending_transaction_id: nil,
    transaction_id: "bmemBeYvVzUjvnggLpngupy9KP8nR1UAMjzLD",
    transaction_type: "digital"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 164.03,
    category_id: "13005000",
    transaction_date: "2017-12-17",
    name: "NEW KOREAN GRILL HOUSE",
    pending: true,
    pending_transaction_id: nil,
    transaction_id: "g6e6DeY9wLu8K0MMEO0MhBAJDkL0O4fZ0zjO3",
    transaction_type: "unresolved"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 26.79,
    category_id: nil,
    transaction_date: "2017-12-16",
    name: "PASSYUNK",
    pending: true,
    pending_transaction_id: nil,
    transaction_id: "oyeygedV3Ki6Zboo3pbofAw4zLO01gtav9EMr",
    transaction_type: "unresolved"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 2.37,
    category_id: "19043000",
    transaction_date: "2017-12-16",
    name: "Rite Aid",
    pending: true,
    pending_transaction_id: nil,
    transaction_id: "5MKM7KPeapF0DnJJR7nJfeYr0XBE3aFLZ0nRw",
    transaction_type: "place"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 25.06,
    category_id: "19000000",
    transaction_date: "2017-12-15",
    name: "Amazon",
    pending: true,
    pending_transaction_id: nil,
    transaction_id: "8MvM6v378pF49AggkaAgsreQ4wAvPaC5wXEz1",
    transaction_type: "digital"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 46.2,
    category_id: "19000000",
    transaction_date: "2017-12-15",
    name: "Amazon",
    pending: true,
    pending_transaction_id: nil,
    transaction_id: "ZjVjdVY38zhvEPZZJ8PZfdYve0xPXgtQnKgER",
    transaction_type: "digital"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: -29.9,
    category_id: "19012000",
    transaction_date: "2017-12-14",
    name: "CHECKCARD 1213 UNIQLO CHESTNUT ST #51 PHILADELPHIA PA 74435657348400003001625",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "JdVd5VgAPzTxNznn8MznSKJkOLaxmphg1M45g",
    transaction_type: "unresolved"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 5,
    category_id: "19012000",
    transaction_date: "2017-12-14",
    name: "Old Navy",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "xaeaNe3B4xtqQJwwBRJwhPgO6b7kB5fLEabg5",
    transaction_type: "place"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 3.88,
    category_id: "22006001",
    transaction_date: "2017-12-14",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "aZpZqpYX9zcqo7ppJ87phQA40gmaX6TPQnAVm",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 67.82,
    category_id: "19000000",
    transaction_date: "2017-12-13",
    name: "Amazon",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "rmem0eLKkvUn1w006pw0sNaV9dQKw7UJQ3L7x",
    transaction_type: "digital"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 26.49,
    category_id: "21010004",
    transaction_date: "2017-12-13",
    name: "CHECKCARD 1212 EBGLOBALTRA CA 24492157346894553882913",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "vrerYeq5j4c1eRyyOXRyhp6VaLX0O9UBaoqDd",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 329.99,
    category_id: "21010004",
    transaction_date: "2017-12-13",
    name: "CHECKCARD 1212 EUROAUTO CA 24492157346894553882491",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "0MPMKPw5vpFmAKNN5gKNi0DmYALxyzIMYg4XQ",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 28.1,
    category_id: "21010004",
    transaction_date: "2017-12-13",
    name: "CHECKCARD 1212 SITELOTRAIG CA 24492157346894553880677",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "j1m1qmz0DPFpvm88N4m8hxq1EBPm67FVp0nBP",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 3.8,
    category_id: "22006001",
    transaction_date: "2017-12-13",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "4MyM5y17mpFv9JwwQPJwfyRjYV8enpi0Vmora",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 500,
    category_id: "16000000",
    transaction_date: "2017-12-13",
    name: "Wealthfront Inc. DES:EDI PYMNTS ID:XXXXX128071848 INDN:Timothy Filbert CO ID:XXXXX67207 WEB",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "AMZM7Z4BOzFmJP11LbP1iRzjQo3gwpFkLdAJP",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 8.47,
    category_id: "19000000",
    transaction_date: "2017-12-12",
    name: "Amazon",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "KwXwEX75qzhL9RYYqJRYfQrNP1Y3O5TZP0g5o",
    transaction_type: "digital"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: -500,
    category_id: "21007000",
    transaction_date: "2017-12-12",
    name: "BKOFAMERICA ATM 12/12 #000006368 DEPOSIT 129TH SOUTH 16TH",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "kPePBeY01qT6NmwwQEmwfkjaKBQdwqf48MXdX",
    transaction_type: "special"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 10.75,
    category_id: "13005000",
    transaction_date: "2017-12-12",
    name: "Hai Street Kitchen & Co.",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "1MqM5q6N0pFKdmAAL7mAhMVRKy8veZt1k3xDp",
    transaction_type: "place"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 723.06,
    category_id: "21006000",
    transaction_date: "2017-12-12",
    name: "Online Banking payment to CRD 5986 Confirmation# 1708313598",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "3e3eZ3DvrpIA6QxxNvQxS6jZAVP5RkFeNbqJk",
    transaction_type: "special"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: -723.06,
    category_id: "16001000",
    transaction_date: "2017-12-12",
    name: "Online payment from CHK 5",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "L6V6kV9dBzuE03NNzM3Nu4M8dLNm5KIYz9X7L",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 4.21,
    category_id: "22006001",
    transaction_date: "2017-12-12",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "yxexNeyoaJiBX0qq570qsQDpzkv45KTL50y7Z",
    transaction_type: "special"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 3.94,
    category_id: "22009000",
    transaction_date: "2017-12-12",
    name: "WAWA 8069 00080697",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "DMbMXbJvdzFONappMVapc1MgNXapeJSokJKd1",
    transaction_type: "place"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: -150,
    category_id: "21007000",
    transaction_date: "2017-12-11",
    name: "BKOFAMERICA ATM 12/11 #000006070 DEPOSIT 129TH SOUTH 16TH",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "BR5RZ5aEMziL3RjjmbRjfywN9kJ1QLixK6ZaB",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 8.74,
    category_id: "13005000",
    transaction_date: "2017-12-11",
    name: "CHECKCARD 1208 CHIPOTLE 1480 PHILADELPHIA PA 24431067343206788000625",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "qkekye6YmAsdDAOO9JAOCQ7DEx8Z9zTaKe6oQ",
    transaction_type: "unresolved"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 49.8,
    category_id: "19012000",
    transaction_date: "2017-12-11",
    name: "CHECKCARD 1209 UNIQLO ECOMMERCE NJ 24435657343026991758015",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "PPVP5VYDkzTnYZOOdJZOs0DJka6ZLqIMzXqrZ",
    transaction_type: "unresolved"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 2.25,
    category_id: "22006001",
    transaction_date: "2017-12-11",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "DMbMXbJvdzFONappMVapc1MgNXapeJSokJKp1",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 2.25,
    category_id: "22006001",
    transaction_date: "2017-12-11",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "L6V6kV9dBzuE03NNzM3Nu4M8dLNm5KIYz9XDL",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 2.99,
    category_id: "22006001",
    transaction_date: "2017-12-11",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "1MqM5q6N0pFKdmAAL7mAhMVRKy8veZt1k3xQp",
    transaction_type: "special"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 32,
    category_id: "22007000",
    transaction_date: "2017-12-09",
    name: "BONANZA BUS",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "6MkMdkqNxpFj1y99r7y9uQgMjxXJ4KT67MXK7",
    transaction_type: "place"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 247.5,
    category_id: nil,
    transaction_date: "2017-12-09",
    name: "COLEHAAN.COM",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "w4Y4NYB9rainDjRRx5jRsxnK6JQAPDFZAPBX4",
    transaction_type: "digital"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 14.9,
    category_id: "19012000",
    transaction_date: "2017-12-09",
    name: "UNIQLO CHESTNUT ST #51",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "dbebweY4MdhD4OZZ5NOZIqRoAgQO3vi9ZMap7",
    transaction_type: "place"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 7.5,
    category_id: "13005000",
    transaction_date: "2017-12-08",
    name: "CHECKCARD 1207 GOLDIE FALAFEL PHILADELPHIA PA 24492157341741383694395",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "dbebweY4MdhD4OZZ5NOZIqRoAgQO3vi9ZMaV7",
    transaction_type: "unresolved"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 2.03,
    category_id: "22006001",
    transaction_date: "2017-12-08",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "w4Y4NYB9rainDjRRx5jRsxnK6JQAPDFZAPBq4",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 2.5,
    category_id: "22006001",
    transaction_date: "2017-12-08",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "6MkMdkqNxpFj1y99r7y9uQgMjxXJ4KT67MXk7",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 1.22,
    category_id: "22006001",
    transaction_date: "2017-12-07",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "Y0V0BVYxJzS3ERQQ18RQTbK9NZgRBMIrmRMg1",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: -0.18,
    category_id: "16000000",
    transaction_date: "2017-12-07",
    name: "Wealthfront Inc. DES:EDI PYMNTS ID:XXXXX640195945 INDN:Timothy Filbert CO ID:XXXXX67207 PPD",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "zJeJNeKjx8u3ARVVNvRVTervYkdLN1F4EVbqV",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: -0.31,
    category_id: "16000000",
    transaction_date: "2017-12-07",
    name: "Wealthfront Inc. DES:EDI PYMNTS ID:XXXXX654597944 INDN:Timothy Filbert CO ID:XXXXX67207 PPD",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "mBeByeYrq3svbx99Ypx9f59BmnYgkVTdpz1Jg",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 0.49,
    category_id: "16000000",
    transaction_date: "2017-12-07",
    name: "Wealthfront Inc. DES:EDI PYMNTS ID:XXXXX953814746 INDN:Timothy Filbert CO ID:XXXXX67207 WEB",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "eded6eYvEwTxrzNN0YzNS9o0YgQzJMFj6A359",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 9.79,
    category_id: "13005000",
    transaction_date: "2017-12-05",
    name: "CHECKCARD 1203 BBQ CHICKEN NEW YORK NY 24022447338900017100026",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "KwXwEX75qzhL9RYYqJRYfQrNP1Y3O5TZP0gzo",
    transaction_type: "unresolved"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: -500,
    category_id: "21010001",
    transaction_date: "2017-12-05",
    name: "Venmo",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "NDVD5VO6yzTJ7ZppqmZphaw3P4dZm6hKAq60J",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 19.99,
    category_id: "17018000",
    transaction_date: "2017-12-04",
    name: "CHECKCARD 1201 ABC*RETRO FITNESS PA 24906417335047630092052 RECURRING",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "pKeKNewYykt6ZyYYkpyYf1p3XxemdASOKBwmN",
    transaction_type: "unresolved"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 39.9,
    category_id: "19012000",
    transaction_date: "2017-12-04",
    name: "CHECKCARD 1201 UNIQLO CHESTNUT ST #51 PHILADELPHIA PA 24435657336400009000786",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "n3e3KeYxByTNwY11opY1cK5BxvyRM8h8EdkV4",
    transaction_type: "unresolved"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 2,
    category_id: "21010001",
    transaction_date: "2017-12-04",
    name: "Venmo",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "RBEBwEYPvzs8YOXXbgOXhJR1PkDOXZf8LvZg5",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 7.25,
    category_id: "21010001",
    transaction_date: "2017-12-04",
    name: "Venmo",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "QqVqdVY1AzURYw88xgw8uxeJ8m9wAPFk7ZxPR",
    transaction_type: "special"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: -24.8,
    category_id: "19012000",
    transaction_date: "2017-12-02",
    name: "UNIQLO CHESTNUT ST #51",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "mBeByeYrq3svbx99Ypx9f59BmnYgkVTdpz1Yg",
    transaction_type: "place"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 120.1,
    category_id: "19012000",
    transaction_date: "2017-12-01",
    name: "UNIQLO ECOMMERCE",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "zJeJNeKjx8u3ARVVNvRVTervYkdLN1F4EVbYV",
    transaction_type: "place"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 5,
    category_id: "22006001",
    transaction_date: "2017-12-01",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "EMgMZg8AwzFYO977gy97uAbEN87dOMtw9yoNN",
    transaction_type: "special"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 2.98,
    category_id: nil,
    transaction_date: "2017-11-30",
    name: "AMK CAP1 PHL RITTENHOUSE",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "7zAzwABnJecrV4nnxb4nI743p5XVkdUOd1nR4",
    transaction_type: "place"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 115.54,
    category_id: "19000000",
    transaction_date: "2017-11-30",
    name: "Amazon",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "MLYLQYVw3zTBxMppjgMpsqdPgXaN9KiQJjKwR",
    transaction_type: "digital"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 2.25,
    category_id: "13005000",
    transaction_date: "2017-11-30",
    name: "Chick-fil-A",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "O1V1aVYLKzFAYbpp0ebpSmn46aNbQOuMn6O9e",
    transaction_type: "place"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 22.94,
    category_id: "19018000",
    transaction_date: "2017-11-30",
    name: "TARGET.COM *",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "Y0V0BVYxJzS3ERQQ18RQTbK9NZgRBMIrmRMj1",
    transaction_type: "digital"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 1.87,
    category_id: "22006001",
    transaction_date: "2017-11-30",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "VkVk1VYv4zs5ERZZ1zRZTxKkPDBRmMFQy9MKk",
    transaction_type: "special"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 51.84,
    category_id: "19019000",
    transaction_date: "2017-11-30",
    name: "Walmart",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "eded6eYvEwTxrzNN0YzNS9o0YgQzJMFj6A3o9",
    transaction_type: "place"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 1.8,
    category_id: "22006001",
    transaction_date: "2017-11-29",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "7zAzwABnJecrV4nnxb4nI743p5XVkdUOd1nA4",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: -22.77,
    category_id: "21010001",
    transaction_date: "2017-11-29",
    name: "Venmo",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "9M0ML0yzZpFajqLLewqLu57Oaw0p3NTaO09or",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: -600,
    category_id: "21007000",
    transaction_date: "2017-11-28",
    name: "BKOFAMERICA ATM 11/28 #000001946 DEPOSIT 129TH SOUTH 16TH",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "g6e6DeY9wLu8K0MMEO0MhBAJDkL0O4fZ0zjm3",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 4.65,
    category_id: "22006001",
    transaction_date: "2017-11-28",
    name: "Lyft",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "oyeygedV3Ki6Zboo3pbofAw4zLO01gtav9ELr",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 1.8,
    category_id: "22006001",
    transaction_date: "2017-11-28",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "bmemBeYvVzUjvnggLpngupy9KP8nR1UAMjzOD",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: -35.99,
    category_id: nil,
    transaction_date: "2017-11-27",
    name: "Bank of America DES:CASHREWARD ID:FILBERT INDN:0000000603642080000000 CO ID:XXXXX90310 PPD",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "5MKM7KPeapF0DnJJR7nJfeYr0XBE3aFLZ0nQw",
    transaction_type: "unresolved"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 21.59,
    category_id: "19013000",
    transaction_date: "2017-11-27",
    name: "Best Buy",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "pKeKNewYykt6ZyYYkpyYf1p3XxemdASOKBwnN",
    transaction_type: "place"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 7.35,
    category_id: "13005032",
    transaction_date: "2017-11-27",
    name: "Chipotle Mexican Grill",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "n3e3KeYxByTNwY11opY1cK5BxvyRM8h8EdkJ4",
    transaction_type: "place"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 7.51,
    category_id: "22006001",
    transaction_date: "2017-11-27",
    name: "Lyft",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "ZjVjdVY38zhvEPZZJ8PZfdYve0xPXgtQnKgrR",
    transaction_type: "special"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 38.84,
    category_id: "22009000",
    transaction_date: "2017-11-27",
    name: "Sunoco",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "XvOvqOY0xzikEozz9pozinO6YVyomNF7JeNkx",
    transaction_type: "place"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 8.5,
    category_id: "21010001",
    transaction_date: "2017-11-27",
    name: "Venmo",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "JdVd5VgAPzTxNznn8MznSKJkOLaxmphg1M4xg",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 13.5,
    category_id: "21010001",
    transaction_date: "2017-11-27",
    name: "Venmo",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "8MvM6v378pF49AggkaAgsreQ4wAvPaC5wXEA1",
    transaction_type: "special"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 40.96,
    category_id: "19000000",
    transaction_date: "2017-11-24",
    name: "Amazon",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "RBEBwEYPvzs8YOXXbgOXhJR1PkDOXZf8LvZ55",
    transaction_type: "digital"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: -160,
    category_id: "21007000",
    transaction_date: "2017-11-24",
    name: "BKOFAMERICA ATM 11/23 #000002574 DEPOSIT 15TH AND LOCUST",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "xaeaNe3B4xtqQJwwBRJwhPgO6b7kB5fLEabV5",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 3.62,
    category_id: "22006001",
    transaction_date: "2017-11-24",
    name: "Lyft",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "4MyM5y17mpFv9JwwQPJwfyRjYV8enpi0VmoZa",
    transaction_type: "special"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 10,
    category_id: "12008000",
    transaction_date: "2017-11-24",
    name: "UDEMY ONLINE COURSES HTTPSWWW.UDEMCA",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "QqVqdVY1AzURYw88xgw8uxeJ8m9wAPFk7ZxeR",
    transaction_type: "unresolved"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 3.81,
    category_id: "22006001",
    transaction_date: "2017-11-24",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "aZpZqpYX9zcqo7ppJ87phQA40gmaX6TPQnAzm",
    transaction_type: "special"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 6.5,
    category_id: "19025000",
    transaction_date: "2017-11-22",
    name: "LEBUS BAKERY 18TH STREET",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "EMgMZg8AwzFYO977gy97uAbEN87dOMtw9yovN",
    transaction_type: "place"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 10.68,
    category_id: "19000000",
    transaction_date: "2017-11-21",
    name: "Amazon",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "O1V1aVYLKzFAYbpp0ebpSmn46aNbQOuMn6ODe",
    transaction_type: "digital"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 38.04,
    category_id: "19047000",
    transaction_date: "2017-11-21",
    name: "NEW OREGON MARKET INC",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "MLYLQYVw3zTBxMppjgMpsqdPgXaN9KiQJjKqR",
    transaction_type: "place"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 3.81,
    category_id: "22006001",
    transaction_date: "2017-11-21",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "rmem0eLKkvUn1w006pw0sNaV9dQKw7UJQ3Lnx",
    transaction_type: "special"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 32.43,
    category_id: "18021000",
    transaction_date: "2017-11-20",
    name: "GrubHub",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "NDVD5VO6yzTJ7ZppqmZphaw3P4dZm6hKAq6nJ",
    transaction_type: "place"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 51.52,
    category_id: "21006000",
    transaction_date: "2017-11-20",
    name: "Online Banking payment to CRD 5986 Confirmation# 3703019785",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "vrerYeq5j4c1eRyyOXRyhp6VaLX0O9UBaoqvd",
    transaction_type: "special"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: 34.52,
    category_id: "13005000",
    transaction_date: "2017-11-20",
    name: "Penrose Diner",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "VkVk1VYv4zs5ERZZ1zRZTxKkPDBRmMFQy9M8k",
    transaction_type: "place"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 1.08,
    category_id: "22006001",
    transaction_date: "2017-11-20",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "XvOvqOY0xzikEozz9pozinO6YVyomNF7JeNKx",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 1.54,
    category_id: "22006001",
    transaction_date: "2017-11-20",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "AMZM7Z4BOzFmJP11LbP1iRzjQo3gwpFkLdAOP",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 2.71,
    category_id: "22006001",
    transaction_date: "2017-11-20",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "j1m1qmz0DPFpvm88N4m8hxq1EBPm67FVp0nbP",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 3.25,
    category_id: "22006001",
    transaction_date: "2017-11-20",
    name: "Uber",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "0MPMKPw5vpFmAKNN5gKNi0DmYALxyzIMYg4DQ",
    transaction_type: "special"
  },
  {
    account_id: 2,
    account_owner: nil,
    amount: 84.99,
    category_id: "21010001",
    transaction_date: "2017-11-20",
    name: "Venmo",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "kPePBeY01qT6NmwwQEmwfkjaKBQdwqf48MXKX",
    transaction_type: "special"
  },
  {
    account_id: 3,
    account_owner: nil,
    amount: -51.52,
    category_id: "16001000",
    transaction_date: "2017-11-18",
    name: "Online payment from CHK 5",
    pending: false,
    pending_transaction_id: nil,
    transaction_id: "9M0ML0yzZpFajqLLewqLu57Oaw0p3NTaO09Rr",
    transaction_type: "special"
  }
]


purchases.each do |v|
  Purchase.create(
    account_id: v[:account_id],
    account_owner: v[:account_owner],
    amount: v[:amount],
    category_id: v[:category_id],
    transaction_date: v[:transaction_date],
    name: v[:name],
    pending: v[:pending],
    pending_transaction_id: v[:pending_transaction_id],
    transaction_id: v[:transaction_id],
    transaction_type: v[:transaction_type]
  )
end

locations = [
  {
    purchase_id: 1,
    address: nil,
    city: "Philadelphia",
    lat: nil,
    lon: nil,
    state: "PA",
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 2,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 3,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 4,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 5,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: "0174",
    zip: nil
  },
  {
    purchase_id: 6,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 7,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 8,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 9,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 10,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 11,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 12,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 13,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 14,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 15,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 16,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 17,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 18,
    address: nil,
    city: "Philadelphia",
    lat: nil,
    lon: nil,
    state: "PA",
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 19,
    address: "32 18th St",
    city: "Philadelphia",
    lat: 39.952104,
    lon: -75.17048,
    state: "PA",
    store_number: nil,
    zip: "19103"
  },
  {
    purchase_id: 20,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 21,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 22,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 23,
    address: nil,
    city: "Philadelphia",
    lat: nil,
    lon: nil,
    state: "PA",
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 24,
    address: nil,
    city: "Philadelphia",
    lat: nil,
    lon: nil,
    state: "PA",
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 25,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 26,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 27,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 28,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 29,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 30,
    address: nil,
    city: "Bourne",
    lat: nil,
    lon: nil,
    state: "MA",
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 31,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: "NH",
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 32,
    address: nil,
    city: "Philadelphia",
    lat: nil,
    lon: nil,
    state: "PA",
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 33,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 34,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 35,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 36,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 37,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 38,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 39,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 40,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 41,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 42,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 43,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 44,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 45,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 46,
    address: nil,
    city: "Philadelphia",
    lat: nil,
    lon: nil,
    state: "PA",
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 47,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: "NJ",
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 48,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 49,
    address: nil,
    city: "Philadelphia",
    lat: nil,
    lon: nil,
    state: "PA",
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 50,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 51,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 52,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: "MN",
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 53,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 54,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 55,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 56,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 57,
    address: nil,
    city: "Philadelphia",
    lat: nil,
    lon: nil,
    state: "PA",
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 58,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 59,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 60,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 61,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: "MN",
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 62,
    address: "4030 City Ave",
    city: "Philadelphia",
    lat: 40.0064,
    lon: -75.2148,
    state: "PA",
    store_number: "1480",
    zip: "19131"
  },
  {
    purchase_id: 63,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 64,
    address: "10610  Roosevelt Blvd",
    city: "Philadelphia",
    lat: 40.098151,
    lon: -75.011902,
    state: "PA",
    store_number: nil,
    zip: "19116"
  },
  {
    purchase_id: 65,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 66,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 67,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 68,
    address: nil,
    city: "Philadelphia",
    lat: nil,
    lon: nil,
    state: "PA",
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 69,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 70,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 71,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 72,
    address: nil,
    city: "Philadelphia",
    lat: nil,
    lon: nil,
    state: "PA",
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 73,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: "WA",
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 74,
    address: nil,
    city: "Philadelphia",
    lat: nil,
    lon: nil,
    state: "PA",
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 75,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 76,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: "NY",
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 77,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 78,
    address: "2016 Penrose Ave",
    city: "Philadelphia",
    lat: 39.912842,
    lon: -75.182931,
    state: "PA",
    store_number: nil,
    zip: "19145"
  },
  {
    purchase_id: 79,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 80,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 81,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 82,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 83,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  },
  {
    purchase_id: 84,
    address: nil,
    city: nil,
    lat: nil,
    lon: nil,
    state: nil,
    store_number: nil,
    zip: nil
  }
]

locations.each do |v|
  Location.create(
    purchase_id: v[:purchase_id],
    address: v[:address],
    city: v[:city],
    lat: v[:lat],
    lon: v[:lon],
    state: v[:state],
    store_number: v[:store_number],
    zip: v[:zip]
  )
end

payment_metas = [
  {
    purchase_id: 1,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 2,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 3,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 4,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 5,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 6,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 7,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 8,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 9,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 10,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 11,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 12,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: "PayPal",
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 13,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: "PayPal",
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 14,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: "PayPal",
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 15,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 16,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 17,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 18,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 19,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: "Square",
    ppd_id: nil,
    reason: nil,
    reference_number: "5271"
  },
  {
    purchase_id: 20,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 21,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "5987"
  },
  {
    purchase_id: 22,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 23,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "3866"
  },
  {
    purchase_id: 24,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 25,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 26,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 27,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 28,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 29,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 30,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "0031"
  },
  {
    purchase_id: 31,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "7733"
  },
  {
    purchase_id: 32,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "0148"
  },
  {
    purchase_id: 33,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: "Square",
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 34,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 35,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 36,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 37,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 38,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 39,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 40,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 41,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: "Braintree",
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 42,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 43,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 44,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: "Braintree",
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 45,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: "Braintree",
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 46,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "0724"
  },
  {
    purchase_id: 47,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "7017"
  },
  {
    purchase_id: 48,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 49,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "3036"
  },
  {
    purchase_id: 50,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 51,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 52,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "1096"
  },
  {
    purchase_id: 53,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 54,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: "Google Wallet",
    ppd_id: nil,
    reason: nil,
    reference_number: "4188"
  },
  {
    purchase_id: 55,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 56,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: "Braintree",
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 57,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 58,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 59,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 60,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 61,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "8380"
  },
  {
    purchase_id: 62,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "0884"
  },
  {
    purchase_id: 63,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 64,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "8851"
  },
  {
    purchase_id: 65,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: "Braintree",
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 66,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: "Braintree",
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 67,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "1145"
  },
  {
    purchase_id: 68,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 69,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 70,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "6091"
  },
  {
    purchase_id: 71,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 72,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "0410"
  },
  {
    purchase_id: 73,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "8334"
  },
  {
    purchase_id: 74,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "3407"
  },
  {
    purchase_id: 75,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 76,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "7163"
  },
  {
    purchase_id: 77,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 78,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "2267"
  },
  {
    purchase_id: 79,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 80,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 81,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 82,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 83,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: "Braintree",
    ppd_id: nil,
    reason: nil,
    reference_number: nil
  },
  {
    purchase_id: 84,
    by_order_of: nil,
    payee: nil,
    payer: nil,
    payment_method: nil,
    payment_processor: nil,
    ppd_id: nil,
    reason: nil,
    reference_number: "7856"
  }
]

payment_metas.each do |v|
  Payment.create(
    purchase_id: v[:purchase_id],
    by_order_of: v[:by_order_of],
    payee: v[:payee],
    payer: v[:payer],
    payment_method: v[:payment_method],
    payment_processor: v[:payment_processor],
    ppd_id: v[:ppd_id],
    reason: v[:reason],
    reference_number: v[:reference_number]
  )
end

# function remove_duplicates_es6(arr) {
#     let s = new Set(arr);
#     let it = s.values();
#     return Array.from(it);
# }

categories = ["Transfer", "Deposit", "Shops", "Food and Drink", "Restaurants", "Pharmacies", "Clothing and Accessories", "Travel", "Car Service", "Ride Share", "Third Party", "PayPal", "Payment", "Debit", "Credit Card", "Gas Stations", "Charter Buses", "Venmo", "Recreation", "Gyms and Fitness Centers", "Department Stores", "Digital Purchase", "Computers and Electronics", "Fast Food", "Community", "Education", "Food and Beverage Store", "Supermarkets and Groceries", "Service", "Food and Beverage"]
categories.each do |category|
  Category.create(
    name: category
  )
end

groups = [
  {
    purchase_id: 1,
    category_id: 1
  },
  {
    purchase_id: 1,
    category_id: 2
  },
  {
    purchase_id: 2,
    category_id: 3
  },
  {
    purchase_id: 3,
    category_id: 4
  },
  {
    purchase_id: 3,
    category_id: 5
  },
  {
    purchase_id: 5,
    category_id: 3
  },
  {
    purchase_id: 5,
    category_id: 6
  },
  {
    purchase_id: 6,
    category_id: 3
  },
  {
    purchase_id: 7,
    category_id: 3
  },
  {
    purchase_id: 8,
    category_id: 3
  },
  {
    purchase_id: 8,
    category_id: 7
  },
  {
    purchase_id: 9,
    category_id: 3
  },
  {
    purchase_id: 9,
    category_id: 7
  },
  {
    purchase_id: 10,
    category_id: 8
  },
  {
    purchase_id: 10,
    category_id: 9
  },
  {
    purchase_id: 10,
    category_id: 10
  },
  {
    purchase_id: 11,
    category_id: 3
  },
  {
    purchase_id: 12,
    category_id: 1
  },
  {
    purchase_id: 12,
    category_id: 11
  },
  {
    purchase_id: 12,
    category_id: 12
  },
  {
    purchase_id: 13,
    category_id: 1
  },
  {
    purchase_id: 13,
    category_id: 11
  },
  {
    purchase_id: 13,
    category_id: 12
  },
  {
    purchase_id: 14,
    category_id: 1
  },
  {
    purchase_id: 14,
    category_id: 11
  },
  {
    purchase_id: 14,
    category_id: 12
  },
  {
    purchase_id: 15,
    category_id: 8
  },
  {
    purchase_id: 15,
    category_id: 9
  },
  {
    purchase_id: 15,
    category_id: 10
  },
  {
    purchase_id: 16,
    category_id: 13
  },
  {
    purchase_id: 17,
    category_id: 3
  },
  {
    purchase_id: 18,
    category_id: 1
  },
  {
    purchase_id: 18,
    category_id: 2
  },
  {
    purchase_id: 19,
    category_id: 4
  },
  {
    purchase_id: 19,
    category_id: 5
  },
  {
    purchase_id: 20,
    category_id: 1
  },
  {
    purchase_id: 20,
    category_id: 14
  },
  {
    purchase_id: 21,
    category_id: 13
  },
  {
    purchase_id: 21,
    category_id: 15
  },
  {
    purchase_id: 22,
    category_id: 8
  },
  {
    purchase_id: 22,
    category_id: 9
  },
  {
    purchase_id: 22,
    category_id: 10
  },
  {
    purchase_id: 23,
    category_id: 8
  },
  {
    purchase_id: 23,
    category_id: 16
  },
  {
    purchase_id: 24,
    category_id: 1
  },
  {
    purchase_id: 24,
    category_id: 2
  },
  {
    purchase_id: 25,
    category_id: 4
  },
  {
    purchase_id: 25,
    category_id: 5
  },
  {
    purchase_id: 26,
    category_id: 3
  },
  {
    purchase_id: 26,
    category_id: 7
  },
  {
    purchase_id: 27,
    category_id: 8
  },
  {
    purchase_id: 27,
    category_id: 9
  },
  {
    purchase_id: 27,
    category_id: 10
  },
  {
    purchase_id: 28,
    category_id: 8
  },
  {
    purchase_id: 28,
    category_id: 9
  },
  {
    purchase_id: 28,
    category_id: 10
  },
  {
    purchase_id: 29,
    category_id: 8
  },
  {
    purchase_id: 29,
    category_id: 9
  },
  {
    purchase_id: 29,
    category_id: 10
  },
  {
    purchase_id: 30,
    category_id: 8
  },
  {
    purchase_id: 30,
    category_id: 17
  },
  {
    purchase_id: 32,
    category_id: 3
  },
  {
    purchase_id: 32,
    category_id: 7
  },
  {
    purchase_id: 33,
    category_id: 4
  },
  {
    purchase_id: 33,
    category_id: 5
  },
  {
    purchase_id: 34,
    category_id: 8
  },
  {
    purchase_id: 34,
    category_id: 9
  },
  {
    purchase_id: 34,
    category_id: 10
  },
  {
    purchase_id: 35,
    category_id: 8
  },
  {
    purchase_id: 35,
    category_id: 9
  },
  {
    purchase_id: 35,
    category_id: 10
  },
  {
    purchase_id: 36,
    category_id: 8
  },
  {
    purchase_id: 36,
    category_id: 9
  },
  {
    purchase_id: 36,
    category_id: 10
  },
  {
    purchase_id: 37,
    category_id: 13
  },
  {
    purchase_id: 38,
    category_id: 13
  },
  {
    purchase_id: 39,
    category_id: 13
  },
  {
    purchase_id: 40,
    category_id: 4
  },
  {
    purchase_id: 40,
    category_id: 5
  },
  {
    purchase_id: 41,
    category_id: 1
  },
  {
    purchase_id: 41,
    category_id: 11
  },
  {
    purchase_id: 41,
    category_id: 18
  },
  {
    purchase_id: 42,
    category_id: 19
  },
  {
    purchase_id: 42,
    category_id: 20
  },
  {
    purchase_id: 43,
    category_id: 3
  },
  {
    purchase_id: 43,
    category_id: 7
  },
  {
    purchase_id: 44,
    category_id: 1
  },
  {
    purchase_id: 44,
    category_id: 11
  },
  {
    purchase_id: 44,
    category_id: 18
  },
  {
    purchase_id: 45,
    category_id: 1
  },
  {
    purchase_id: 45,
    category_id: 11
  },
  {
    purchase_id: 45,
    category_id: 18
  },
  {
    purchase_id: 46,
    category_id: 3
  },
  {
    purchase_id: 46,
    category_id: 7
  },
  {
    purchase_id: 47,
    category_id: 3
  },
  {
    purchase_id: 47,
    category_id: 7
  },
  {
    purchase_id: 48,
    category_id: 8
  },
  {
    purchase_id: 48,
    category_id: 9
  },
  {
    purchase_id: 48,
    category_id: 10
  },
  {
    purchase_id: 50,
    category_id: 3
  },
  {
    purchase_id: 51,
    category_id: 4
  },
  {
    purchase_id: 51,
    category_id: 5
  },
  {
    purchase_id: 52,
    category_id: 3
  },
  {
    purchase_id: 52,
    category_id: 21
  },
  {
    purchase_id: 53,
    category_id: 8
  },
  {
    purchase_id: 53,
    category_id: 9
  },
  {
    purchase_id: 53,
    category_id: 10
  },
  {
    purchase_id: 54,
    category_id: 3
  },
  {
    purchase_id: 54,
    category_id: 22
  },
  {
    purchase_id: 55,
    category_id: 8
  },
  {
    purchase_id: 55,
    category_id: 9
  },
  {
    purchase_id: 55,
    category_id: 10
  },
  {
    purchase_id: 56,
    category_id: 1
  },
  {
    purchase_id: 56,
    category_id: 11
  },
  {
    purchase_id: 56,
    category_id: 18
  },
  {
    purchase_id: 57,
    category_id: 1
  },
  {
    purchase_id: 57,
    category_id: 2
  },
  {
    purchase_id: 58,
    category_id: 8
  },
  {
    purchase_id: 58,
    category_id: 9
  },
  {
    purchase_id: 58,
    category_id: 10
  },
  {
    purchase_id: 59,
    category_id: 8
  },
  {
    purchase_id: 59,
    category_id: 9
  },
  {
    purchase_id: 59,
    category_id: 10
  },
  {
    purchase_id: 61,
    category_id: 3
  },
  {
    purchase_id: 61,
    category_id: 23
  },
  {
    purchase_id: 62,
    category_id: 4
  },
  {
    purchase_id: 62,
    category_id: 5
  },
  {
    purchase_id: 62,
    category_id: 24
  },
  {
    purchase_id: 63,
    category_id: 8
  },
  {
    purchase_id: 63,
    category_id: 9
  },
  {
    purchase_id: 63,
    category_id: 10
  },
  {
    purchase_id: 64,
    category_id: 8
  },
  {
    purchase_id: 64,
    category_id: 16
  },
  {
    purchase_id: 65,
    category_id: 1
  },
  {
    purchase_id: 65,
    category_id: 11
  },
  {
    purchase_id: 65,
    category_id: 18
  },
  {
    purchase_id: 66,
    category_id: 1
  },
  {
    purchase_id: 66,
    category_id: 11
  },
  {
    purchase_id: 66,
    category_id: 18
  },
  {
    purchase_id: 67,
    category_id: 3
  },
  {
    purchase_id: 68,
    category_id: 1
  },
  {
    purchase_id: 68,
    category_id: 2
  },
  {
    purchase_id: 69,
    category_id: 8
  },
  {
    purchase_id: 69,
    category_id: 9
  },
  {
    purchase_id: 69,
    category_id: 10
  },
  {
    purchase_id: 70,
    category_id: 25
  },
  {
    purchase_id: 70,
    category_id: 26
  },
  {
    purchase_id: 71,
    category_id: 8
  },
  {
    purchase_id: 71,
    category_id: 9
  },
  {
    purchase_id: 71,
    category_id: 10
  },
  {
    purchase_id: 72,
    category_id: 3
  },
  {
    purchase_id: 72,
    category_id: 27
  },
  {
    purchase_id: 73,
    category_id: 3
  },
  {
    purchase_id: 74,
    category_id: 3
  },
  {
    purchase_id: 74,
    category_id: 28
  },
  {
    purchase_id: 75,
    category_id: 8
  },
  {
    purchase_id: 75,
    category_id: 9
  },
  {
    purchase_id: 75,
    category_id: 10
  },
  {
    purchase_id: 76,
    category_id: 29
  },
  {
    purchase_id: 76,
    category_id: 30
  },
  {
    purchase_id: 77,
    category_id: 1
  },
  {
    purchase_id: 77,
    category_id: 14
  },
  {
    purchase_id: 78,
    category_id: 4
  },
  {
    purchase_id: 78,
    category_id: 5
  },
  {
    purchase_id: 79,
    category_id: 8
  },
  {
    purchase_id: 79,
    category_id: 9
  },
  {
    purchase_id: 79,
    category_id: 10
  },
  {
    purchase_id: 80,
    category_id: 8
  },
  {
    purchase_id: 80,
    category_id: 9
  },
  {
    purchase_id: 80,
    category_id: 10
  },
  {
    purchase_id: 81,
    category_id: 8
  },
  {
    purchase_id: 81,
    category_id: 9
  },
  {
    purchase_id: 81,
    category_id: 10
  },
  {
    purchase_id: 82,
    category_id: 8
  },
  {
    purchase_id: 82,
    category_id: 9
  },
  {
    purchase_id: 82,
    category_id: 10
  },
  {
    purchase_id: 83,
    category_id: 1
  },
  {
    purchase_id: 83,
    category_id: 11
  },
  {
    purchase_id: 83,
    category_id: 18
  },
  {
    purchase_id: 84,
    category_id: 13
  },
  {
    purchase_id: 84,
    category_id: 15
  }
]

groups = groups.each do |v|
  Group.create(
    purchase_id: v[:purchase_id],
    category_id: v[:category_id]
  )
end
