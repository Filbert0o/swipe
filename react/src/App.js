import React from 'react'
import { Route, IndexRoute, Router, browserHistory } from 'react-router';
import NavBar from "./NavBar";
import InformationsIndex from "./InformationsIndex"
import AccountsIndexContainer from "./containers/AccountsIndexContainer";

const App = props => {
  return(
    <div>
      <Router history={browserHistory}>
        <Route path='/' component={NavBar}>
          <IndexRoute component={InformationsIndex} />
          <Route path='/accounts' component={AccountsIndexContainer} />
        </Route>
      </Router>
    </div>
  )
}

export default App;
