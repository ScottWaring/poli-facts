// handles logic for whether to access facts for a state or a zipcode
import React from 'react'
import PoliticianFacts from './PoliticianFacts'
import StateFacts from './StateFacts'

class FactsContainer extends React.Component {

    render(){

        return (
            <div >

                <h2 className="ui header">Key Facts</h2>
                <div className="ui piled segment">
                    {this.props.info.abbrv ? <StateFacts state={this.props.info}/> : <PoliticianFacts pol={this.props.info}/>}
                </div>

            </div>
        )
    }
}

export default FactsContainer
