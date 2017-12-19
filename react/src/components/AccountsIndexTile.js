import React from 'react';

const AccountsIndexTile = props =>{
  return(
    <div>
      <div className='card-box row'>
        <div className='six columns'>{props.officialName}</div>
        <div className='two columns'>{props.mask}</div>
        <div className='four columns'>${props.currentBalance}</div>
      </div>
    </div>
  )
}

export default AccountsIndexTile;
