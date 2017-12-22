import React from 'react';
import { Link } from 'react-router';

const NavBar = props =>{
  return(
    <div>
      <div>
        <div id='billboard'>
          <h2><Link to={`/`}>SWIPE</Link></h2>
        </div>
        <div id='nav-bar' className='row'>
          <div className="two columns">
            <button><Link to={`/accounts`}>Account</Link></button>
          </div>
          <div className="two columns">
            Subscriptions
          </div>
          <div className="two columns">
            <button><Link to={`/purchases`}>Purchase</Link></button>
          </div>
          <div className="two columns">
            Sandbox
          </div>
          <div className="two columns">
            <button><Link to={`/settings`}>Setting</Link></button>
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
