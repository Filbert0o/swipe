import React from 'react';

const PurchasesIndexTile = props =>{
  let currentCategories = []
  if (props.categories){
    currentCategories = props.categories.map((category) => {
      return(
        <li>{category}</li>
      )
    })
  }

  let toDate = (dateStr) => {
    let [year, month, day] = dateStr.split('-')
    return `${month}/${day}`
  }
  return(
    <div>
      <div className='purchase-box row'>
        <div className='one column trans-date'>{toDate(props.transactionDate)}</div>
        <div className='seven columns trans-name'>{props.name}</div>
        <div className='four columns trans-amount'>${props.amount}</div>
      </div>
    </div>
  )
}

export default PurchasesIndexTile;
