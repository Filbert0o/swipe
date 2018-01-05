import React from 'react';
import { Link } from 'react-router';

const NavBar = props =>{
  return(
    <div>
      <div>
        <div id='billboard'>
          <Link to={`/`}><h2>SWIPE</h2></Link>
        </div>
        <div>
          <div className='row'>
            <div className='twelve columns'>
                <ul id='nav'>
                  <li><Link to={`/accounts`}>Account</Link></li>
                  <li><Link to={`/subscriptions`}>Subscription</Link></li>
                  <li><Link to={`/purchases`}>Purchase</Link></li>
                  <li><Link to={`/`}>SandBox</Link></li>
                  <li><Link to={`/settings`}>Setting</Link></li>
                </ul>
            </div>
          </div>
        </div>
      </div>
      <div className='container'>
        {props.children}
      </div>
    </div>
  )
}

export default NavBar;
