StateTable.destroy_all
  @states_arr = [{'Alabama'=>'AL'},{'Alaska'=>'AK'},{'Arizona'=>'AZ'},{'Arkansas'=>'AR'},
  {'California'=>'CA'},{'Colorado'=>'CO'},{'Connecticut'=>'CT'},{'Delaware'=>'DE'},{'Florida'=>'FL'},
  {'Georgia'=>'GA'},{'Hawaii'=>'HI'},{'Idaho'=>'ID'},{'Illinois'=>'IL'},
  {'Indiana'=>'IN'},{'Iowa'=>'IA'},{'Kansas'=>'KS'},{'Kentucky'=>'KY'},
  {'Louisiana'=>'LA'},{'Maine'=>'ME'},{'Maryland'=>'MD'}, {'Massachusetts'=>'MA'},
  {'Michigan'=>'MI'},{'Minnesota'=>'MN'},{'Mississippi'=>'MS'},{'Missouri'=>'MO'},
  {'Montana'=>'MT'},{'Nebraska'=>'NE'},{'Nevada'=>'NV'},{'New Hampshire'=>'NH'},
  {'New Jersey'=>'NJ'},{'New Mexico'=>'NM'},{'New York'=>'NY'},{'North Carolina'=>'NC'},{'North Dakota'=>'ND'},
  {'Ohio'=>'OH'},{'Oklahoma'=>'OK'},{'Oregon'=>'OR'},{'Pennsylvania'=>'PA'},
  {'Rhode Island'=>'RI'},{'South Carolina'=>'SC'},{'South Dakota'=>'SD'},
  {'Tennessee'=>'TN'},{'Texas'=>'TX'},{'Utah'=>'UT'},{'Vermont'=>'VT'},
  {'Virginia'=>'VA'},{'Washington'=>'WA'},{'West Virginia'=>'WV'},{'Wisconsin'=>'WI'},
  {'Wyoming'=>'WY'}]
  @poverty_table = [{"state_id"=> "","state_name"=> "United States","poverty_level"=> 15.1},
 {"state_id"=> 1,"state_name"=> "Alabama","poverty_level"=> 18.4},
 {"state_id"=> 2,"state_name"=> "Alaska","poverty_level"=> 10.1},
 {"state_id"=> 4,"state_name"=> "Arizona","poverty_level"=> 17.7},
 {"state_id"=> 5,"state_name"=> "Arkansas","poverty_level"=> 18.8},
 {"state_id"=> 6,"state_name"=> "California","poverty_level"=> 15.8},
 {"state_id"=> 8,"state_name"=> "Colorado","poverty_level"=> 12.2},
 {"state_id"=> 9,"state_name"=> "Connecticut","poverty_level"=> 10.4},
 {"state_id"=> 10,"state_name"=> "Delaware","poverty_level"=> 12},
 {"state_id"=> 11,"state_name"=> "District of Columbia","poverty_level"=> 17.9},
 {"state_id"=> 12,"state_name"=> "Florida","poverty_level"=> 16.1},
 {"state_id"=> 13,"state_name"=> "Georgia","poverty_level"=> 17.8},
 {"state_id"=> 15,"state_name"=> "Hawaii","poverty_level"=> 10.8},
 {"state_id"=> 16,"state_name"=> "Idaho","poverty_level"=> 15.2},
 {"state_id"=> 17,"state_name"=> "Illinois","poverty_level"=> 14},
 {"state_id"=> 18,"state_name"=> "Indiana","poverty_level"=> 15},
 {"state_id"=> 19,"state_name"=> "Iowa","poverty_level"=> 12.3},
 {"state_id"=> 20,"state_name"=> "Kansas","poverty_level"=> 13.3},
 {"state_id"=> 21,"state_name"=> "Kentucky","poverty_level"=> 18.8},
 {"state_id"=> 22,"state_name"=> "Louisiana","poverty_level"=> 19.7},
 {"state_id"=> 23,"state_name"=> "Maine","poverty_level"=> 13.5},
 {"state_id"=> 24,"state_name"=> "Maryland","poverty_level"=> 9.9},
 {"state_id"=> 25,"state_name"=> "Massachusetts","poverty_level"=> 11.4},
 {"state_id"=> 26,"state_name"=> "Michigan","poverty_level"=> 16.3},
 {"state_id"=> 27,"state_name"=> "Minnesota","poverty_level"=> 10.8},
 {"state_id"=> 28,"state_name"=> "Mississippi","poverty_level"=> 22.3},
 {"state_id"=> 29,"state_name"=> "Missouri","poverty_level"=> 15.3},
 {"state_id"=> 30,"state_name"=> "Montana","poverty_level"=> 14.9},
 {"state_id"=> 31,"state_name"=> "Nebraska","poverty_level"=> 12.4},
 {"state_id"=> 32,"state_name"=> "Nevada","poverty_level"=> 14.9},
 {"state_id"=> 33,"state_name"=> "New Hampshire","poverty_level"=> 8.5},
 {"state_id"=> 34,"state_name"=> "New Jersey","poverty_level"=> 10.9},
 {"state_id"=> 35,"state_name"=> "New Mexico","poverty_level"=> 20.9},
 {"state_id"=> 36,"state_name"=> "New York","poverty_level"=> 15.5},
 {"state_id"=> 37,"state_name"=> "North Carolina","poverty_level"=> 16.8},
 {"state_id"=> 38,"state_name"=> "North Dakota","poverty_level"=> 11.2},
 {"state_id"=> 39,"state_name"=> "Ohio","poverty_level"=> 15.4},
 {"state_id"=> 40,"state_name"=> "Oklahoma","poverty_level"=> 16.5},
 {"state_id"=> 41,"state_name"=> "Oregon","poverty_level"=> 15.7},
 {"state_id"=> 42,"state_name"=> "Pennsylvania","poverty_level"=> 13.3},
 {"state_id"=> 44,"state_name"=> "Rhode Island","poverty_level"=> 13.8},
 {"state_id"=> 45,"state_name"=> "South Carolina","poverty_level"=> 17.2},
 {"state_id"=> 46,"state_name"=> "South Dakota","poverty_level"=> 14},
 {"state_id"=> 47,"state_name"=> "Tennessee","poverty_level"=> 17.2},
 {"state_id"=> 48,"state_name"=> "Texas","poverty_level"=> 16.7},
 {"state_id"=> 49,"state_name"=> "Utah","poverty_level"=> 11.7},
 {"state_id"=> 50,"state_name"=> "Vermont","poverty_level"=> 11.6},
 {"state_id"=> 51,"state_name"=> "Virginia","poverty_level"=> 11.4},
 {"state_id"=> 53,"state_name"=> "Washington","poverty_level"=> 12.7},
 {"state_id"=> 54,"state_name"=> "West Virginia","poverty_level"=> 17.7},
 {"state_id"=> 55,"state_name"=> "Wisconsin","poverty_level"=> 12.7},
 {"state_id"=> 56,"state_name"=> "Wyoming","poverty_level"=> 11.6},
 {"state_id"=> 72,"state_name"=> "Puerto Rico","poverty_level"=> 45.1}
]


def make_state_tables()
  url = "https://api.census.gov/data/2016/acs/acs1?get=NAME&for=state:*&key=ee73f0de8916a3b0849e92c266f7937bccb62ad2"
  response = RestClient.get(url)
  returnData = JSON.parse(response)
  returnData.each do |state|
    @name = state[0].downcase.split(" ").join("_")
    @check_name = state[0].downcase
    @census_id = state[1]
    if @check_name == "puerto rico"
      @abbrv = "PR"
      @census_id = 72
    elsif @check_name == "district of columbia"
      @abbrv = "DC"
      @census_id = 11
    else
      @states_arr.each do |x|
        x.each do |k, v|
          if k.downcase == @check_name
            @abbrv = v
          end
        end
      end
    end
    @poverty_table.each do |x|
      if x["state_name"].downcase == @check_name
        @poverty = x["poverty_level"]
      end
    end
    StateTable.create(name: @name, abbrv: @abbrv, census_id: @census_id, poverty: @poverty)
  end

end


make_state_tables()
