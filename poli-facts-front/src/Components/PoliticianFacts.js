import React from 'react'
import ScrollableAnchor from 'react-scrollable-anchor'

class PoliticianFacts extends React.Component {

    render(){
        let p = this.props.pol
        let nameSplit = p.name.split(" ")
        let first = nameSplit[0]
        let last = nameSplit[1]
        let timesUrl = `https://www.nytimes.com/search?query=${last}%252C+${first}`
        let pol_phone = `tel:1-${p.phone}`
        let party = p["party"].charAt(0).toUpperCase() + p["party"].slice(1)
        let website = 	`https://${last}.house.gov`
        return (
        <ScrollableAnchor id={"politician-facts"}>
          <div className={party === "Republican" ? "ui red segment" : "ui blue segment"}>

                <div class='ui content divided two column grid'>
                    
                      <div className="column">
                        <div className="ui medium image centered ">
                            {p.img_url ? <img className="poli-img" src={p.img_url}/> : <img src={p.photo_url}/>}
                        </div>
                        <h3>{p.name}</h3> <br />
                        {party}
                        <p>{p.title}</p>
                        {p.district && <p>District: {p.district} </p> }

                      </div>
                    
                    <div className='description column'>
                      <div className="second-column">
                          {p.bio && <div><h4> Bio: </h4>{p.bio} </div>} <br />
                          {p.term_end ? <p><h4>Term Ends: </h4>{p.term_end}</p> : <p><h4>Next Election: </h4>{p.next_elec}</p>}
                          {p.bills_cosponsored && <p><h4>Bills Cosponsored: </h4>{p.bills_cosponsored}</p>}
                          {p.bills_sponsored &&  <p><h4>Bill Sponsored: </h4>{p.bills_sponsored}</p>}
                          {p.votes_with_party_pct && <p><h4>Votes with party: </h4>{p.votes_with_party_pct}%</p>}
                          {p.missed_votes_pct ? <p><h4>Missed Votes: </h4>{p.missed_votes_pct}%</p> : null}
                          <br/><br/>
                          <p><h4> Address </h4></p>
                          {p.address && p.address !== null ?<p>{p.address}</p> : <p>{p.office_address}, Washington, DC</p>}
                          <div id="icons">
                            <div id="icons-1">
                            <i aria-hidden="true" className="grey phone large link icon"/><a href={pol_phone}>{p.phone}</a><br /><br />
                              <i aria-hidden="true" class="grey newspaper outline large link icon"/><a href={timesUrl} target="_blank">In the news</a>
                            </div>
                            <br/>
                            {p.website? <div id="icons-2"><a href={p.website} target="_blank">Website </a></div> : <div id="icons-2"><a href={website} target="_blank">Website </a></div>}
                            <div id="icons-3">
                              <a href={p.bio? p.facebook : `https://www.facebook.com/${p.facebook}`}  target="_blank"><i aria-hidden="true" class="blue facebook large link icon"/></a>
                              <a href={p.twitter_handle? `https://www.twitter.com/${p.twitter_handle}`:`https://www.twitter.com/${p.twitter}`} target="_blank"><i aria-hidden="true" class="teal twitter square large link icon" /></a>
                              <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank"><i aria-hidden="true" class="red youtube square large link icon" /></a>
                            </div>
                          </div>
                        </div>
                    </div>
                  </div>
                </div>
                </ScrollableAnchor>
        )
    }
  }


export default PoliticianFacts
