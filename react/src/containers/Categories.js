import React, { Component } from 'react';

class Categories extends Component {
  constructor(props) {
    super(props);
    this.state = {
      categories: []
    }
  }

  componentDidMount() {
    fetch('/api/v1/categories')
    .then(response => {
      debugger
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
      debugger
      this.setState({
        categories: body
      })
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  render() {
    let categoryGroup = this.state.categories.map(category => {
      return category.group
    })
    return(
      <div>
        <p>{categoryGroup}</p>
      </div>
    )
  }
}
export default Categories;
