import React from 'react'

class PoliticiansIcon extends React.Component {
    
    render(){
        return (
            <div className={this.props.party=== "Republican" ? "ui red card" : "ui blue card"}>
            <div className="ui small image centered spaced" id="padding">
                <img src={this.props.img_url} alt="politician"/>
            </div>
                <div class='content'>
                    <div class='header'>{this.props.name}</div>
                    <div class='meta'>
                        <span class='date'>{this.props.party}</span>
                    </div>
                    <div class='description'>{this.props.title}</div>
                </div>
            </div>
        )
    }
}

export default PoliticiansIcon