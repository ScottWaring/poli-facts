// handles logic for whether to access facts for a state or a zipcode
import React from 'react'


class FactsContainer extends React.Component {
    
    render(){
       
        return (
            <div >

                <h2 className="ui header">Key Facts</h2>
                <div className="ui piled segment">
                    {'state' in this.props ? "state":"poli"}
                    {console.log(this.props)}

                   
                </div>
                
            </div>
        )
    }
}

export default FactsContainer