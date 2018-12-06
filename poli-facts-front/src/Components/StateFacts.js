// handles logic for whether to access facts for a state or a zipcode
import React from 'react'
import PieChart from 'react-minimal-pie-chart';

class FactsCard extends React.Component {

<<<<<<< HEAD
    state = {
        race: {}
    }

    hoverHandler = (event, data, dataIndex) => {
        console.log(data)
        console.log(dataIndex)
        this.setState({
            race: data[dataIndex]
        })
    }
    
    render(){
        let state = this.props.state 
        return (
            <div className="ui two column grid divided">
                <div className="ui small statistics eight wide column" >
                    <div className="ui statistic">
                        <div className="label">Median Income</div>
                        <div className="value">{state.income} </div>
                    </div>
                    <div className="ui statistic">
                        <div className="label">Living in Poverty</div>
                        <div className="value">{state.poverty}%</div>
                        
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
                <div className = "column">
                <div id= "pie">
                    <h3>{this.state.race.value * 100}% {this.state.race.title}</h3>
                    <PieChart
                        data={[
                        { title: 'White', value: state.white, color: '#5F5AA2' },
                        { title: 'Black', value: state.black, color: '#4A6FA5' },
                        { title: 'Hispanic', value: state.hispanic, color: '#C0D6DF' },
                        { title: 'Asian', value: state.asian, color: '#b59da4' },
                        { title: 'American Indian/Alaska Native', value: state.native_indian_alaska, color: '#DBE9EE' },
                        { title: 'Two or More Races', value: state.two_plus_race, color: '#30292F' },
                        { title: 'Unaccounted / Error', value: state.unaccounted_race, color: '#3F4045' }
                        ]}
                        onMouseOver = {(event, data, dataIndex) => this.hoverHandler(event, data, dataIndex)}
                        />
                </div>
		</div>
=======
                    <div className="label">Bachelor's degrees</div>

            <div >

>>>>>>> e5cad57ea5bc71805b92f7b8f75ca21c05d35a84

            </div>
        )
    }
}

export default FactsCard
