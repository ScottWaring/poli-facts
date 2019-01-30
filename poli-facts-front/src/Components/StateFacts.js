// handles logic for whether to access facts for a state or a zipcode
import React from 'react'
import PieChart from 'react-minimal-pie-chart';
import Popup from 'reactjs-popup'

class FactsCard extends React.Component {


    state = {
        race: {}
    }

    hoverHandler = (event, data, dataIndex) => {
       
        this.setState({
            race: data[dataIndex]
        })
    }
    
    render(){
        let state = this.props.state 
        return (
           
           
            <div className="ui two column padded grid divided">
                <div className="ui small statistics eight wide column" >
                <div className="row" id="top-row">
                    <div className="ui statistic">
                        <div className="label">Median Income</div>
                        <div className="value">
                            <i aria-hidden='true' class='money bill alternate grey small icon' />{state.income} 
                        </div> 
                    </div>
                </div>
                
                <div className="row" id= "middle-row">
                    <div className="ui statistic" id="left-of-row">
                        <div className="value">
                            <i aria-hidden='true' class='graduation grey small icon' />{state.high_school_grad}%
                        </div>
                        <div className="label">High school grads</div>
                    </div>
                    <div className="ui statistic" id="right-of-row">
                        <div className="value">
                            <i aria-hidden='true' class='graduation grey small icon' />{state.bachelor_deg}%
                        </div>
                        <div className="label">Bachelor's degrees</div>
                    </div>
                </div>
               
                <div className="row">
                    <div className="ui statistic">
                        <div className="label">Living in Poverty</div>
                        <div className="value">
                            <i aria-hidden='true' class='home grey small icon' />{state.poverty}%
                        </div>
                    </div>
                </div>
                
               
                </div>
                <div className = "column">
                <div id= "pie">
                    <h2>Racial Demographics</h2>
                    {this.state.race.value && <h3>{this.state.race.value * 100}% {this.state.race.title}</h3>}
                    <PieChart
                        data={[
                        { title: 'White', value: state.white, color: '#5F5AA2' },
                        { title: 'Black', value: state.black, color: '#4A6FA5' },
                        { title: 'Hispanic', value: state.hispanic, color: '#C0D6DF' },
                        { title: 'Asian', value: state.asian, color: '#b59da4' },
                        { title: 'American Indian/Alaska Native', value: state.native_indian_alaska, color: '#166088' },
                        { title: 'Two or More Races', value: state.two_plus_race, color: '#30292F' },
                        { title: 'Unaccounted / Error', value: state.unaccounted_race, color: '#3F4045' }
                        ]}
                        onMouseOver = {(event, data, dataIndex) => this.hoverHandler(event, data, dataIndex)}
                        />
                </div>
		</div>

</div>
            
        )
    }
}

export default FactsCard
