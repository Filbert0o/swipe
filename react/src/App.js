import React from 'react'
import { Route, IndexRoute, Router, browserHistory } from 'react-router';
import NavBar from "./NavBar";
import InformationsIndex from "./InformationsIndex"
import AccountsIndexContainer from "./containers/AccountsIndexContainer";
import PurchasesIndexContainer from "./containers/PurchasesIndexContainer";
import SettingsContainer from "./containers/SettingsContainer"
import SubscriptionTracking from "./containers/SubscriptionTracking"
import Plaid from "./containers/Plaid"

const App = props => {
  return(
    <div>
      <Router history={browserHistory}>
        <Route path='/' component={NavBar}>
          <IndexRoute component={InformationsIndex} />
          <Route path='/informations' component={InformationsIndex}/>
          <Route path='/accounts' component={AccountsIndexContainer} />
          <Route path='/purchases' component={PurchasesIndexContainer} />
          <Route path='/subscriptions' component={SubscriptionTracking} />
          <Route path='/settings' component={SettingsContainer} />
        </Route>
      </Router>
    </div>
  )
}

export default App;
