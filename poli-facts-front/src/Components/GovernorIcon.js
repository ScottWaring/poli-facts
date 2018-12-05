import React from 'react'

class GovernorIcon extends React.Component {
    
    render(){
        let partyName = this.props.party.charAt(0).toUpperCase() + this.props.party.slice(1);
        return (
            <a className={partyName=== "Republican" ? "ui red card" : "ui blue card"} onClick={() => this.props.clickHandler(this.props)}>
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
            </a>
        )
    }
}

export default GovernorIcon