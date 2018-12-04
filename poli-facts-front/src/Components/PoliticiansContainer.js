//handles logic for either displaying a list of politician icons or individual politican info 
import React from 'react'
import PoliticianIcon from './PoliticianIcon'
import PoliticianCard from './PoliticianCard'

class PoliticiansContainer extends React.Component {
    
    render(){
        return (
            <div className="six wide column">
                <h2 className="ui header">Politicians</h2>
                <div className= "ui cards">
                    <PoliticianIcon />
                    <PoliticianIcon />
                </div>
                
            </div>
        )
    }
}

export default PoliticiansContainer