import React from 'react';

const AccountsIndexTile = props =>{
  return(
    <div>
      <div className='card-box row'>
        <div className='six columns official-name'>{props.officialName}</div>
        <div className='two columns mask'>{props.mask}</div>
        <div className='four columns balance'>${props.currentBalance}</div>
      </div>
    </div>
  )
}

export default AccountsIndexTile;
