// handles logic for whether to access facts for a state or a zipcode
import React from 'react'


class FactsCard extends React.Component {
    
    render(){
        let state = this.props.state 
        return (
            <div className="ui small statistics" >
                <div className="ui horizontal statistic">
                    <div className="value">{state.income} </div>
                    <div className="label">Median Income</div>
                </div>
                <div className="ui horizontal statistic">
                    <div className="value">{state.poverty}%</div>
                    <div className="label">Living in Poverty</div>
                </div>
            
                <div className="ui statistic">
                    <div className="value">
                        <i aria-hidden='true' class='graduation grey small icon' />{state.high_school_grad}%
                    </div>
                    <div className="label">High school grads</div>
                </div>
                <div className="ui statistic">
                    <div className="value">
                        <i aria-hidden='true' class='graduation grey small icon' />{state.bachelor_deg}%
                    </div>
                    <div className="label">Bachelor's degrees</div>
                </div>
            </div>
        )
    }
}

export default FactsCard