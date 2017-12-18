import React from 'react';
import { Route, IndexRoute, Router, browserHistory } from 'react-router';
import NavBar from './NavBar';
import Categories from "./containers/Categories"

const App = props =>{
  return(
    <div>
      <Router history={browserHistory}>
        <Route path='/' component={NavBar}>
          {/* <IndexRoute component={Categories}/> */}
          {/* <Route path='/venues' component={VenuesIndexContainer}/> */}
          {/* <Route path='/venues/new' component={VenueFormContainer}/>
          <Route path='/venues/:id/edit' component={VenueFormContainer}/>
          <Route path='/venues/:id' component={VenueShowContainer}/>
          <Route path='/venues/:venue_id/reviews/new' component={ReviewFormContainer}/>
          <Route path='/admin/users' component={UsersIndexContainer} /> */}
        </Route>
      </Router>
    </div>
  )
}

export default App;
