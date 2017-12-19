import React from 'react';
import { Link } from 'react-router';

const NavBar = props =>{
  return(
    <div>
      <div>
        <div id='billboard'>
          <h1>SWIPE</h1>
        </div>
        <div id='nav-bar' className='row'>
          <div className="two columns">
            Accounts
          </div>
          <div className="two columns">
            Subscriptions
          </div>
          <div className="two columns">
            Purchased
          </div>
          <div className="two columns">
            Sandbox
          </div>
          <div className="two columns">
            Settings
          </div>
          <div className="two columns">
            BlankSpace
          </div>
        </div>
      </div>
      {props.children}
    </div>
  )
}

export default NavBar;
