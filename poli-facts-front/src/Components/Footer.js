// handles logic for whether to access facts for a state or a zipcode
import React from 'react'


class Footer extends React.Component {

    render(){
        return (
          <div className="links-bar">
            <p id="footer-id">POLIFACTS 2018</p>
            <p className="link-link"><a href="https://www.runforoffice.org/" target="_blank">Run For Office</a></p>
            <p className="link-link"><a href="https://www.usa.gov/register-to-vote" target="_blank">Register To Vote</a></p>
          </div>
        )
    }
}

export default Footer
