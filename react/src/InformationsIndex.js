import React from 'react';
import { Link } from 'react-router';

const InformationsIndex = props =>{
  return(
    <div>
      <div className='row'>
        <div className='six columns'>
          Accounts
        </div>
        <div className='six columns'>
          Subscriptions
        </div>
      </div>
      <div className='row'>
        <div className='six columns'>
          Purchases
        </div>
        <div className='six columns'>
          Sandbox
        </div>
      </div>
      <div>Setting</div>
    </div>
  )
}

export default InformationsIndex;
