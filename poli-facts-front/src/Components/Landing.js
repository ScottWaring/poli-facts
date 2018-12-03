import React, { Component } from 'react';

import PoliticiansContainer from './PoliticiansContainer'
import FactsContainer from './FactsContainer'
import HeaderDisplay from './HeaderDisplay'
import houseicon from '../imgs/house-icon.png'
import axios from 'axios';
import USAMap from "react-usa-map";




class Landing extends Component {
  state = {
    searchInput: "",
    info: []
  }

  changeHandler =(e)=> {
    this.setState({searchInput: e.target.value })
  }

  callFetch =(input)=> {
    axios.get(`http://localhost:3000/find_by/${input}`)
    .then(response => this.setState({info: response.data}))
    .catch(r => alert("Bad Value Please Reenter Search Input"))
  }

  handleSubmit =(e)=> {
    e.preventDefault()
    let input = this.state.searchInput.toLowerCase()
    let splitInput = input.split(" ")
    let joinInput = splitInput.join("_")
    this.setState({searchInput: ""})
    return this.callFetch(joinInput)
  }

  // parseInfo =()=> {
  //   return (
  //     <div>
  //     {this.state.info.income}
  //     </div>
  //   )
  // }
  mapHandler = (event) => {
    let state = event.target.dataset.name
    return this.callFetch(state)
  };

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


        <br/> <br/>
        <div className='ui divider'/>
         <div>
     
      <form onSubmit={this.handleSubmit}>
        <input onChange={this.changeHandler} name="search" value={this.state.searchInput} placeholder="Search By State Or Zip"/>
        <button>Search</button>
      </form>
      {this.state.info.length === 0? <USAMap onClick={this.mapHandler} /> : this.state.info}

      <div className="ui container"></div>

      </div>
      
        <div className="ui divided equal width grid container" id="section2">
          <PoliticiansContainer />
          <FactsContainer />
        </div>


    
    )
  }


}

export default Landing
