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
        return (
            <div className="ui red segment">
           
            {console.log(p)}
            <div class="ui left floated button">Back</div>
            <div className="ui small image centered spaced">
                {p.img_url ? <img src={p.img_url}/> : <img src={p.photo_url}/>}
            </div>
              <div class='header' id="facts-header">{p.name} <br /> {party}</div>
              <ScrollableAnchor id={"politician-facts"}>
              <div />
              </ScrollableAnchor>
                <div class='ui content divided two column grid'>

                    <div className="column">

                      <div class='meta'>

                          {p.district && <p> District: {p.district} </p>}
                      </div>
               
                      <div class='description'>
                        <p>{p.title}</p>
                        {p.term_end ? <p>Term Ends: {p.term_end}</p> : <p>Next Election: {p.next_elec}</p>}
                        {p.bills_cosponsored && <p>Bills Cosponsored: {p.bills_cosponsored}</p>}
                        {p.bills_sponsored &&  <p>Bill Sponsored: {p.bills_sponsored}</p>}
                        {p.votes_with_party_pct && <p>Votes with party: {p.votes_with_party_pct}%</p>}
                        {p.missed_votes_pct && <p>Missed Votes: {p.missed_votes_pct}%</p>}
                        {p.website && <a href={p.website}>Website </a> } <br/><br/>
                        <p> Address </p>
                        {p.address ?<p>{p.address}</p> : <p>{p.office_address}, Washington, DC</p>}
                        <a href={pol_phone}><i aria-hidden="true" className="grey phone large link icon"/>{p.phone}</a><br /><br />
                      <a href={timesUrl} target="_blank"><i aria-hidden="true" class="grey newspaper outline large link icon"/>In the news</a>
                      <br/>
                      <a href={p.bio? p.facebook : `https://www.facebook.com/${p.facebook}`}  target="_blank"><i aria-hidden="true" class="blue facebook large link icon"/></a>
                      <a href={p.twitter_handle? `https://www.twitter.com/${p.twitter_handle}`:`https://www.twitter.com/${p.twitter}`} target="_blank"><i aria-hidden="true" class="teal twitter square large link icon" /></a>
                      <a href="https://www.youtube.com/watch?v=dQw4w9WgXcQ" target="_blank"><i aria-hidden="true" class="red youtube square large link icon" /></a>
                      </div>
                    </div>
                    {p.bio && <div className="column">Bio: {p.bio} </div>}
                </div>
               
            </div>
        )
    }
  }


export default PoliticianFacts
