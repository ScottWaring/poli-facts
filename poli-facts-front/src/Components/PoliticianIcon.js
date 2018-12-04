import React from 'react'

class PoliticiansIcon extends React.Component {
    
    render(){
        return (
            <div className="ui red card">
            <div class="ui left floated button">Back</div>
            <div className="ui small image centered spaced" id="padding">
                <img src="https://theunitedstates.io/images/congress/225x275/R000570.jpg" alt="politician"/>
            </div>
                <div class='content'>
                    <div class='header'>Rep Name</div>
                    <div class='meta'>
                        <span class='date'>Republican</span>
                    </div>
                    <div class='description'>Texas Senator</div>
                </div>
            </div>
        )
    }
}

export default PoliticiansIcon