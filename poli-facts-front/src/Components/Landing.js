import React, { Component } from 'react';
import PoliticiansContainer from './PoliticiansContainer'
import FactsContainer from './FactsContainer'
import HeaderDisplay from './HeaderDisplay'
import houseicon from '../imgs/house-icon.png'
import axios from 'axios';


class Landing extends Component {

  callFetch =()=> {
    axios.get()
  }

  render() {
    return (
      <div className="ui container">
        <HeaderDisplay />
        <h1 className="ui huge header" id="topHeader">PoliFacts </h1>
        <div id="icon-cont">
          <img src={houseicon} className ="ui medium centered image" alt="political icon"/><br/><br/>
          <a href="#divider">
            <i aria-hidden='true' class='grey angle double down big link icon'/>
          </a>
          <a name="divider"/>
        </div>

        {this.callFetch}
        <br/> <br/>
        <div className='ui divider'/>
       
        <div className="ui input focus"><input type="text" placeholder="Search by state or zip"></input></div><br></br>
        <div className="ui divided equal width grid container" id="section2">
          <PoliticiansContainer />
          <FactsContainer />
        </div>

      </div>
    )
  }


}

export default Landing
