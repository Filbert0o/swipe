import React from 'react';

const PurchasesIndexTile = props =>{
  const categories = props.categories.map((category) => {
    return(
      <li>{category}</li>
    )
  })
  return(
    <div>
      <div className='purchase-box row'>
        <div className='six columns'>{props.name}</div>
        <div className='two columns'>{props.transactionDate}</div>
        <div className='four columns'>${props.amount}</div>
      </div>
    </div>
  )
}

export default PurchasesIndexTile;
