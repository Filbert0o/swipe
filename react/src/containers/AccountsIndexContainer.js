import React, { Component } from 'react';
import { Link } from 'react-router';
import AccountsIndexTile from "../components/AccountsIndexTile";
import BankInstitution from "../components/BankInstitution"

class AccountsIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      currentUser: null,
      accounts: [],
      institution: ''
    }

  }

  getCurrentUser(){
    fetch('/api/v1/users', {
      credentials: 'same-origin'
    })
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
        currentUser: body.user
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  getAccount(){
    fetch('/api/v1/accounts', {
      credentials: 'same-origin'
    })
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

  getInstitution(){
    fetch('/api/v1/items', {
      credentials: 'same-origin'
    })
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
       institution: body.institutions.name
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  componentDidMount() {
    this.getCurrentUser();
    this.getAccount();
    this.getInstitution();
  }

  render() {
    const accounts = this.state.accounts.map((account) => {
      return(
        <AccountsIndexTile
          key={account.account_id}
          id={account.account_id}
          accountId={account.account_id}
          availableBalance={account.balances.available}
          currentBalance={account.balances.current}
          limitBalance={account.balances.limit}
          mask={account.mask}
          name={account.name}
          officialName={account.official_name}
          subtype={account.subtype}
          maintype={account.type}
        />
      )
    })

    let plaidLink = () => {
      if (Cookies.get('accessToken') === undefined) {
        return(
          <div className='plaid-home'>
            <button><Link to={'/'}>Link Your Bank First</Link></button>
          </div>
        )
      } else {
        return(<div></div>)
      }
    }

    if (this.state.currentUser) {
      return(
        <div>
          {plaidLink()}
          <BankInstitution
            institution={this.state.institution}
          />
          {accounts}
        </div>
      )
    } else {
        return(
          <div>
            <button className='authentication'>
              <a href='/users/sign_in'>Log In</a>
            </button>
            <button className='authentication'>
              <a href='/users/sign_up'>Sign Up</a>
            </button>
          </div>
        )
    }
  }
}
export default AccountsIndexContainer;
