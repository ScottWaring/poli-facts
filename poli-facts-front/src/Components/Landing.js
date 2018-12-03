import React, { Component } from 'react';
import axios from 'axios';

class Landing extends Component {

  callFetch =()=> {
    axios.get()
  }

  render() {
    return (
      <div className="ui container">
        <div className="ui huge header" id="topHeader">PoliFacts </div>
        <div className="ui input focus"><input type="text" placeholder="Search by state or zip"></input></div>
     
       {this.callFetch}
      </div>
    )
  }


}

export default Landing
