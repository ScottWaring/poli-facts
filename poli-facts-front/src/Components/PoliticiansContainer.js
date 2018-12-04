//handles logic for either displaying a list of politician icons or individual politican info 
import React from 'react'
import PoliticianIcon from './PoliticianIcon'
import GovernorIcon from './GovernorIcon'
import PoliticianCard from './PoliticianCard'

class PoliticiansContainer extends React.Component {
    
    
    render(){
        let poliList = this.props.politicians.map(poliObj => {
            return <PoliticianIcon {...poliObj}/>
        })
        return (
            <div className="six wide column">
                <h2 className="ui header">Politicians</h2>
                <div className= "ui cards">
                    <GovernorIcon {...this.props.governor}/>
                    {poliList}
                </div>
                
            </div>
        )
    }
}

export default PoliticiansContainer