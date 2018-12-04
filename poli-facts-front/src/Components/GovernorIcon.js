import React from 'react'

class GovernorIcon extends React.Component {
    
    render(){
        let partyName = this.props.party.charAt(0).toUpperCase() + this.props.party.slice(1);
        return (
            <div className={partyName=== "Republican" ? "ui red card" : "ui blue card"}>
             <div className="ui small image centered spaced" id="padding">
                <img src={this.props.photo_url} alt="politician"/>
            </div>
                <div class='content'>
                    <div class='header'>{this.props.name}</div>
                    <div class='meta'>
                        <span class='date'>{partyName}</span>
                    </div>
                    <div class='description'>Governor</div>
                </div>
            </div>
        )
    }
}

export default GovernorIcon