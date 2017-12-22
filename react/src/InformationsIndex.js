import React from 'react';
import { Link } from 'react-router';

const InformationsIndex = props =>{
  return(
    <div>
      <div className='row'>
        <div className='six columns'>
          <Link className='info' to={`/accounts`}><h4>Account</h4></Link>
        </div>
        <div className='six columns'>
          <div className='info'><h4>Subscriptions</h4></div>
        </div>
      </div>
      <div className='row'>
        <div className='six columns'>
          <Link className='info' to={`/purchases`}><h4>Purchase</h4></Link>
        </div>
        <div className='six columns'>
          <div className='info'><h4>Sandbox</h4></div>
        </div>
      </div>
      <div className='row'>
        <Link className='setting' to={`/settings`}><h4>Setting</h4></Link>
      </div>
    </div>
  )
}

export default InformationsIndex;
