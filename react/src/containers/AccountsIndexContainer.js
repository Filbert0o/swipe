import React, { Component } from 'react';
import AccountsIndexTile from "../components/AccountsIndexTile"

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      accounts: []
    }

  }

  getAccount(){
    fetch('/api/v1/accounts')
    .then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      this.setState({
       accounts: body.accounts
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  componentDidMount() {
    this.getAccount();
  }
  render() {
    const accounts = this.state.accounts.map((account) => {
      return(
        <AccountsIndexTile
          key={account.id}
          id={account.id}
          accountId={account.account_id}
          availableBalance={account.balance.available}
          currentBalance={account.balance.current}
          limitBalance={account.balance.limit}
          mask={account.mask}
          name={account.name}
          officialName={account.official_name}
          subtype={account.subtype}
          maintype={account.maintype}
        />
      )
    })
    return(
      <div>
        {accounts}
      </div>
    )
  }
}
export default App;
