import React, { Component } from 'react';
import PoliticiansContainer from './PoliticiansContainer'
import FactsContainer from './FactsContainer'
import houseicon from '../imgs/house-icon.png'
import axios from 'axios';
import USAMap from "react-usa-map";
import GovernorIcon from './GovernorIcon'
import ScrollableAnchor from 'react-scrollable-anchor'
import { goToAnchor } from 'react-scrollable-anchor'


class Landing extends Component {
  state = {
    searchInput: "",
    info: [],
    displayFacts: false,
    facts: []
  }

  changeHandler =(e)=> {
    this.setState({searchInput: e.target.value })
  }

  callFetch =(input)=> {
    axios.get(`http://localhost:3000/find_by/${input}`)
    .then(response => {
      console.log(response.data)
      this.setState({info: response.data, displayFacts: true, facts: []})
      goToAnchor('state', false)
    })
  }

  handleSubmit =(e)=> {
    e.preventDefault()
    let input = this.state.searchInput.toLowerCase()
    let splitInput = input.split(" ")
    let joinInput = splitInput.join("_")
    this.setState({searchInput: ""})
    return this.callFetch(joinInput)
  }

  mapHandler = (event) => {
    let state = event.target.dataset.name
    this.callFetch(state)
    
  };

  clickHandler = (event) => {
    this.setState({
      facts: event
    })
  }


  render() {
    return (

      <div className="ui container fade-in">

        <h1 className="ui huge header" id="topHeader">PoliFacts </h1>

        <div id="icon-cont">
          {/* <svg height="100" width="100">
            <circle cx="50" cy="50" r="40" />
          </svg> */}
          <img src={houseicon} id="icon" className ="ui medium centered image" alt="political icon"/><br/><br/>
          <a href="#divider">
          <br/>
            <i aria-hidden='true' id="arrow" class='grey angle double down big link icon bounce'/>
          </a>
        
          
        </div>


        <br/> <br/>
    <ScrollableAnchor id={"divider"}>
     <div>

        <form className="ui input" onSubmit={this.handleSubmit}>
          <input onChange={this.changeHandler} name="search" value={this.state.searchInput} placeholder="Search By State Or Click On The Map"/>
          <button>Search</button>
        </form>
        <USAMap onClick={this.mapHandler} />


        <div className="ui container"></div>

      </div>
      </ScrollableAnchor>

        {this.state.displayFacts ?
          <div className="ui container fade-in" id="section2">
            <a href="#divider"><button class="ui left floated button" id="sticky">Back to Map</button></a>
            <ScrollableAnchor id={"state"}>
            <div/>
            </ScrollableAnchor>
            <FactsContainer state={this.state.info.state.name} info={this.state.facts.length === 0 ? this.state.info.state : this.state.facts} /><br/>
           
              <div className='ui divider'/>
            
              <h2 className="ui header">Governor</h2>
              <div className= "ui centered cards"id ="gov">
                  <GovernorIcon {...this.state.info.governor} clickHandler={this.clickHandler}/>
              </div>
            
            <PoliticiansContainer politicians={this.state.info.politicians} governor={this.state.info.governor} clickHandler={this.clickHandler}/>

          </div>
          :null
        }

    </div>

    )
  }


}

export default Landing
