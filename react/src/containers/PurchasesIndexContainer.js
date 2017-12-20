import React, { Component } from 'react';
import PurchasesIndexTile from "../components/PurchasesIndexTile"
import PurchaseTotal from "../components/PurchaseTotal"

class PurchasesIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      purchases: []
    }
  }

  getPurchases() {
    fetch('/api/v1/purchases')
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
       purchases: body.purchases
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  componentDidMount(){
    this.getPurchases();
  }

  render() {

    let purchases = this.state.purchases.map((purchase) => {
      return(
        <PurchasesIndexTile
          key={purchase.id}
          id={purchase.id}
          amount={purchase.amount}
          categories={purchase.category}
          transactionDate={purchase.transaction_date}
          name={purchase.name}
          account={purchase.account}
        />
      )
    })
    return(
      <div>
        <PurchaseTotal
          purchases={this.state.purchases}
        />
        {purchases}
      </div>
    )
  }
}
export default PurchasesIndexContainer;
