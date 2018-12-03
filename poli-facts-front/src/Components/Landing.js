import React, { Component } from 'react';
import axios from 'axios'
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
      <div>
      hello world
      <form onSubmit={this.handleSubmit}>
        <input onChange={this.changeHandler} name="search" value={this.state.searchInput} placeholder="Search By State Or Zip"/>
        <button>Search</button>
      </form>
      {this.state.info.length === 0? <USAMap onClick={this.mapHandler} /> : this.state.info}
      </div>
    )
  }
}

export default Landing
