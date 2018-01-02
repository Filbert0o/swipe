import React, { Component } from 'react';
import PlaidLink from 'react-plaid-link';

class Plaid extends Component {
  constructor(props) {
    super(props);
    this.state = {
      currentUser: null,
      accessToken: Cookies.get('accessToken') || null
    }
    this.handleOnSuccess = this.handleOnSuccess.bind(this)
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

  handleOnSuccess(token, metadata) {
    fetch('/api/v1/plaid_authentications', {
      credentials: 'same-origin',
      method: 'POST',
      body: JSON.stringify(token),
      headers: {'Content-Type': 'application/json'}
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
      Cookies.set('accessToken', body.access_token)
      debugger
      this.setState({
        accessToken: Cookies.get('accessToken')
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  componentDidMount() {
    this.getCurrentUser();
  }

  render() {
    debugger
    if (this.state.accessToken === null && this.state.currentUser) {
      return(
        <PlaidLink
          className='plaid-link'
          publicKey='4471d2317cf2085628c5c3a0941cba'
          product='auth'
          env='development'
          clientName='Swipe'
          onSuccess={this.handleOnSuccess}
          buttonText='Link Bank'
        />
      )
    }
    else if (this.state.currentUser === null) {
      Cookies.remove('accessToken');
      return(
        <div>
          <button className='authentication'>
            <a className='sign-in-button' href='/users/sign_in'>Log In</a>
          </button>
          <button className='authentication'>
            <a className='sign-up-button' href='/users/sign_up'>Sign Up</a>
          </button>
        </div>
      )
    }
    else {
      return(
        <div>Successfully linked your bank!</div>
      )
    }
  }
}
export default Plaid;
