import React from 'react';
import { Link } from 'react-router';
import Plaid from './containers/Plaid';

const InformationsIndex = props =>{
  return(
    <div>
      <div className='row'>
        <div className='twelve columns'>
          <Plaid />
        </div>
      </div>
      <div className='info-container'>
        <div className='row'>
          <Link className='six columns' to={'/accounts'}>
            <div>
              ACCOUNT
            </div>
          </Link>
          <Link className='six columns' to={'/purchases'}>
            <div>
              PURCHASES
            </div>
          </Link>
        </div>
        <div className='row'>
          <Link className='six columns' to={'/'}>
            <div>
              SUBSCRIPTION
            </div>
          </Link>
          <Link className='six columns' to={'/'}>
            <div>
              SANDBOX
            </div>
          </Link>
        </div>
        <div className='row'>
          <Link className='twelve columns settings' to={'/settings'}>
            <div>
              SETTINGS
            </div>
          </Link>
        </div>
      </div>
    </div>
  )
}

export default InformationsIndex;
