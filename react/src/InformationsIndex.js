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
          <Link className='six columns hvr-grow-shadow' to={'/accounts'}>
            <div>
              ACCOUNT
            </div>
          </Link>
          <Link className='six columns hvr-grow-shadow' to={'/purchases'}>
            <div>
              PURCHASES
            </div>
          </Link>
        </div>
        <div className='row'>
          <Link className='six columns hvr-grow-shadow' to={'/subscriptions'}>
            <div>
              SUBSCRIPTION
            </div>
          </Link>
          <Link className='six columns hvr-grow-shadow' to={'/'}>
            <div>
              SANDBOX
            </div>
          </Link>
        </div>
        <div className='row'>
          <Link className='twelve columns settings hvr-grow-shadow' to={'/settings'}>
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
