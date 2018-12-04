require 'rest-client'
class SearchController < ApplicationController


  def show
    # GOOGLE_API = "AIzaSyDmvAw4zMq7CKQoqrE4zRHfIdOW40hIPAA"
    if params[:query].length === 2
      state = StateTable.find_by(abbrv:params[:query])
    else
      state = StateTable.find_by(name:params[:query])
    end

    googleElections = RestClient.get("https://www.googleapis.com/civicinfo/v1/representatives?/ocd-division/country:us/state:#{state.abbrv.downcase}/&key=AIzaSyDmvAw4zMq7CKQoqrE4zRHfIdOW40hIPAA")
    returnElections = JSON.parse(googleElections)
    # if state != nil
      # url = "https://api.census.gov/data/2016/acs/acs5?get=NAME,B19326_001E,C15002H_001E&for=state:#{state.census_id}&key=ee73f0de8916a3b0849e92c266f7937bccb62ad2"
      # response = RestClient.get(url)
      # senateResponse = RestClient.get("https://api.propublica.org/congress/v1/115/senate/members/#{params[:query]}/current", headers={"X-API-KEY":"Jv6lbl95ZWrgwK8bThHUaXcaVfojPdqG6V7rR3QY"})
      # houseResponse = RestClient.get("https://api.propublica.org/congress/v1/115/house/members/#{params[:query]}/current", headers={"X-API-KEY":"Jv6lbl95ZWrgwK8bThHUaXcaVfojPdqG6V7rR3QY"})
      # returnData = JSON.parse(response)
      # senateCongress = JSON.parse(senateResponse)
      # houseCongress = JSON.parse(houseResponse)
      # @median = returnData[1][1]
      # @education = returnData[1][2]
      byebug

    # end

  end

end
