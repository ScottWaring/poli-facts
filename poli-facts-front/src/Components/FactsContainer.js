// handles logic for whether to access facts for a state or a zipcode
import React from 'react'
import PoliticianFacts from './PoliticianFacts'
import StateFacts from './StateFacts'

class FactsContainer extends React.Component {

    render(){
      let stateName
      let nameSplit = this.props.state.split("_")
      let first = nameSplit[0]
      let newFirst = first.charAt(0).toUpperCase() + first.slice(1)
      if (nameSplit.length > 1) {
        let last = nameSplit[1]
        let newLast = last.charAt(0).toUpperCase() + last.slice(1)
        stateName = `${newFirst} ${newLast}`
      } else {
        stateName = newFirst
      }
        return (
            <div name="politician-facts" >
            {console.log(this.props)}
                <h2 className="ui header">{stateName}</h2>
                <div className="ui placeholder segment" >
                    {this.props.info.abbrv ? <StateFacts state={this.props.info}/> : <PoliticianFacts pol={this.props.info}/>}
                </div>

            </div>
        )
    }
}

export default FactsContainer
//
