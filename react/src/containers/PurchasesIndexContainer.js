import React, { Component } from 'react';
import { Link } from 'react-router';
import PurchasesIndexTile from "../components/PurchasesIndexTile"
import PurchaseTotal from "../components/PurchaseTotal"

class PurchasesIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      purchases: [],
      budget: 0,
      currentUser: null,
      currentPage: 1,
      purchasesPerPage: 10
    }
    this.handlePagination = this.handlePagination.bind(this)
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

  getPurchases() {
    fetch('/api/v1/transactions', {
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
       purchases: body.transactions
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  getBudget(){
    fetch(`/api/v1/budgets`, {
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
      if(body.budget === null){
        body.budget.budget = 0
      }
      this.setState({
        budget: body.budget.budget,
        currentUser: body.user
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  componentDidMount(){
    this.getCurrentUser();
    this.getPurchases();
    this.getBudget();
  }

  handlePagination(event) {
    this.setState({
      currentPage: Number(event.target.id)
    });
  }

  render() {
    // const { todos, currentPage, todosPerPage } = this.state;

    const indexOfLastPurchase = this.state.currentPage * this.state.purchasesPerPage;
    const indexOfFirstVenue = indexOfLastPurchase - this.state.purchasesPerPage;
    const currentPurchases = this.state.purchases.slice(indexOfFirstVenue, indexOfLastPurchase);

    let purchases = currentPurchases.map((purchase) => {
      return(
        <PurchasesIndexTile
          key={purchase.transaction_id}
          id={purchase.transaction_id}
          amount={purchase.amount}
          categories={purchase.category}
          transactionDate={purchase.date}
          name={purchase.name}
        />
      )
    })

    // Logic for displaying page numbers
    const pageNumbers = [];
    for (let i = 1; i <= Math.ceil(this.state.purchases.length / this.state.purchasesPerPage); i++) {
      pageNumbers.push(i);
    }

    const renderPageNumbers = pageNumbers.map(number => {
      let buttonclass;
      if(this.state.currentPage == number) {
        buttonclass = 'custom-button active'
      } else {
        buttonclass = 'custom-button'
      }
      return (
        <div
          className={buttonclass}
          key={number}
          id={number}
          onClick={this.handlePagination}
        >
          {number}
        </div>
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
          <PurchaseTotal
            purchases={this.state.purchases}
            budget={this.state.budget}
          />
          {purchases}
          <div id='pagination'>
            <div id='page-number-container'>
              {renderPageNumbers}
            </div>
          </div>
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
export default PurchasesIndexContainer;
