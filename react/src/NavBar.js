import React from 'react';
import { Link } from 'react-router';

const NavBar = props =>{
  return(
    <div>
      <div>
        <div id='billboard'>
          <Link to={`/`}><h2>SWIPE</h2></Link>
        </div>
        <div id='nav-bar' className='row'>
          <div className='one column' />
          <div className="two columns">
            <Link to={`/accounts`}><button>Account</button></Link>
          </div>
          <div className="two columns">
            <button>Subscriptions</button>
          </div>
          <div className="two columns">
            <Link to={`/purchases`}><button>Purchase</button></Link>
          </div>
          <div className="two columns">
            <button>Sandbox</button>
          </div>
          <div className="two columns">
            <Link to={`/settings`}><button>Setting</button></Link>
          </div>
          <div className="one columns">
          </div>
        </div>
      </div>
      {props.children}
    </div>
  )
}

export default NavBar;
