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

#### populate politician bio info table ####



poliBioArray = [
  {
    "bioguide_id": "B000944",
    "cspan_id": 5051
  },
  {
    "bioguide_id": "C000127",
    "cspan_id": 26137
  },
  {
    "bioguide_id": "C000141",
    "cspan_id": 4004
  },
  {
    "bioguide_id": "C000174",
    "cspan_id": 663
  },
  {
    "bioguide_id": "C001070",
    "cspan_id": 47036
  },
  {
    "bioguide_id": "C001071",
    "cspan_id": 1021114
  },
  {
    "bioguide_id": "F000062",
    "cspan_id": 13061
  },
  {
    "bioguide_id": "H000338",
    "cspan_id": 189
  },
  {
    "bioguide_id": "K000367",
    "cspan_id": 83701
  },
  {
    "bioguide_id": "M001170",
    "cspan_id": 1012014
  },
  {
    "bioguide_id": "M000639",
    "cspan_id": 29608
  },
  {
    "bioguide_id": "N000032",
    "cspan_id": 1931
  },
  {
    "bioguide_id": "S000033",
    "cspan_id": 994
  },
  {
    "bioguide_id": "S000770",
    "cspan_id": 45451
  },
  {
    "bioguide_id": "T000464",
    "cspan_id": 1020176
  },
  {
    "bioguide_id": "W000802",
    "cspan_id": 92235
  },
  {
    "bioguide_id": "B001261",
    "cspan_id": 1024777
  },
  {
    "bioguide_id": "W000437",
    "cspan_id": 18203
  },
  {
    "bioguide_id": "A000360",
    "cspan_id": 5
  },
  {
    "bioguide_id": "C000567",
    "cspan_id": 1200
  },
  {
    "bioguide_id": "C001035",
    "cspan_id": 45738
  },
  {
    "bioguide_id": "C001056",
    "cspan_id": 93131
  },
  {
    "bioguide_id": "D000563",
    "cspan_id": 6741
  },
  {
    "bioguide_id": "E000285",
    "cspan_id": 45824
  },
  {
    "bioguide_id": "G000359",
    "cspan_id": 36782
  },
  {
    "bioguide_id": "I000024",
    "cspan_id": 5619
  },
  {
    "bioguide_id": "M000355",
    "cspan_id": 2351
  },
  {
    "bioguide_id": "M001176",
    "cspan_id": 1029842
  },
  {
    "bioguide_id": "R000122",
    "cspan_id": 24239
  },
  {
    "bioguide_id": "R000584",
    "cspan_id": 1020034
  },
  {
    "bioguide_id": "R000307",
    "cspan_id": 16354
  },
  {
    "bioguide_id": "S001141",
    "cspan_id": 44441
  },
  {
    "bioguide_id": "S001181",
    "cspan_id": 22850
  },
  {
    "bioguide_id": "U000039",
    "cspan_id": 10075
  },
  {
    "bioguide_id": "W000805",
    "cspan_id": 7630
  },
  {
    "bioguide_id": "G000555",
    "cspan_id": 1022862
  },
  {
    "bioguide_id": "F000457",
    "cspan_id": 23334
  },
  {
    "bioguide_id": "C001088",
    "cspan_id": 9269028
  },
  {
    "bioguide_id": "M001183",
    "cspan_id": 62864
  },
  {
    "bioguide_id": "A000055",
    "cspan_id": 45516
  },
  {
    "bioguide_id": "A000367",
    "cspan_id": 1033767
  },
  {
    "bioguide_id": "B001230",
    "cspan_id": 57884
  },
  {
    "bioguide_id": "B001269",
    "cspan_id": 29618
  },
  {
    "bioguide_id": "B000213",
    "cspan_id": 5248
  },
  {
    "bioguide_id": "B001270",
    "cspan_id": 62502
  },
  {
    "bioguide_id": "B000287",
    "cspan_id": 26567
  },
  {
    "bioguide_id": "B001267",
    "cspan_id": 1031622
  },
  {
    "bioguide_id": "B001257",
    "cspan_id": 1022873
  },
  {
    "bioguide_id": "B001250",
    "cspan_id": 1003621
  },
  {
    "bioguide_id": "B000490",
    "cspan_id": 26194
  },
  {
    "bioguide_id": "B001273",
    "cspan_id": 9268964
  },
  {
    "bioguide_id": "B001243",
    "cspan_id": 31226
  },
  {
    "bioguide_id": "B000574",
    "cspan_id": 43809
  },
  {
    "bioguide_id": "B001277",
    "cspan_id": 21799
  },
  {
    "bioguide_id": "B000575",
    "cspan_id": 45465
  },
  {
    "bioguide_id": "B001236",
    "cspan_id": 92069
  },
  {
    "bioguide_id": "B001245",
    "cspan_id": 1003568
  },
  {
    "bioguide_id": "B000755",
    "cspan_id": 45749
  },
  {
    "bioguide_id": "B001227",
    "cspan_id": 55227
  },
  {
    "bioguide_id": "B001274",
    "cspan_id": 94888
  },
  {
    "bioguide_id": "B001260",
    "cspan_id": 1021626
  },
  {
    "bioguide_id": "B001275",
    "cspan_id": 61837
  },
  {
    "bioguide_id": "B001248",
    "cspan_id": 1003620
  },
  {
    "bioguide_id": "B001135",
    "cspan_id": 31054
  },
  {
    "bioguide_id": "B001251",
    "cspan_id": 1013540
  },
  {
    "bioguide_id": "C000059",
    "cspan_id": 26709
  },
  {
    "bioguide_id": "C001047",
    "cspan_id": 83737
  },
  {
    "bioguide_id": "C001037",
    "cspan_id": 56760
  },
  {
    "bioguide_id": "C001072",
    "cspan_id": 1027364
  },
  {
    "bioguide_id": "C001051",
    "cspan_id": 1004257
  },
  {
    "bioguide_id": "C001075",
    "cspan_id": 1030546
  },
  {
    "bioguide_id": "C001066",
    "cspan_id": 1022874
  },
  {
    "bioguide_id": "C000266",
    "cspan_id": 36705
  },
  {
    "bioguide_id": "C001076",
    "cspan_id": 1031362
  },
  {
    "bioguide_id": "C001080",
    "cspan_id": 92573
  },
  {
    "bioguide_id": "C001084",
    "cspan_id": 1033865
  },
  {
    "bioguide_id": "C001067",
    "cspan_id": 1022875
  },
  {
    "bioguide_id": "C001049",
    "cspan_id": 88332
  },
  {
    "bioguide_id": "C001061",
    "cspan_id": 10933
  },
  {
    "bioguide_id": "C000537",
    "cspan_id": 21607
  },
  {
    "bioguide_id": "C001077",
    "cspan_id": 1031340
  },
  {
    "bioguide_id": "C001068",
    "cspan_id": 1022876
  },
  {
    "bioguide_id": "C001053",
    "cspan_id": 1003609
  },
  {
    "bioguide_id": "C001062",
    "cspan_id": 1004595
  },
  {
    "bioguide_id": "C001078",
    "cspan_id": 1015936
  },
  {
    "bioguide_id": "C000714",
    "cspan_id": 1824
  },
  {
    "bioguide_id": "C000754",
    "cspan_id": 1201
  },
  {
    "bioguide_id": "C001059",
    "cspan_id": 19599
  },
  {
    "bioguide_id": "C001069",
    "cspan_id": 1021284
  },
  {
    "bioguide_id": "C000880",
    "cspan_id": 26440
  },
  {
    "bioguide_id": "C001087",
    "cspan_id": 623259
  },
  {
    "bioguide_id": "C001038",
    "cspan_id": 57880
  },
  {
    "bioguide_id": "C001063",
    "cspan_id": 1013062
  },
  {
    "bioguide_id": "C001048",
    "cspan_id": 88078
  },
  {
    "bioguide_id": "C000984",
    "cspan_id": 43300
  },
  {
    "bioguide_id": "D000096",
    "cspan_id": 44325
  },
  {
    "bioguide_id": "D000598",
    "cspan_id": 85595
  },
  {
    "bioguide_id": "D000191",
    "cspan_id": 6068
  },
  {
    "bioguide_id": "D000197",
    "cspan_id": 90293
  },
  {
    "bioguide_id": "D000216",
    "cspan_id": 19040
  },
  {
    "bioguide_id": "D000612",
    "cspan_id": 623287
  },
  {
    "bioguide_id": "D000604",
    "cspan_id": 1011395
  },
  {
    "bioguide_id": "D000616",
    "cspan_id": 623517
  },
  {
    "bioguide_id": "D000610",
    "cspan_id": 9267613
  },
  {
    "bioguide_id": "D000600",
    "cspan_id": 1003562
  },
  {
    "bioguide_id": "D000399",
    "cspan_id": 36810
  },
  {
    "bioguide_id": "D000607",
    "cspan_id": 1012000
  },
  {
    "bioguide_id": "D000482",
    "cspan_id": 36774
  },
  {
    "bioguide_id": "D000614",
    "cspan_id": 623570
  },
  {
    "bioguide_id": "D000615",
    "cspan_id": 62713
  },
  {
    "bioguide_id": "D000533",
    "cspan_id": 6114
  },
  {
    "bioguide_id": "E000288",
    "cspan_id": 1022556
  },
  {
    "bioguide_id": "E000179",
    "cspan_id": 6109
  },
  {
    "bioguide_id": "E000215",
    "cspan_id": 26130
  },
  {
    "bioguide_id": "F000460",
    "cspan_id": 95180
  },
  {
    "bioguide_id": "F000444",
    "cspan_id": 87582
  },
  {
    "bioguide_id": "F000459",
    "cspan_id": 95146
  },
  {
    "bioguide_id": "F000461",
    "cspan_id": 623540
  },
  {
    "bioguide_id": "F000449",
    "cspan_id": 1013049
  },
  {
    "bioguide_id": "F000450",
    "cspan_id": 1013052
  },
  {
    "bioguide_id": "F000448",
    "cspan_id": 1003550
  },
  {
    "bioguide_id": "F000372",
    "cspan_id": 37781
  },
  {
    "bioguide_id": "F000455",
    "cspan_id": 1030928
  },
  {
    "bioguide_id": "G000559",
    "cspan_id": 18413
  },
  {
    "bioguide_id": "G000562",
    "cspan_id": 623308
  },
  {
    "bioguide_id": "G000563",
    "cspan_id": 1033844
  },
  {
    "bioguide_id": "G000552",
    "cspan_id": 1011394
  },
  {
    "bioguide_id": "G000289",
    "cspan_id": 27025
  },
  {
    "bioguide_id": "G000565",
    "cspan_id": 62470
  },
  {
    "bioguide_id": "G000566",
    "cspan_id": 9268950
  },
  {
    "bioguide_id": "G000377",
    "cspan_id": 45709
  },
  {
    "bioguide_id": "G000386",
    "cspan_id": 1167
  },
  {
    "bioguide_id": "G000546",
    "cspan_id": 89873
  },
  {
    "bioguide_id": "G000560",
    "cspan_id": 11519
  },
  {
    "bioguide_id": "G000553",
    "cspan_id": 1012969
  },
  {
    "bioguide_id": "G000410",
    "cspan_id": 26156
  },
  {
    "bioguide_id": "G000568",
    "cspan_id": 62766
  },
  {
    "bioguide_id": "G000551",
    "cspan_id": 1003551
  },
  {
    "bioguide_id": "G000558",
    "cspan_id": 1031343
  },
  {
    "bioguide_id": "G000535",
    "cspan_id": 23476
  },
  {
    "bioguide_id": "H001045",
    "cspan_id": 1031347
  },
  {
    "bioguide_id": "H001052",
    "cspan_id": 1033464
  },
  {
    "bioguide_id": "H001053",
    "cspan_id": 95050
  },
  {
    "bioguide_id": "H000324",
    "cspan_id": 1858
  },
  {
    "bioguide_id": "H001046",
    "cspan_id": 1030686
  },
  {
    "bioguide_id": "H001036",
    "cspan_id": 1003619
  },
  {
    "bioguide_id": "H001056",
    "cspan_id": 95198
  },
  {
    "bioguide_id": "H001038",
    "cspan_id": 1013050
  },
  {
    "bioguide_id": "H001047",
    "cspan_id": 1031341
  },
  {
    "bioguide_id": "H001042",
    "cspan_id": 91216
  },
  {
    "bioguide_id": "H001061",
    "cspan_id": 85233
  },
  {
    "bioguide_id": "H000874",
    "cspan_id": 1919
  },
  {
    "bioguide_id": "H001058",
    "cspan_id": 1033765
  },
  {
    "bioguide_id": "H001059",
    "cspan_id": 62575
  },
  {
    "bioguide_id": "H001048",
    "cspan_id": 1032398
  },
  {
    "bioguide_id": "I000055",
    "cspan_id": 59135
  },
  {
    "bioguide_id": "I000056",
    "cspan_id": 90066
  },
  {
    "bioguide_id": "J000032",
    "cspan_id": 36819
  },
  {
    "bioguide_id": "J000290",
    "cspan_id": 1030550
  },
  {
    "bioguide_id": "J000292",
    "cspan_id": 623472
  },
  {
    "bioguide_id": "J000126",
    "cspan_id": 23352
  },
  {
    "bioguide_id": "J000288",
    "cspan_id": 1020576
  },
  {
    "bioguide_id": "J000293",
    "cspan_id": 62835
  },
  {
    "bioguide_id": "J000174",
    "cspan_id": 18711
  },
  {
    "bioguide_id": "J000255",
    "cspan_id": 36693
  },
  {
    "bioguide_id": "J000289",
    "cspan_id": 1022879
  },
  {
    "bioguide_id": "K000009",
    "cspan_id": 1458
  },
  {
    "bioguide_id": "K000375",
    "cspan_id": 61856
  },
  {
    "bioguide_id": "K000376",
    "cspan_id": 62696
  },
  {
    "bioguide_id": "K000188",
    "cspan_id": 45870
  },
  {
    "bioguide_id": "K000210",
    "cspan_id": 26487
  },
  {
    "bioguide_id": "K000362",
    "cspan_id": 1003590
  },
  {
    "bioguide_id": "K000378",
    "cspan_id": 62573
  },
  {
    "bioguide_id": "L000573",
    "cspan_id": 94987
  },
  {
    "bioguide_id": "L000564",
    "cspan_id": 1022846
  },
  {
    "bioguide_id": "L000567",
    "cspan_id": 1031349
  },
  {
    "bioguide_id": "L000559",
    "cspan_id": 86608
  },
  {
    "bioguide_id": "L000575",
    "cspan_id": 1033847
  },
  {
    "bioguide_id": "L000560",
    "cspan_id": 86610
  },
  {
    "bioguide_id": "L000557",
    "cspan_id": 36596
  },
  {
    "bioguide_id": "L000566",
    "cspan_id": 1028071
  },
  {
    "bioguide_id": "L000174",
    "cspan_id": 1552
  },
  {
    "bioguide_id": "L000551",
    "cspan_id": 54579
  },
  {
    "bioguide_id": "L000577",
    "cspan_id": 9267977
  },
  {
    "bioguide_id": "L000263",
    "cspan_id": 251
  },
  {
    "bioguide_id": "L000287",
    "cspan_id": 2528
  },
  {
    "bioguide_id": "L000563",
    "cspan_id": 1013046
  },
  {
    "bioguide_id": "L000554",
    "cspan_id": 30867
  },
  {
    "bioguide_id": "L000565",
    "cspan_id": 1022883
  },
  {
    "bioguide_id": "L000397",
    "cspan_id": 36520
  },
  {
    "bioguide_id": "L000576",
    "cspan_id": 61880
  },
  {
    "bioguide_id": "L000480",
    "cspan_id": 6110
  },
  {
    "bioguide_id": "L000491",
    "cspan_id": 35692
  },
  {
    "bioguide_id": "L000569",
    "cspan_id": 1031348
  },
  {
    "bioguide_id": "L000570",
    "cspan_id": 1031351
  },
  {
    "bioguide_id": "L000562",
    "cspan_id": 1000222
  },
  {
    "bioguide_id": "M000087",
    "cspan_id": 26162
  },
  {
    "bioguide_id": "M001158",
    "cspan_id": 1013059
  },
  {
    "bioguide_id": "M001179",
    "cspan_id": 95129
  },
  {
    "bioguide_id": "M000133",
    "cspan_id": 260
  },
  {
    "bioguide_id": "M001163",
    "cspan_id": 26602
  },
  {
    "bioguide_id": "M000303",
    "cspan_id": 7476
  },
  {
    "bioguide_id": "M001165",
    "cspan_id": 85231
  },
  {
    "bioguide_id": "M001157",
    "cspan_id": 1013056
  },
  {
    "bioguide_id": "M001177",
    "cspan_id": 30359
  },
  {
    "bioguide_id": "M001143",
    "cspan_id": 86670
  },
  {
    "bioguide_id": "M000312",
    "cspan_id": 45976
  },
  {
    "bioguide_id": "M001156",
    "cspan_id": 1007062
  },
  {
    "bioguide_id": "M001180",
    "cspan_id": 9269013
  },
  {
    "bioguide_id": "M001159",
    "cspan_id": 1013063
  },
  {
    "bioguide_id": "M001166",
    "cspan_id": 1021667
  },
  {
    "bioguide_id": "M001181",
    "cspan_id": 1033856
  },
  {
    "bioguide_id": "M001137",
    "cspan_id": 53469
  },
  {
    "bioguide_id": "M001160",
    "cspan_id": 42548
  },
  {
    "bioguide_id": "M000934",
    "cspan_id": 45469
  },
  {
    "bioguide_id": "M001182",
    "cspan_id": 623510
  },
  {
    "bioguide_id": "M001153",
    "cspan_id": 1004138
  },
  {
    "bioguide_id": "M001169",
    "cspan_id": 1021270
  },
  {
    "bioguide_id": "M001151",
    "cspan_id": 1003612
  },
  {
    "bioguide_id": "M001111",
    "cspan_id": 25277
  },
  {
    "bioguide_id": "N000002",
    "cspan_id": 26159
  },
  {
    "bioguide_id": "N000179",
    "cspan_id": 57873
  },
  {
    "bioguide_id": "N000015",
    "cspan_id": 6103
  },
  {
    "bioguide_id": "N000184",
    "cspan_id": 62717
  },
  {
    "bioguide_id": "N000147",
    "cspan_id": 882
  },
  {
    "bioguide_id": "N000181",
    "cspan_id": 1003553
  },
  {
    "bioguide_id": "O000168",
    "cspan_id": 1031361
  },
  {
    "bioguide_id": "P000601",
    "cspan_id": 61886
  },
  {
    "bioguide_id": "P000034",
    "cspan_id": 6107
  },
  {
    "bioguide_id": "P000096",
    "cspan_id": 45543
  },
  {
    "bioguide_id": "P000603",
    "cspan_id": 9265241
  },
  {
    "bioguide_id": "P000594",
    "cspan_id": 1030000
  },
  {
    "bioguide_id": "P000588",
    "cspan_id": 12063
  },
  {
    "bioguide_id": "P000197",
    "cspan_id": 6153
  },
  {
    "bioguide_id": "P000593",
    "cspan_id": 1021382
  },
  {
    "bioguide_id": "P000595",
    "cspan_id": 50199
  },
  {
    "bioguide_id": "P000258",
    "cspan_id": 23978
  },
  {
    "bioguide_id": "P000597",
    "cspan_id": 1002167
  },
  {
    "bioguide_id": "P000592",
    "cspan_id": 1011398
  },
  {
    "bioguide_id": "P000598",
    "cspan_id": 1031300
  },
  {
    "bioguide_id": "P000602",
    "cspan_id": 623387
  },
  {
    "bioguide_id": "P000449",
    "cspan_id": 31819
  },
  {
    "bioguide_id": "P000599",
    "cspan_id": 88959
  },
  {
    "bioguide_id": "P000523",
    "cspan_id": 6748
  },
  {
    "bioguide_id": "P000591",
    "cspan_id": 1013044
  },
  {
    "bioguide_id": "Q000023",
    "cspan_id": 9263344
  },
  {
    "bioguide_id": "R000585",
    "cspan_id": 623468
  },
  {
    "bioguide_id": "R000578",
    "cspan_id": 1013064
  },
  {
    "bioguide_id": "R000586",
    "cspan_id": 62686
  },
  {
    "bioguide_id": "R000588",
    "cspan_id": 62391
  },
  {
    "bioguide_id": "R000591",
    "cspan_id": 61712
  },
  {
    "bioguide_id": "R000582",
    "cspan_id": 1031360
  },
  {
    "bioguide_id": "R000395",
    "cspan_id": 6739
  },
  {
    "bioguide_id": "R000575",
    "cspan_id": 1014740
  },
  {
    "bioguide_id": "R000409",
    "cspan_id": 5590
  },
  {
    "bioguide_id": "R000592",
    "cspan_id": 61832
  },
  {
    "bioguide_id": "R000583",
    "cspan_id": 1030486
  },
  {
    "bioguide_id": "R000435",
    "cspan_id": 3206
  },
  {
    "bioguide_id": "R000580",
    "cspan_id": 1021912
  },
  {
    "bioguide_id": "R000593",
    "cspan_id": 62532
  },
  {
    "bioguide_id": "R000486",
    "cspan_id": 26136
  },
  {
    "bioguide_id": "R000487",
    "cspan_id": 28461
  },
  {
    "bioguide_id": "R000595",
    "cspan_id": 87599
  },
  {
    "bioguide_id": "R000576",
    "cspan_id": 49155
  },
  {
    "bioguide_id": "R000515",
    "cspan_id": 26127
  },
  {
    "bioguide_id": "R000570",
    "cspan_id": 57970
  },
  {
    "bioguide_id": "R000577",
    "cspan_id": 1003608
  },
  {
    "bioguide_id": "S001177",
    "cspan_id": 1031366
  },
  {
    "bioguide_id": "S001168",
    "cspan_id": 1022884
  },
  {
    "bioguide_id": "S001176",
    "cspan_id": 1015311
  },
  {
    "bioguide_id": "S001145",
    "cspan_id": 57874
  },
  {
    "bioguide_id": "S001150",
    "cspan_id": 90167
  },
  {
    "bioguide_id": "S001180",
    "cspan_id": 1031358
  },
  {
    "bioguide_id": "S000148",
    "cspan_id": 5929
  },
  {
    "bioguide_id": "S001183",
    "cspan_id": 5205
  },
  {
    "bioguide_id": "S001189",
    "cspan_id": 623344
  },
  {
    "bioguide_id": "S001157",
    "cspan_id": 1003567
  },
  {
    "bioguide_id": "S000185",
    "cspan_id": 25888
  },
  {
    "bioguide_id": "S001184",
    "cspan_id": 623506
  },
  {
    "bioguide_id": "S000244",
    "cspan_id": 1507
  },
  {
    "bioguide_id": "S000248",
    "cspan_id": 14306
  },
  {
    "bioguide_id": "S000250",
    "cspan_id": 36807
  },
  {
    "bioguide_id": "S001185",
    "cspan_id": 623257
  },
  {
    "bioguide_id": "S000320",
    "cspan_id": 1859
  },
  {
    "bioguide_id": "S000344",
    "cspan_id": 45124
  },
  {
    "bioguide_id": "S000364",
    "cspan_id": 30623
  },
  {
    "bioguide_id": "S001154",
    "cspan_id": 89108
  },
  {
    "bioguide_id": "S001148",
    "cspan_id": 57889
  },
  {
    "bioguide_id": "S001165",
    "cspan_id": 1022293
  },
  {
    "bioguide_id": "S000480",
    "cspan_id": 1755
  },
  {
    "bioguide_id": "S000510",
    "cspan_id": 44329
  },
  {
    "bioguide_id": "S001172",
    "cspan_id": 1022845
  },
  {
    "bioguide_id": "S000522",
    "cspan_id": 6411
  },
  {
    "bioguide_id": "S000583",
    "cspan_id": 8884
  },
  {
    "bioguide_id": "S001175",
    "cspan_id": 1027627
  },
  {
    "bioguide_id": "S001187",
    "cspan_id": 62320
  },
  {
    "bioguide_id": "S001156",
    "cspan_id": 1003554
  },
  {
    "bioguide_id": "T000193",
    "cspan_id": 7304
  },
  {
    "bioguide_id": "T000460",
    "cspan_id": 57872
  },
  {
    "bioguide_id": "T000467",
    "cspan_id": 1031359
  },
  {
    "bioguide_id": "T000238",
    "cspan_id": 36814
  },
  {
    "bioguide_id": "T000250",
    "cspan_id": 45552
  },
  {
    "bioguide_id": "T000462",
    "cspan_id": 88155
  },
  {
    "bioguide_id": "T000470",
    "cspan_id": 60384
  },
  {
    "bioguide_id": "T000469",
    "cspan_id": 1031353
  },
  {
    "bioguide_id": "T000461",
    "cspan_id": 7958
  },
  {
    "bioguide_id": "T000465",
    "cspan_id": 21764
  },
  {
    "bioguide_id": "T000463",
    "cspan_id": 1003607
  },
  {
    "bioguide_id": "U000031",
    "cspan_id": 12127
  },
  {
    "bioguide_id": "V000128",
    "cspan_id": 20756
  },
  {
    "bioguide_id": "V000081",
    "cspan_id": 26160
  },
  {
    "bioguide_id": "V000108",
    "cspan_id": 6785
  },
  {
    "bioguide_id": "W000798",
    "cspan_id": 1022844
  },
  {
    "bioguide_id": "W000791",
    "cspan_id": 57892
  },
  {
    "bioguide_id": "W000799",
    "cspan_id": 1018510
  },
  {
    "bioguide_id": "W000797",
    "cspan_id": 86882
  },
  {
    "bioguide_id": "W000187",
    "cspan_id": 1953
  },
  {
    "bioguide_id": "W000806",
    "cspan_id": 30504
  },
  {
    "bioguide_id": "W000800",
    "cspan_id": 1019990
  },
  {
    "bioguide_id": "W000795",
    "cspan_id": 1002567
  },
  {
    "bioguide_id": "W000808",
    "cspan_id": 87016
  },
  {
    "bioguide_id": "W000804",
    "cspan_id": 1028089
  },
  {
    "bioguide_id": "W000809",
    "cspan_id": 1033625
  },
  {
    "bioguide_id": "W000810",
    "cspan_id": 623342
  },
  {
    "bioguide_id": "W000779",
    "cspan_id": 1962
  },
  {
    "bioguide_id": "Y000062",
    "cspan_id": 1021662
  },
  {
    "bioguide_id": "Y000063",
    "cspan_id": 61843
  },
  {
    "bioguide_id": "Y000033",
    "cspan_id": 1897
  },
  {
    "bioguide_id": "Y000064",
    "cspan_id": 1033743
  },
  {
    "bioguide_id": "H001041",
    "cspan_id": 1012368
  },
  {
    "bioguide_id": "A000369",
    "cspan_id": 62817
  },
  {
    "bioguide_id": "B001278",
    "cspan_id": 63966
  },
  {
    "bioguide_id": "D000617",
    "cspan_id": 1033929
  },
  {
    "bioguide_id": "M001184",
    "cspan_id": 79951
  },
  {
    "bioguide_id": "P000604",
    "cspan_id": 65639
  },
  {
    "bioguide_id": "S001194",
    "cspan_id": 87784
  },
  {
    "bioguide_id": "F000454",
    "cspan_id": 1027346
  },
  {
    "bioguide_id": "T000468",
    "cspan_id": 1021622
  },
  {
    "bioguide_id": "C001095",
    "cspan_id": 63928
  },
  {
    "bioguide_id": "S001191",
    "cspan_id": 68489
  },
  {
    "bioguide_id": "L000578",
    "cspan_id": 68493
  },
  {
    "bioguide_id": "H001068",
    "cspan_id": 622431
  },
  {
    "bioguide_id": "B001287",
    "cspan_id": 1033636
  },
  {
    "bioguide_id": "C001094",
    "cspan_id": 68278
  },
  {
    "bioguide_id": "S001193",
    "cspan_id": 79729
  },
  {
    "bioguide_id": "V000129",
    "cspan_id": 623702
  },
  {
    "bioguide_id": "B001285",
    "cspan_id": 79783
  },
  {
    "bioguide_id": "C001097",
    "cspan_id": 63934
  },
  {
    "bioguide_id": "R000599",
    "cspan_id": 79727
  },
  {
    "bioguide_id": "T000472",
    "cspan_id": 2737
  },
  {
    "bioguide_id": "L000579",
    "cspan_id": 93815
  },
  {
    "bioguide_id": "V000130",
    "cspan_id": 8297
  },
  {
    "bioguide_id": "P000608",
    "cspan_id": 79661
  },
  {
    "bioguide_id": "E000293",
    "cspan_id": 1020906
  },
  {
    "bioguide_id": "Y000065",
    "cspan_id": 63943
  },
  {
    "bioguide_id": "D000621",
    "cspan_id": 79744
  },
  {
    "bioguide_id": "F000462",
    "cspan_id": 623714
  },
  {
    "bioguide_id": "C001093",
    "cspan_id": 79719
  },
  {
    "bioguide_id": "G000571",
    "cspan_id": 1025291
  },
  {
    "bioguide_id": "D000622",
    "cspan_id": 94484
  },
  {
    "bioguide_id": "D000619",
    "cspan_id": 68337
  },
  {
    "bioguide_id": "B001286",
    "cspan_id": 63949
  },
  {
    "bioguide_id": "W000813",
    "cspan_id": 95005
  },
  {
    "bioguide_id": "B001284",
    "cspan_id": 623720
  },
  {
    "bioguide_id": "M001189",
    "cspan_id": 11245
  },
  {
    "bioguide_id": "B001282",
    "cspan_id": 61848
  },
  {
    "bioguide_id": "W000817",
    "cspan_id": 1023023
  },
  {
    "bioguide_id": "K000379",
    "cspan_id": 79948
  },
  {
    "bioguide_id": "D000620",
    "cspan_id": 68432
  },
  {
    "bioguide_id": "K000383",
    "cspan_id": 37413
  },
  {
    "bioguide_id": "K000380",
    "cspan_id": 623723
  },
  {
    "bioguide_id": "N000127",
    "cspan_id": 1001760
  },
  {
    "bioguide_id": "W000812",
    "cspan_id": 82702
  },
  {
    "bioguide_id": "D000618",
    "cspan_id": 1034037
  },
  {
    "bioguide_id": "H001067",
    "cspan_id": 79622
  },
  {
    "bioguide_id": "P000606",
    "cspan_id": 9265861
  },
  {
    "bioguide_id": "M001187",
    "cspan_id": 79621
  },
  {
    "bioguide_id": "H001065",
    "cspan_id": 623728
  },
  {
    "bioguide_id": "H001069",
    "cspan_id": 95414
  },
  {
    "bioguide_id": "C001096",
    "cspan_id": 7600
  },
  {
    "bioguide_id": "F000463",
    "cspan_id": 1034067
  },
  {
    "bioguide_id": "K000382",
    "cspan_id": 62650
  },
  {
    "bioguide_id": "L000580",
    "cspan_id": 94791
  },
  {
    "bioguide_id": "M001188",
    "cspan_id": 68411
  },
  {
    "bioguide_id": "J000294",
    "cspan_id": 79612
  },
  {
    "bioguide_id": "M001185",
    "cspan_id": 79760
  },
  {
    "bioguide_id": "C001092",
    "cspan_id": 94144
  },
  {
    "bioguide_id": "W000815",
    "cspan_id": 1034044
  },
  {
    "bioguide_id": "B001281",
    "cspan_id": 67294
  },
  {
    "bioguide_id": "J000295",
    "cspan_id": 68561
  },
  {
    "bioguide_id": "B001283",
    "cspan_id": 79705
  },
  {
    "bioguide_id": "M001190",
    "cspan_id": 1034045
  },
  {
    "bioguide_id": "P000605",
    "cspan_id": 79873
  },
  {
    "bioguide_id": "R000598",
    "cspan_id": 61949
  },
  {
    "bioguide_id": "C001090",
    "cspan_id": 79865
  },
  {
    "bioguide_id": "R000597",
    "cspan_id": 79473
  },
  {
    "bioguide_id": "C001098",
    "cspan_id": 1019953
  },
  {
    "bioguide_id": "W000814",
    "cspan_id": 79698
  },
  {
    "bioguide_id": "O000170",
    "cspan_id": 79697
  },
  {
    "bioguide_id": "C001091",
    "cspan_id": 63974
  },
  {
    "bioguide_id": "W000816",
    "cspan_id": 623742
  },
  {
    "bioguide_id": "V000131",
    "cspan_id": 79466
  },
  {
    "bioguide_id": "V000132",
    "cspan_id": 95434
  },
  {
    "bioguide_id": "S001192",
    "cspan_id": 68466
  },
  {
    "bioguide_id": "K000384",
    "cspan_id": 49219
  },
  {
    "bioguide_id": "K000381",
    "cspan_id": 68310
  },
  {
    "bioguide_id": "H001064",
    "cspan_id": 9269006
  },
  {
    "bioguide_id": "P000607",
    "cspan_id": 79688
  },
  {
    "bioguide_id": "K000385",
    "cspan_id": 70399
  },
  {
    "bioguide_id": "S000051",
    "cspan_id": 6513
  },
  {
    "bioguide_id": "S001195",
    "cspan_id": 71083
  },
  {
    "bioguide_id": "B001288",
    "cspan_id": 84679
  },
  {
    "bioguide_id": "C001101",
    "cspan_id": 73178
  },
  {
    "bioguide_id": "B001289",
    "cspan_id": 73486
  },
  {
    "bioguide_id": "B001290",
    "cspan_id": 75248
  },
  {
    "bioguide_id": "N000188",
    "cspan_id": 76311
  },
  {
    "bioguide_id": "A000370",
    "cspan_id": 76386
  },
  {
    "bioguide_id": "P000609",
    "cspan_id": ""
  },
  {
    "bioguide_id": "H001072",
    "cspan_id": ""
  },
  {
    "bioguide_id": "W000821",
    "cspan_id": ""
  },
  {
    "bioguide_id": "M001197",
    "cspan_id": ""
  },
  {
    "bioguide_id": "G000574",
    "cspan_id": ""
  },
  {
    "bioguide_id": "D000623",
    "cspan_id": ""
  },
  {
    "bioguide_id": "K000387",
    "cspan_id": ""
  },
  {
    "bioguide_id": "A000371",
    "cspan_id": ""
  },
  {
    "bioguide_id": "L000582",
    "cspan_id": ""
  },
  {
    "bioguide_id": "T000474",
    "cspan_id": ""
  },
  {
    "bioguide_id": "W000820",
    "cspan_id": ""
  },
  {
    "bioguide_id": "B001297",
    "cspan_id": ""
  },
  {
    "bioguide_id": "C001107",
    "cspan_id": ""
  },
  {
    "bioguide_id": "C001103",
    "cspan_id": ""
  },
  {
    "bioguide_id": "H001071",
    "cspan_id": ""
  },
  {
    "bioguide_id": "L000583",
    "cspan_id": ""
  },
  {
    "bioguide_id": "A000372",
    "cspan_id": ""
  },
  {
    "bioguide_id": "B001294",
    "cspan_id": ""
  },
  {
    "bioguide_id": "Y000066",
    "cspan_id": ""
  },
  {
    "bioguide_id": "B001295",
    "cspan_id": ""
  },
  {
    "bioguide_id": "A000374",
    "cspan_id": ""
  },
  {
    "bioguide_id": "G000577",
    "cspan_id": ""
  },
  {
    "bioguide_id": "M001196",
    "cspan_id": ""
  },
  {
    "bioguide_id": "P000611",
    "cspan_id": ""
  },
  {
    "bioguide_id": "M001194",
    "cspan_id": ""
  },
  {
    "bioguide_id": "B001293",
    "cspan_id": ""
  },
  {
    "bioguide_id": "T000475",
    "cspan_id": ""
  },
  {
    "bioguide_id": "D000624",
    "cspan_id": ""
  },
  {
    "bioguide_id": "L000581",
    "cspan_id": ""
  },
  {
    "bioguide_id": "E000294",
    "cspan_id": ""
  },
  {
    "bioguide_id": "Z000018",
    "cspan_id": ""
  },
  {
    "bioguide_id": "R000603",
    "cspan_id": ""
  },
  {
    "bioguide_id": "M001193",
    "cspan_id": ""
  },
  {
    "bioguide_id": "W000822",
    "cspan_id": ""
  },
  {
    "bioguide_id": "Z000017",
    "cspan_id": ""
  },
  {
    "bioguide_id": "R000602",
    "cspan_id": ""
  },
  {
    "bioguide_id": "S001196",
    "cspan_id": ""
  },
  {
    "bioguide_id": "K000386",
    "cspan_id": ""
  },
  {
    "bioguide_id": "R000604",
    "cspan_id": ""
  },
  {
    "bioguide_id": "C001106",
    "cspan_id": ""
  },
  {
    "bioguide_id": "B001296",
    "cspan_id": ""
  },
  {
    "bioguide_id": "R000601",
    "cspan_id": ""
  },
  {
    "bioguide_id": "H001073",
    "cspan_id": ""
  },
  {
    "bioguide_id": "B001291",
    "cspan_id": ""
  },
  {
    "bioguide_id": "L000584",
    "cspan_id": ""
  },
  {
    "bioguide_id": "B001292",
    "cspan_id": ""
  },
  {
    "bioguide_id": "C001105",
    "cspan_id": ""
  },
  {
    "bioguide_id": "P000610",
    "cspan_id": ""
  },
  {
    "bioguide_id": "N000189",
    "cspan_id": ""
  },
  {
    "bioguide_id": "G000576",
    "cspan_id": ""
  },
  {
    "bioguide_id": "M001195",
    "cspan_id": ""
  },
  {
    "bioguide_id": "J000297",
    "cspan_id": ""
  },
  {
    "bioguide_id": "R000600",
    "cspan_id": ""
  },
  {
    "bioguide_id": "S001198",
    "cspan_id": ""
  },
  {
    "bioguide_id": "P000612",
    "cspan_id": ""
  },
  {
    "bioguide_id": "E000295",
    "cspan_id": ""
  },
  {
    "bioguide_id": "T000476",
    "cspan_id": ""
  },
  {
    "bioguide_id": "R000605",
    "cspan_id": ""
  },
  {
    "bioguide_id": "W000819",
    "cspan_id": ""
  },
  {
    "bioguide_id": "S001197",
    "cspan_id": ""
  },
  {
    "bioguide_id": "D000625",
    "cspan_id": ""
  },
  {
    "bioguide_id": "K000388",
    "cspan_id": ""
  },
  {
    "bioguide_id": "L000585",
    "cspan_id": ""
  },
  {
    "bioguide_id": "D000626",
    "cspan_id": ""
  },
  {
    "bioguide_id": "H001050",
    "cspan_id": 61258
  },
  {
    "bioguide_id": "C001108",
    "cspan_id": 76619
  },
  {
    "bioguide_id": "E000296",
    "cspan_id": 56729
  },
  {
    "bioguide_id": "H001075",
    "cspan_id": ""
  },
  {
    "bioguide_id": "K000393",
    "cspan_id": ""
  },
  {
    "bioguide_id": "H001076",
    "cspan_id": ""
  },
  {
    "bioguide_id": "C001113",
    "cspan_id": ""
  },
  {
    "bioguide_id": "S001190",
    "cspan_id": 63948
  },
  {
    "bioguide_id": "S001170",
    "cspan_id": 1021773
  },
  {
    "bioguide_id": "O000171",
    "cspan_id": ""
  },
  {
    "bioguide_id": "B001302",
    "cspan_id": ""
  },
  {
    "bioguide_id": "K000389",
    "cspan_id": ""
  },
  {
    "bioguide_id": "P000613",
    "cspan_id": ""
  },
  {
    "bioguide_id": "C001112",
    "cspan_id": ""
  },
  {
    "bioguide_id": "B001300",
    "cspan_id": ""
  },
  {
    "bioguide_id": "C001110",
    "cspan_id": ""
  },
  {
    "bioguide_id": "B001303",
    "cspan_id": ""
  },
  {
    "bioguide_id": "G000578",
    "cspan_id": ""
  },
  {
    "bioguide_id": "D000628",
    "cspan_id": ""
  },
  {
    "bioguide_id": "R000609",
    "cspan_id": ""
  },
  {
    "bioguide_id": "L000586",
    "cspan_id": ""
  },
  {
    "bioguide_id": "M001202",
    "cspan_id": ""
  },
  {
    "bioguide_id": "S001200",
    "cspan_id": ""
  },
  {
    "bioguide_id": "D000627",
    "cspan_id": ""
  },
  {
    "bioguide_id": "C001111",
    "cspan_id": ""
  },
  {
    "bioguide_id": "M001199",
    "cspan_id": ""
  },
  {
    "bioguide_id": "R000607",
    "cspan_id": ""
  },
  {
    "bioguide_id": "F000465",
    "cspan_id": ""
  },
  {
    "bioguide_id": "K000391",
    "cspan_id": ""
  },
  {
    "bioguide_id": "B001299",
    "cspan_id": ""
  },
  {
    "bioguide_id": "H001074",
    "cspan_id": ""
  },
  {
    "bioguide_id": "M001198",
    "cspan_id": ""
  },
  {
    "bioguide_id": "H001077",
    "cspan_id": ""
  },
  {
    "bioguide_id": "J000299",
    "cspan_id": ""
  },
  {
    "bioguide_id": "B001304",
    "cspan_id": ""
  },
  {
    "bioguide_id": "R000606",
    "cspan_id": ""
  },
  {
    "bioguide_id": "B001301",
    "cspan_id": ""
  },
  {
    "bioguide_id": "M001201",
    "cspan_id": ""
  },
  {
    "bioguide_id": "L000587",
    "cspan_id": ""
  },
  {
    "bioguide_id": "B001305",
    "cspan_id": ""
  },
  {
    "bioguide_id": "B001298",
    "cspan_id": ""
  },
  {
    "bioguide_id": "G000583",
    "cspan_id": ""
  },
  {
    "bioguide_id": "R000608",
    "cspan_id": ""
  },
  {
    "bioguide_id": "K000390",
    "cspan_id": ""
  },
  {
    "bioguide_id": "S001201",
    "cspan_id": ""
  },
  {
    "bioguide_id": "E000297",
    "cspan_id": ""
  },
  {
    "bioguide_id": "F000464",
    "cspan_id": ""
  },
  {
    "bioguide_id": "T000478",
    "cspan_id": ""
  },
  {
    "bioguide_id": "F000466",
    "cspan_id": ""
  },
  {
    "bioguide_id": "S001199",
    "cspan_id": ""
  },
  {
    "bioguide_id": "G000582",
    "cspan_id": ""
  },
  {
    "bioguide_id": "K000392",
    "cspan_id": ""
  },
  {
    "bioguide_id": "G000581",
    "cspan_id": ""
  },
  {
    "bioguide_id": "A000375",
    "cspan_id": ""
  },
  {
    "bioguide_id": "T000477",
    "cspan_id": ""
  },
  {
    "bioguide_id": "M001200",
    "cspan_id": ""
  },
  {
    "bioguide_id": "G000580",
    "cspan_id": ""
  },
  {
    "bioguide_id": "J000298",
    "cspan_id": ""
  },
  {
    "bioguide_id": "G000579",
    "cspan_id": ""
  },
  {
    "bioguide_id": "C001109",
    "cspan_id": ""
  }
]

PoliBioInfo.destroy_all

poliBioArray.each do |element |
  PoliBioInfo.create(bioguide_id: element[:bioguide_id], cspan_id: element[:cspan_id])
end

puts "seed finished"
