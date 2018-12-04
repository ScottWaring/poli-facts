import React from 'react'

class PoliticianCard extends React.Component {
    
    render(){
        return (
            <div className="ui red segment">
            <div class="ui left floated button">Back</div>
            <div className="ui small image centered spaced">
                <img src="https://theunitedstates.io/images/congress/225x275/R000570.jpg"/>
            </div>
                <div class='content'>
                    <div class='header'>Rep Name</div>
                    <div class='meta'>
                        <span class='date'>Republican Party</span>
                    </div>
                    <div class='description'>
                      <p>Texas Senator</p> 
                    <a href="#">Website </a> <br/><br/>

                    <i aria-hidden='true' class='grey newspaper outline large link icon' />
                    <a href="#">In the news </a> 
                    <br/>
                    <i aria-hidden='true' class='blue facebook large link icon' />
                    <i aria-hidden='true' class='teal twitter square large link icon' />
                    <i aria-hidden='true' class='red youtube square large link icon' />
                    </div>
                  
                </div>
            </div>
        )
    }
}

export default PoliticianCard