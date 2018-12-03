import React, { Component } from 'react';
import PoliticiansContainer from './PoliticiansContainer'
import FactsContainer from './FactsContainer'
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
        <br/> <br/>
        <div className='ui divider' />
        <div className="ui divided equal width grid container" id="section2">
          <PoliticiansContainer />
          <FactsContainer />
        </div>

      </div>
    )
  }


}

export default Landing
