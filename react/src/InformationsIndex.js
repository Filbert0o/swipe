import React from 'react';
import { Link } from 'react-router';

const InformationsIndex = props =>{
  return(
    <div>
      <div className='row'>
        <div className='six columns'>
          <Link to={`/accounts`}>Account</Link>
        </div>
        <div className='six columns'>
          Subscriptions
        </div>
      </div>
      <div className='row'>
        <div className='six columns'>
          <Link to={`/purchases`}>Purchase</Link>
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
