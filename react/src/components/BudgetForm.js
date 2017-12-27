import React, { Component } from 'react';

class BudgetForm extends Component {
  constructor(props) {
    super(props);
    this.state = {
      budget: 0
    }
    this.setBudget = this.setBudget.bind(this)
    this.handleFormSubmit = this.handleFormSubmit.bind(this)
    this.handleBudgetChange = this.handleBudgetChange.bind(this)
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
        body.budget = 0
      }
      this.setState({
        budget: body.budget.budget
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  componentDidMount(){
    this.getBudget();
  }

  handleBudgetChange(event) {
    this.setState({ budget: event.target.value })
  }

  setBudget(newBudget) {
    fetch('/api/v1/budgets', {
      credentials: 'same-origin',
      method: 'POST',
      body: JSON.stringify(newBudget),
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

    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  handleFormSubmit(event){
    event.preventDefault();
    let formPayLoad = {
      budget: Number(this.state.budget)
    };
    this.setBudget(formPayLoad);
  }

  render() {
    return(
      <div>
        <form className='budget-form' onSubmit={this.handleFormSubmit}>
          <div className='row'>
            <label className='nine columns'>MyBudget
              <input
                name='budget'
                type='number'
                value={this.state.budget}
                onChange={this.handleBudgetChange}
              />
            </label>
            <input className='budget-button three columns' type='submit' value='Save!' />
          </div>
        </form>
      </div>
    )
  }
}
export default BudgetForm;
