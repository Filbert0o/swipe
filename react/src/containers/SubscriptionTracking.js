import React, { Component } from 'react';
import { Link } from 'react-router';
import SubscriptionTile from "../components/SubscriptionTile"
import PossibleSubscription from "../components/PossibleSubscription"

class SubscriptionTracking extends Component {
  constructor(props) {
    super(props);
    this.state = {
      subscriptions: [],
      budget: 0,
      currentUser: null,
      currentPage: 1,
      subscriptionsPerPage: 10
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

  getTransactions() {
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
       subscriptions: body.transactions
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
    this.getTransactions();
    this.getBudget();
  }

  handlePagination(event) {
    this.setState({
      currentPage: Number(event.target.id)
    });
  }

  render() {

    let getMonth = (dateStr) => {
      let [year, month, day] = dateStr.split('-')
      return (Number(month) - 1);
    }

    /*SUBSCRIPTION LOGIC -------------------------------------------------------------------------*/

    let daysBetween = ( date1, date2 ) => {
      //Get 1 day in milliseconds
      let one_day=1000*60*60*24;

      let date1Parse = Date.parse(date1)
      let date2Parse = Date.parse(date2)

      // // Convert both dates to milliseconds
      // let date1_ms = date1Parse.getTime();
      // let date2_ms = date2Parse.getTime();

      // Calculate the difference in milliseconds
      let difference_ms = date2Parse - date1Parse;

      // Days difference
      let difference_days = difference_ms/one_day
      let postive_days = Math.abs(difference_days)

      // Convert back to days and return
      return Math.round(postive_days);
    }

    let subscriptions = []
    this.state.subscriptions.forEach((subscription1, index1) => {
      let currentCategories = []
      if (subscription1.category) {
        currentCategories = subscription1.category.map(type => {
          return type
        })
      }
      if (currentCategories.includes('Subscription')) {
        subscriptions.push(subscription1)
      }
      else if (subscription1.name.toLowerCase().includes('recurring')) {
        subscriptions.push(subscription1)
      }
      this.state.subscriptions.forEach((subscription2, index2) => {
        if (index1 !== index2 &&
          subscription1.category_id === subscription2.category_id &&
          subscription1.amount > 0 &&
          subscription2.amount > 0 &&
          subscription1.amount === subscription2.amount &&
          daysBetween(subscription1.date,subscription2.date) >= 28 &&
          daysBetween(subscription1.date,subscription2.date) <= 32) {
          subscriptions.push(subscription1)
        }
      })
    })

    let removeDuplicates = (arr) => {
      let s = new Set(arr);
      let it = s.values();
      return Array.from(it);
    }

    let uniqueSubscriptions = removeDuplicates(subscriptions);

    let removeDuplicatesDup = (arr) => {
      let set = new Set();
      let setArray = []
      arr.forEach(subscription => {
        let amountCategory = `${subscription.category_id}, ${subscription.amount}`
        let name = subscription.name
        if (!set.has(amountCategory) && !set.has(name)) {
          setArray.push(subscription)
          set.add(amountCategory).add(name)
        }
      })
      return setArray;
    }
    let evenMoreUniqueSubscriptions = removeDuplicatesDup(uniqueSubscriptions);

    /*SUBSCRIPTION LOGIC -------------------------------------------------------------------------*/

    // Sending Subscription to tile
    let guaranteedSubscriptions = []
    let possibleSubscriptions = []

    evenMoreUniqueSubscriptions.forEach(subscription => {
      let currentCategories = []
      if (subscription.category) {
        currentCategories = subscription.category.map(type => {
          return type
        })
      }
      if (currentCategories.includes('Subscription') || subscription.name.toLowerCase().includes('recurring')) {
        guaranteedSubscriptions.push(subscription)
      } else {
        possibleSubscriptions.push(subscription)
      }
    })
    let GuaranteedSubscriptions = guaranteedSubscriptions.map(subscription => {
      return(
        <SubscriptionTile
          key={subscription.transaction_id}
          subscription={subscription}
        />
      )
    })
    let PossibleSubscriptions = possibleSubscriptions.map(subscription => {
      return(
        <PossibleSubscription
          key={subscription.transaction_id}
          subscription={subscription}
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
          <div className='row'>
            <div>
              <h3>Guaranteed Subscriptions</h3>
              {GuaranteedSubscriptions}
            </div>
            <div>
              <h3>Possible Subscriptions</h3>
              {PossibleSubscriptions}
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
export default SubscriptionTracking;


// let daysBetween = ( date1, date2 ) => {
//   //Get 1 day in milliseconds
//   let one_day=1000*60*60*24;
//
//   // Convert both dates to milliseconds
//   let date1_ms = date1.getTime();
//   let date2_ms = date2.getTime();
//
//   // Calculate the difference in milliseconds
//   let difference_ms = date2_ms - date1_ms;
//
//   // Days difference
//   let difference_days = difference_ms/one_day
//   let postive_days = Math.abs(difference_days)
//
//   // Convert back to days and return
//   return Math.round(postive_days);
// }
//
// //Set the two dates
// let y2k  = new Date(2000, 0, 1);
// let Jan1st2010 = new Date(y2k.getFullYear() + 10, y2k.getMonth(), y2k.getDate());
// let today= new Date();
// //displays 726
// console.log( 'Days since '
//            + Jan1st2010.toLocaleDateString() + ': '
//            + Date.daysBetween(Jan1st2010, today));
