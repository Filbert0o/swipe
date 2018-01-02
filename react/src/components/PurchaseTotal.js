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
    if (!currentCategories.includes("Payroll")) {
      amounts.push(purchase.amount)
    }
    if (purchase.category === null && purchase.name !== 'Counter Credit') {
      amounts.push(purchase.amount)
    }
  })
  const postive = amounts.filter(amount => amount > 0)
  const postiveSum = postive.reduce((a, b) => a + b, 0)
  const negative = amounts.filter(amount => amount < 0)
  const negativeSum = negative.reduce((a, b) => a + b, 0)
  const totalPurchasesAmount = postiveSum + negativeSum

  return(
    <div className='row same-height'>
      <div className='six columns'>
        <div className='purchase-total'>
          <h4>You Have Spent</h4>
          <h1>${Math.round(totalPurchasesAmount * 100)/100}</h1>
          <h4>In the last 30 days</h4>
        </div>
      </div>
      <div className='six columns'>
        <div className='purchase-budget'>
          <h4>My Budget</h4>
          <h1>${props.budget}</h1>
          <h4>With Purchases: ${Math.round((props.budget - totalPurchasesAmount) * 100)/100}</h4>
        </div>
      </div>
    </div>
  )
}

export default PurchaseTotal;
