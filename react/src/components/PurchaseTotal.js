import React from 'react';

const PurchaseTotal = props =>{

  const amounts = []
  props.purchases.forEach((purchase) => {
    let currentCategories = []
    if (purchase.category) {
      currentCategories = purchase.category.map(type => {
        return type
      })
    }
    if (!currentCategories.includes("Deposit")) {
      amounts.push(purchase.amount)
    }
  })
  const postive = amounts.filter(amount => amount > 0)
  const postiveSum = postive.reduce((a, b) => a + b, 0)
  const negative = amounts.filter(amount => amount < 0)
  const negativeSum = negative.reduce((a, b) => a + b, 0)

  const totalPurchasesAmount = postiveSum + negativeSum

  return(
    <div>
      <h1>${Math.round(totalPurchasesAmount * 100)/100}</h1>
    </div>
  )
}

export default PurchaseTotal;
