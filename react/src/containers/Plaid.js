import React, { Component } from 'react';
import PlaidLink from 'react-plaid-link';

class Plaid extends Component {
  constructor(props) {
    super(props);
    this.state = {
    }
    this.handleOnSuccess = this.handleOnSuccess.bind(this)
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
      this.setState({
        accessToken: body.access_token
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }



  render() {
    return(
      <PlaidLink
        publicKey='4471d2317cf2085628c5c3a0941cba'
        product='auth'
        env='development'
        clientName='PlaidSwipe'
        onSuccess={this.handleOnSuccess}
      />
    )
  }
}
export default Plaid;
