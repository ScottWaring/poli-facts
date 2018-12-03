import React, { Component } from 'react';
import axios from 'axios'

class Landing extends Component {

  callFetch =()=> {
    axios.get()
  }

  render() {
    return (
      <div>
      {this.callFetch}
      </div>
    )
  }
}

export default Landing
