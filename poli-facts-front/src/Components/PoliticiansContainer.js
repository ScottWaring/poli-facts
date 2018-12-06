//handles logic for either displaying a list of politician icons or individual politican info
import React from 'react'
import PoliticianIcon from './PoliticianIcon'


class PoliticiansContainer extends React.Component {


    render(){
        let poliList = this.props.politicians.map(poliObj => {
            return <PoliticianIcon {...poliObj} clickHandler={this.props.clickHandler}/>
        })
        return (
            <div >

                <h2 className="ui header">Elected Officials</h2>
                <div className= "ui centered cards">
                    {poliList}
                </div>

            </div>
        )
    }
}

export default PoliticiansContainer
