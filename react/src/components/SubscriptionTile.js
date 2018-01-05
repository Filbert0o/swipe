import React from 'react';

const SubscriptionTile = props =>{
  let daysAdded = ( date1 ) => {
    //Get 1 day in milliseconds
    let one_day=1000*60*60*24;
    let date1Parse = Date.parse(date1)

    // Days difference
    let add_thirty_days = (date1Parse) + (one_day*30)

    let myDate = new Date(add_thirty_days)
    // Convert back to days and return
    return myDate.toLocaleDateString()
  }
  return(
    <div className='subscription-box row'>
      <div className='name twelve columns'>
        {props.subscription.name}
      </div>
      <div className='row'>
        <div className='amount six columns'>
          Anticipated Amount Due<br/>
          ${props.subscription.amount}
        </div>
        <div className='date six columns'>
          Anticipated Due Date<br/>
          {daysAdded(props.subscription.date)}
        </div>
      </div>

    </div>
  )
}

export default SubscriptionTile;
