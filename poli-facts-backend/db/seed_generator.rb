StateTable.destroy_all
Governor.destroy_all
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
@gov_array = [
  {
    "state_name": "Alabama",
    "state_name_slug": "alabama",
    "state_code": "AL",
    "state_code_slug": "al",
    "votesmart": 27642,
    "title": "governor",
    "party": "republican",
    "name": "Kay Ivey",
    "name_slug": "kay-ivey",
    "first_name": "Kay",
    "middle_name": "",
    "last_name": "Ivey",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "KAY EYE-vee",
    "gender": "female",
    "ethnicity": "white-american",
    "religion": "baptist",
    "openly_lgbtq": "",
    "date_of_birth": "1944-10-15",
    "entered_office": "2017-04-10",
    "term_end": "2019-01-01",
    "biography": "Kay Ellen Ivey (born October 15, 1944) is an American politician and educator who is the 54th and current Governor of Alabama since April 2017. Ivey, a member of the Republican Party, served as the 38th Alabama State Treasurer from 2003 to 2011, and later became the 30th Lieutenant Governor of Alabama; she was the first Republican woman elected in this state, serving from January 2011 until April 2017.",
    "phone": "334-242-7900",
    "fax": "334-242-4661",
    "latitude": 32.3773052,
    "longitude": -86.3010403,
    "address_complete": "600 Dexter Avenue, Montgomery, AL 36130",
    "address_number": 600,
    "address_prefix": "",
    "address_street": "Dexter",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "Montgomery",
    "address_state": "AL",
    "address_zipcode": 36130,
    "address_type": "Avenue",
    "website": "http://governor.alabama.gov",
    "contact_page": "http://governor.alabama.gov/contact",
    "facebook_url": "https://www.facebook.com/KayIveyAL",
    "twitter_handle": "LtGovIvey",
    "twitter_url": "https://twitter.com/LtGovIvey",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/kay-ivey.jpg"
  },
  {
    "state_name": "Alaska",
    "state_name_slug": "alaska",
    "state_code": "AK",
    "state_code_slug": "ak",
    "votesmart": 123219,
    "title": "governor",
    "party": "independent",
    "name": "William Walker",
    "name_slug": "william-walker",
    "first_name": "William",
    "middle_name": "",
    "last_name": "Walker",
    "name_suffix": "",
    "goes_by": "Bill",
    "pronunciation": "BIL WAH-ker",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "christian",
    "openly_lgbtq": "",
    "date_of_birth": "1951-04-16",
    "entered_office": "2014-12-01",
    "term_end": "2019-01-01",
    "biography": "William Martin 'Bill' Walker (born April 16, 1951) is an American attorney and politician who is the 13th and current Governor of Alaska. He is the second native-born governor of Alaska after William A. Egan (1959–1966 and 1970–1974).",
    "phone": "907-465-3500",
    "fax": "407-465-3532",
    "latitude": 27.7812652,
    "longitude": -82.6321373,
    "address_complete": "Office of Governor Bill Walker, 3rd Floor, State Capitol, P.O Box 110001, Juneau, AK 99811",
    "address_number": "",
    "address_prefix": "",
    "address_street": "of",
    "address_sec_unit_type": "Office",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "https://gov.alaska.gov",
    "contact_page": "https://gov.alaska.gov/contact/email-the-governor/",
    "facebook_url": "https://www.facebook.com/Governor.BillWalker",
    "twitter_handle": "AkGovBillWalker",
    "twitter_url": "https://twitter.com/AkGovBillWalker",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/william-walker.jpg"
  },
  {
    "state_name": "Arizona",
    "state_name_slug": "arizona",
    "state_code": "AZ",
    "state_code_slug": "az",
    "votesmart": 123548,
    "title": "governor",
    "party": "republican",
    "name": "Douglas Ducey",
    "name_slug": "douglas-ducey",
    "first_name": "Douglas",
    "middle_name": "Anthony",
    "last_name": "Ducey",
    "name_suffix": "",
    "goes_by": "Doug",
    "pronunciation": "DOAG DOO-see",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "roman-catholic",
    "openly_lgbtq": "",
    "date_of_birth": "1964-04-09",
    "entered_office": "2015-01-05",
    "term_end": "2019-01-01",
    "biography": "Douglas Anthony 'Doug' Ducey (born April 9, 1964) is an American businessman who is the 23rd and current governor of the U.S. State of Arizona. He is a member of the Republican Party, and was sworn in as governor on January 5, 2015. Prior to his governorship, he served as the state's 42nd treasurer. He is also the first man to serve as Arizona Governor in over 17 years.",
    "phone": "520-628-6580",
    "fax": "",
    "latitude": 33.4481208,
    "longitude": -112.0992236,
    "address_complete": "1700 West Washington Street, Phoenix, AZ 85007",
    "address_number": 1700,
    "address_prefix": "West",
    "address_street": "Washington",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "Phoenix",
    "address_state": "AZ",
    "address_zipcode": 85007,
    "address_type": "Street",
    "website": "http://azgovernor.gov",
    "contact_page": "http://azgovernor.gov/engage/form/contact-governor-ducey",
    "facebook_url": "https://www.facebook.com/dougducey",
    "twitter_handle": "dougducey",
    "twitter_url": "https://twitter.com/dougducey",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/douglas-ducey.jpg"
  },
  {
    "state_name": "Arkansas",
    "state_name_slug": "arkansas",
    "state_code": "AR",
    "state_code_slug": "ar",
    "votesmart": 732,
    "title": "governor",
    "party": "republican",
    "name": "Asa Hutchinson",
    "name_slug": "asa-hutchinson",
    "first_name": "Asa",
    "middle_name": "",
    "last_name": "Hutchinson",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "AY-suh HU-chin-sun",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "baptist",
    "openly_lgbtq": "",
    "date_of_birth": "1950-12-03",
    "entered_office": "2015-01-13",
    "term_end": "2019-01-01",
    "biography": "William Asa Hutchinson II (born December 3, 1950) is an American businessman, attorney, politician who has been the 46th Governor of Arkansas since 2015. Previously he was U.S. Attorney for the Fort Smith-based Western District of Arkansas, U.S. Congressman from the Third District of Arkansas, Administrator of the U.S. Drug Enforcement Administration (DEA) and the first Undersecretary for Border & Transportation Security at the U.S. Department of Homeland Security.",
    "phone": "501-682-2345",
    "fax": 34.746779,
    "latitude": 34.746779,
    "longitude": -92.2912417,
    "address_complete": "State Capitol Room 250, 500 Woodlane Street, Little Rock, AR 72201",
    "address_number": "",
    "address_prefix": "",
    "address_street": "State",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://governor.arkansas.gov",
    "contact_page": "http://governor.arkansas.gov/contact-info",
    "facebook_url": "https://www.facebook.com/asaforarkansas",
    "twitter_handle": "AsaHutchinson",
    "twitter_url": "https://twitter.com/AsaHutchinson",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/asa-hutchinson.jpg"
  },
  {
    "state_name": "California",
    "state_name_slug": "california",
    "state_code": "CA",
    "state_code_slug": "ca",
    "votesmart": 69557,
    "title": "governor",
    "party": "democrat",
    "name": "Edmund Brown",
    "name_slug": "edmund-brown",
    "first_name": "Edmund",
    "middle_name": "G.",
    "last_name": "Brown",
    "name_suffix": "Jr.",
    "goes_by": "Jerry",
    "pronunciation": "JE-ree BROWN",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1938-04-07",
    "entered_office": "2011-01-03",
    "term_end": "2019-01-01",
    "biography": "Edmund Gerald 'Jerry' Brown Jr. (born April 7, 1938) is an American politician and lawyer who has served as the 39th Governor of California since 2011. A member of the Democratic Party, Brown previously served as the 34th governor from 1975 to 1983, and is the longest-serving governor in California history. Prior to and following his first governorship, Brown served in numerous state, local and party positions, including three times a candidate for the Democratic nomination for President of the United States.",
    "phone": "916-445-2841",
    "fax": "916-558-3160",
    "latitude": 38.5789026,
    "longitude": -121.4965295,
    "address_complete": "State Capitol, Suite 1173, Sacramento, CA 95814",
    "address_number": "",
    "address_prefix": "",
    "address_street": "State",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://gov.ca.gov",
    "contact_page": "https://govnews.gov.ca.gov/gov39mail/mail.php",
    "facebook_url": "https://www.facebook.com/jerrybrown",
    "twitter_handle": "JerryBrownGov",
    "twitter_url": "https://twitter.com/JerryBrownGov",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/edmund-brown.jpg"
  },
  {
    "state_name": "Colorado",
    "state_name_slug": "colorado",
    "state_code": "CO",
    "state_code_slug": "co",
    "votesmart": 71547,
    "title": "governor",
    "party": "democrat",
    "name": "John Hickenlooper",
    "name_slug": "john-hickenlooper",
    "first_name": "John",
    "middle_name": "",
    "last_name": "Hickenlooper",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "JOAN HIK-en-LOO-per",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1952-02-07",
    "entered_office": "2011-01-11",
    "term_end": "2019-01-01",
    "biography": "John Wright Hickenlooper, Jr. (born February 7, 1952), is an American politician, and the 42nd and current Governor of Colorado, in office since 2011. He is a member of the Democratic Party. Born in Narberth, Pennsylvania, Hickenlooper is a graduate of Wesleyan University. After his career as a geologist, Hickenlooper entered a career in business and cofounded the Wynkoop Brewing Company in Denver. Hickenlooper was elected the 43rd mayor of Denver in 2003, serving two terms, until 2011.",
    "phone": "303-866-2471",
    "fax": "303-866-2003",
    "latitude": 39.7393292,
    "longitude": -104.9870009,
    "address_complete": "200 East Colfax Avenue, 136 State Capitol Building, Denver, CO 80203",
    "address_number": 200,
    "address_prefix": "East",
    "address_street": "Colfax",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "Avenue",
    "website": "http://www.colorado.gov/governor/",
    "contact_page": "https://www.colorado.gov/governor/contact",
    "facebook_url": "https://www.facebook.com/JohnHickenlooper",
    "twitter_handle": "hickforco",
    "twitter_url": "https://twitter.com/hickforco",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/john-hickenlooper.jpg"
  },
  {
    "state_name": "Connecticut",
    "state_name_slug": "connecticut",
    "state_code": "CT",
    "state_code_slug": "ct",
    "votesmart": 66223,
    "title": "governor",
    "party": "democrat",
    "name": "Dannel Malloy",
    "name_slug": "dannel-malloy",
    "first_name": "Dannel",
    "middle_name": "",
    "last_name": "Malloy",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "DA-nel MA-loy",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1955-07-21",
    "entered_office": "2011-01-05",
    "term_end": "2019-01-01",
    "biography": "Dannel Patrick 'Dan' Malloy (born July 21, 1955) is an American politician who is the 88th and current Governor of Connecticut. A member of the Democratic Party, Malloy has served as governor since 2011. He is currently the chair of the Democratic Governors Association.",
    "phone": "860-566-4840",
    "fax": "860-524-7395",
    "latitude": 41.7638385,
    "longitude": -72.6863461,
    "address_complete": "State Capitol, 210 Capitol Ave, Hartford, CT 06106",
    "address_number": "",
    "address_prefix": "",
    "address_street": "State",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://portal.ct.gov/governor",
    "contact_page": "http://portal.ct.gov/en/Contact-and-Help/Ask-a-Question",
    "facebook_url": "https://www.facebook.com/GovMalloyOffice",
    "twitter_handle": "GovMalloyOffice",
    "twitter_url": "https://twitter.com/GovMalloyOffice",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/dannel-malloy.jpg"
  },
  {
    "state_name": "Delaware",
    "state_name_slug": "delaware",
    "state_code": "DE",
    "state_code_slug": "de",
    "votesmart": 53658,
    "title": "governor",
    "party": "democrat",
    "name": "John Carney",
    "name_slug": "john-carney",
    "first_name": "John",
    "middle_name": "",
    "last_name": "Carney",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "JOAN KARR-nee",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "roman-catholic",
    "openly_lgbtq": "",
    "date_of_birth": "1956-05-20",
    "entered_office": "2017-01-17",
    "term_end": "2019-01-01",
    "biography": "John Charles Carney Jr. (born May 20, 1956) is an American politician who is the 74th and current Governor of Delaware since January 2017. A member of the Democratic Party, he served as the U.S. Representative for Delaware's at-large congressional district from 2011 to 2017 prior to his governorship. Carney was also the 24th Lieutenant Governor of Delaware from 2001 to 2009 and served as Delaware's Secretary of Finance.",
    "phone": "302-577-4101",
    "fax": "",
    "latitude": 39.743532,
    "longitude": -75.5484957,
    "address_complete": "Carvel State Office Building, 820 North French Street, 12th Floor, Wilmington, DE 19801",
    "address_number": "",
    "address_prefix": "",
    "address_street": "Carvel",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://governor.delaware.gov",
    "contact_page": "http://delaware.gov/help/degov-contact.shtml",
    "facebook_url": "https://www.facebook.com/JohnCarneyDE",
    "twitter_handle": "johncarneyde",
    "twitter_url": "https://twitter.com/johncarneyde",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/john-carney.jpg"
  },
  {
    "state_name": "Florida",
    "state_name_slug": "florida",
    "state_code": "FL",
    "state_code_slug": "fl",
    "votesmart": 124204,
    "title": "governor",
    "party": "republican",
    "name": "Rick Scott",
    "name_slug": "rick-scott",
    "first_name": "Rick",
    "middle_name": "",
    "last_name": "Scott",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "RIK SKAHT",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "christian",
    "openly_lgbtq": "",
    "date_of_birth": "1952-12-01",
    "entered_office": "2011-01-04",
    "term_end": "2019-01-01",
    "biography": "Richard Lynn 'Rick' Scott (born December 1, 1952) is an American businessman and politician who has been the 45th Governor of Florida, since 2011. He is a member of the Republican Party of Florida.",
    "phone": "850-488-7146",
    "fax": "",
    "latitude": 30.437722,
    "longitude": -84.2836701,
    "address_complete": "State of Florida, The Capitol, 400 South Monroe Street, Tallahassee, FL 32399",
    "address_number": "",
    "address_prefix": "",
    "address_street": "State",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "of",
    "address_state": "Florida",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://www.flgov.com",
    "contact_page": "http://www.flgov.com/contact-governor/",
    "facebook_url": "https://www.facebook.com/governorrickscott",
    "twitter_handle": "FLGovScott",
    "twitter_url": "https://twitter.com/FLGovScott",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/rick-scott.jpg"
  },
  {
    "state_name": "Georgia",
    "state_name_slug": "georgia",
    "state_code": "GA",
    "state_code_slug": "ga",
    "votesmart": 26824,
    "title": "governor",
    "party": "republican",
    "name": "Nathan Deal",
    "name_slug": "nathan-deal",
    "first_name": "Nathan",
    "middle_name": "",
    "last_name": "Deal",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "NAY-then DE-al",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "christian",
    "openly_lgbtq": "",
    "date_of_birth": "1942-08-25",
    "entered_office": "2011-01-10",
    "term_end": "2019-01-01",
    "biography": "John Nathan Deal (born August 25, 1942) is an American politician who is the 82nd and current Governor of the U.S. state of Georgia since January 2011. He was elected to the U.S. House of Representatives as a Democrat in 1992, but switched to the Republican Party in 1995. On March 1, 2010, Deal announced his resignation from Congress to run for governor of Georgia.",
    "phone": "404-656-1776",
    "fax": "404-657-7332",
    "latitude": 33.7489981,
    "longitude": -84.3903046,
    "address_complete": "206 Washington Street, 111 State Capitol, Atlanta, GA 30334",
    "address_number": 206,
    "address_prefix": "",
    "address_street": "Washington",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "Street",
    "website": "http://gov.georgia.gov",
    "contact_page": "https://gov.georgia.gov/webform/contact-governor-domestic-form",
    "facebook_url": "https://www.facebook.com/GovernorDeal",
    "twitter_handle": "GovernorDeal",
    "twitter_url": "https://twitter.com/GovernorDeal",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/nathan-deal.jpg"
  },
  {
    "state_name": "Hawaii",
    "state_name_slug": "hawaii",
    "state_code": "HI",
    "state_code_slug": "hi",
    "votesmart": 3406,
    "title": "governor",
    "party": "democrat",
    "name": "David Ige",
    "name_slug": "david-ige",
    "first_name": "David",
    "middle_name": "",
    "last_name": "Ige",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "DAY-vid EE-gay",
    "gender": "male",
    "ethnicity": "pacific-islander",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1957-01-15",
    "entered_office": "2014-12-01",
    "term_end": "2019-01-01",
    "biography": "David Yutaka Ige (born January 15, 1957) is an American politician who serves as the eighth and current Governor of Hawaii, in office since 2014. A Democrat, he previously served in the Hawaii State Senate, representing the 16th district, from 1995 to 2014. In the 2014 Hawaii gubernatorial election, he won the Democratic primary by defeating incumbent Governor Neil Abercrombie with 66% of the vote.",
    "phone": "808-586-0034",
    "fax": "808-586-0006",
    "latitude": 21.307764,
    "longitude": -157.8594961,
    "address_complete": "415 South Beretania Street, Honolulu, HI 96813",
    "address_number": 415,
    "address_prefix": "South",
    "address_street": "Beretania",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "Honolulu",
    "address_state": "HI",
    "address_zipcode": 96813,
    "address_type": "Street",
    "website": "http://governor.hawaii.gov",
    "contact_page": "https://governor.hawaii.gov/contact-us/contact-the-governor/",
    "facebook_url": "https://www.facebook.com/GovernorDavidIge",
    "twitter_handle": "GovHawaii",
    "twitter_url": "https://twitter.com/GovHawaii",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/david-ige.jpg"
  },
  {
    "state_name": "Idaho",
    "state_name_slug": "idaho",
    "state_code": "ID",
    "state_code_slug": "id",
    "votesmart": 1679,
    "title": "governor",
    "party": "republican",
    "name": "Clement Otter",
    "name_slug": "clement-otter",
    "first_name": "Clement",
    "middle_name": "Leroy",
    "last_name": "Otter",
    "name_suffix": "",
    "goes_by": "Butch",
    "pronunciation": "BUUCH AH-ter",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "roman-catholic",
    "openly_lgbtq": "",
    "date_of_birth": "1942-05-03",
    "entered_office": "2007-01-01",
    "term_end": "2019-01-01",
    "biography": "Clement Leroy 'Butch' Otter (born May 3, 1942) is an American businessman and politician who has served as the 32nd Governor of Idaho since January 2007. He is a member of the Republican Party. Having served for 10 years, 116 days, Otter is currently the longest-serving incumbent Governor in the United States whose time in office has run consecutively.",
    "phone": "208-334-2100",
    "fax": "208-334-3454",
    "latitude": 43.6174911,
    "longitude": -116.2025323,
    "address_complete": "P.O. Box 83720, Boise, ID 83720",
    "address_number": "",
    "address_prefix": "",
    "address_street": "Boise",
    "address_sec_unit_type": "PO. Box",
    "address_sec_unit_num": 83720,
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://gov.idaho.gov/",
    "contact_page": "https://gov.idaho.gov/ourgov/contact.html",
    "facebook_url": "https://www.facebook.com/Governor-C-L-Butch-Otter-292986829831/",
    "twitter_handle": "butchotter",
    "twitter_url": "https://twitter.com/butchotter",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/clement-otter.jpg"
  },
  {
    "state_name": "Illinois",
    "state_name_slug": "illinois",
    "state_code": "IL",
    "state_code_slug": "il",
    "votesmart": 147492,
    "title": "governor",
    "party": "republican",
    "name": "Bruce Rauner",
    "name_slug": "bruce-rauner",
    "first_name": "Bruce",
    "middle_name": "",
    "last_name": "Rauner",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "BROOS ROW-ner",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1957-01-12",
    "entered_office": "2015-01-12",
    "term_end": "2019-01-01",
    "biography": "Bruce Vincent Rauner (born February 18, 1957) is an American businessman, philanthropist, and politician. He is the 42nd and current Governor of Illinois, serving since January 12, 2015. Prior to his election, he was the Chairman of R8 Capital Partners and Chairman of the private equity firm GTCR, based in Chicago.",
    "phone": "312-814-2121",
    "fax": "",
    "latitude": 39.7984385,
    "longitude": -89.6573079,
    "address_complete": "207 State House, Springfield, IL 62706",
    "address_number": 207,
    "address_prefix": "",
    "address_street": "State House",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "Springfield",
    "address_state": "IL",
    "address_zipcode": 62706,
    "address_type": "",
    "website": "https://www.illinois.gov/gov/pages/default.aspx",
    "contact_page": "https://www.illinois.gov/gov/contactus/Pages/default.aspx",
    "facebook_url": "https://www.facebook.com/GovRauner",
    "twitter_handle": "GovRauner",
    "twitter_url": "https://twitter.com/GovRauner",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/bruce-rauner.jpg"
  },
  {
    "state_name": "Indiana",
    "state_name_slug": "indiana",
    "state_code": "IN",
    "state_code_slug": "in",
    "votesmart": 34349,
    "title": "governor",
    "party": "republican",
    "name": "Eric Holcomb",
    "name_slug": "eric-holcomb",
    "first_name": "Eric",
    "middle_name": "Joseph",
    "last_name": "Holcomb",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "E-rik HAWL-koam",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "church-of-god",
    "openly_lgbtq": "",
    "date_of_birth": "1968-05-02",
    "entered_office": "2017-01-09",
    "term_end": "2019-01-01",
    "biography": "Eric Joseph Holcomb (born May 2, 1968) is an American politician who serves as the 51st and current Governor of Indiana since January 2017. Prior to his election to the governorship, he was also the 51st Lieutenant Governor of Indiana under Governor Mike Pence, now the 48th and current Vice President of the United States.",
    "phone": "317-232-4567",
    "fax": "317-232-3443",
    "latitude": 39.7984385,
    "longitude": -89.6573079,
    "address_complete": "State House, Room 206 Indianapolis, IN 46204",
    "address_number": "",
    "address_prefix": "",
    "address_street": "State",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://www.in.gov/gov/",
    "contact_page": "http://www.in.gov/core/help.html",
    "facebook_url": "https://www.facebook.com/GovHolcomb",
    "twitter_handle": "GovHolcomb",
    "twitter_url": "https://twitter.com/GovHolcomb",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/eric-holcomb.jpg"
  },
  {
    "state_name": "Iowa",
    "state_name_slug": "iowa",
    "state_code": "IA",
    "state_code_slug": "ia",
    "votesmart": 103324,
    "title": "governor",
    "party": "republican",
    "name": "Kimberly Reynolds",
    "name_slug": "kimberly-reynolds",
    "first_name": "Kimberly",
    "middle_name": "Kay",
    "last_name": "Reynolds",
    "name_suffix": "",
    "goes_by": "Kim",
    "pronunciation": "KIM RE-neldz",
    "gender": "female",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1959-08-04",
    "entered_office": "2017-05-24",
    "term_end": "2019-01-01",
    "biography": "Kimberly Kay Reynold is an American politician serving as the 43rd and current Governor of Iowa since 2017. A Republican, she previously served as the Lieutenant Governor of Iowa from 2011 to 2017 and assumed the governorship when incumbent Governor Terry Branstad became the United States Ambassador to China. Reynolds is the first female Governor of Iowa.",
    "phone": "515-281-5211",
    "fax": "",
    "latitude": 41.5912077,
    "longitude": -93.6059486,
    "address_complete": "1007 East Grand Ave., Des Moines, IA 50319",
    "address_number": 1007,
    "address_prefix": "East",
    "address_street": "Grand",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "Des Moines",
    "address_state": "IA",
    "address_zipcode": 50319,
    "address_type": "Ave",
    "website": "https://governor.iowa.gov",
    "contact_page": "https://governor.iowa.gov/contact",
    "facebook_url": "https://www.facebook.com/IAGovernor",
    "twitter_handle": "kimreynoldsia",
    "twitter_url": "https://twitter.com/kimreynoldsia",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/kimberly-reynolds.jpg"
  },
  {
    "state_name": "Kansas",
    "state_name_slug": "kansas",
    "state_code": "KS",
    "state_code_slug": "ks",
    "votesmart": 34449,
    "title": "governor",
    "party": "republican",
    "name": "Jeffrey Colyer",
    "name_slug": "jeffrey-colyer",
    "first_name": "Jeffrey",
    "middle_name": "William",
    "last_name": "Colyer",
    "name_suffix": "",
    "goes_by": "Jeff",
    "pronunciation": "JEF KAWL-ee-er",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1960-06-03",
    "entered_office": "2018-01-31",
    "term_end": "2019-01-01",
    "biography": "Jeffrey William Colyer (born June 3, 1960) is an American surgeon and politician who has served as the 47th Governor of Kansas since 2018. A member of the Republican Party, he previously served as the 49th Lieutenant Governor of Kansas from 2011 until 2018, as a member of the Kansas Senate from 2009 to 2011, and in the Kansas House of Representatives from 2007 to 2009.",
    "phone": "785-296-3232",
    "fax": "",
    "latitude": 39.0481528,
    "longitude": -95.6803429,
    "address_complete": "300 Southwest, 10th Avenue, Suite 241S, Topeka, KS 66612",
    "address_number": 300,
    "address_prefix": "Southwest",
    "address_street": "10th",
    "address_sec_unit_type": "Suite",
    "address_sec_unit_num": "241S",
    "address_city": "Topeka",
    "address_state": "KS",
    "address_zipcode": 66612,
    "address_type": "Avenue",
    "website": "https://governor.kansas.gov/",
    "contact_page": "https://governor.kansas.gov/contact/contact-the-governor/",
    "facebook_url": "https://www.facebook.com/DrJeffColyer/",
    "twitter_handle": "drjeffcolyer",
    "twitter_url": "https://twitter.com/drjeffcolyer",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/jeffrey-colyer.jpg"
  },
  {
    "state_name": "Kentucky",
    "state_name_slug": "kentucky",
    "state_code": "KY",
    "state_code_slug": "ky",
    "votesmart": 146094,
    "title": "governor",
    "party": "republican",
    "name": "Matthew Bevin",
    "name_slug": "matthew-bevin",
    "first_name": "Matthew",
    "middle_name": "Griswold",
    "last_name": "Bevin",
    "name_suffix": "",
    "goes_by": "Matt",
    "pronunciation": "MAT BE-vin",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "christian",
    "openly_lgbtq": "",
    "date_of_birth": "1967-01-09",
    "entered_office": "2015-12-08",
    "term_end": "2019-01-01",
    "biography": "Matthew Griswold 'Matt' Bevin (born January 9, 1967) is an American businessman and politician who currently serves as the 62nd Governor of Kentucky. He is the third Republican elected Governor of Kentucky since World War II, after Ernie Fletcher (2003–2007) and Louie B. Nunn (1967–1971).",
    "phone": "502-564-2611",
    "fax": "502-564-2517",
    "latitude": 38.1867792,
    "longitude": -84.877415,
    "address_complete": "700 Capitol Avenue, Suite 100, Frankfort, KY 40601",
    "address_number": 700,
    "address_prefix": "",
    "address_street": "Capitol",
    "address_sec_unit_type": "Suite",
    "address_sec_unit_num": 100,
    "address_city": "Frankfort",
    "address_state": "KY",
    "address_zipcode": 40601,
    "address_type": "Avenue",
    "website": "http://governor.ky.gov",
    "contact_page": "http://governor.ky.gov/pages/contact.aspx",
    "facebook_url": "https://www.facebook.com/GovMattBevin",
    "twitter_handle": "GovMattBevin",
    "twitter_url": "https://twitter.com/GovMattBevin",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/matthew-bevin.jpg"
  },
  {
    "state_name": "Louisiana",
    "state_name_slug": "louisiana",
    "state_code": "LA",
    "state_code_slug": "la",
    "votesmart": 72012,
    "title": "governor",
    "party": "democrat",
    "name": "John Edwards",
    "name_slug": "john-edwards",
    "first_name": "John",
    "middle_name": "Bel",
    "last_name": "Edwards",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "JOAN ED-werdz",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1966-09-16",
    "entered_office": "2016-01-11",
    "term_end": "2019-01-01",
    "biography": "John Bel Edwards (born September 16, 1966) is an American politician and lawyer who is the 56th and current Governor of Louisiana, in office since January 11, 2016. He was previously the Minority Leader of the Louisiana House of Representatives and represented the 72nd District for two terms. He left the state legislature to run for governor in 2015.",
    "phone": "623-773-7328",
    "fax": "",
    "latitude": 33.5766177,
    "longitude": -112.242531,
    "address_complete": "8401 West Monroe Street, Peoria, AZ 85345",
    "address_number": 8401,
    "address_prefix": "West",
    "address_street": "Monroe",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "Peoria",
    "address_state": "AZ",
    "address_zipcode": 85345,
    "address_type": "Street",
    "website": "http://gov.louisiana.gov/",
    "contact_page": "http://gov.louisiana.gov/page/contact",
    "facebook_url": "https://www.facebook.com/LouisianaGov",
    "twitter_handle": "louisianagov",
    "twitter_url": "https://twitter.com/louisianagov",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/john-edwards.jpg"
  },
  {
    "state_name": "Maine",
    "state_name_slug": "maine",
    "state_code": "ME",
    "state_code_slug": "me",
    "votesmart": 120907,
    "title": "governor",
    "party": "republican",
    "name": "Paul LePage",
    "name_slug": "paul-lepage",
    "first_name": "Paul",
    "middle_name": "Richard",
    "last_name": "LePage",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "PA-ul LEE-payj",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1948-10-09",
    "entered_office": "2011-01-05",
    "term_end": "2019-01-01",
    "biography": "Paul Richard LePage (born October 9, 1948) is an American businessman and Republican Party politician who is currently the 74th Governor of Maine. Born in Lewiston, LePage grew up with seventeen siblings. After some initial difficulty entering college due to speaking French as his first language, he succeeded in obtaining a Bachelor of Science in business administration in finance and accounting from Husson College, later earning a Master of Business Administration from the University of Maine.",
    "phone": "207-287-3531",
    "fax": "207-287-1034",
    "latitude": 44.3044824,
    "longitude": -69.7835823,
    "address_complete": "Office of the Governor, Number 1, State House Station, Augusta, ME 04333",
    "address_number": "",
    "address_prefix": "",
    "address_street": "of",
    "address_sec_unit_type": "Office",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://www.maine.gov/governor/lepage/",
    "contact_page": "http://www.maine.gov/governor/lepage/citizen_services/ideas-suggestions.shtml",
    "facebook_url": "https://www.facebook.com/mainesgov",
    "twitter_handle": "Governor_LePage",
    "twitter_url": "https://twitter.com/Governor_LePage",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/paul-lepage.jpg"
  },
  {
    "state_name": "Maryland",
    "state_name_slug": "maryland",
    "state_code": "MD",
    "state_code_slug": "md",
    "votesmart": 147764,
    "title": "governor",
    "party": "republican",
    "name": "Lawrence Hogan",
    "name_slug": "lawrence-hogan",
    "first_name": "Lawrence",
    "middle_name": "Joseph",
    "last_name": "Hogan",
    "name_suffix": "Jr.",
    "goes_by": "Larry",
    "pronunciation": "LA-ree HOH-gen",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1956-05-25",
    "entered_office": "2015-01-21",
    "term_end": "2019-01-01",
    "biography": "Lawrence Joseph 'Larry' Hogan Jr. (born May 25, 1956) is an American politician who currently serves as the 62nd Governor of Maryland, in office since January 2015. He is only the second Republican governor in Maryland in nearly 50 years, and the first Maryland governor from Anne Arundel County to be elected in over 100 years.",
    "phone": "410-974-3901",
    "fax": "",
    "latitude": 38.9788597,
    "longitude": -76.4932177,
    "address_complete": "100 State Circle, Annapolis, MD 21401",
    "address_number": 100,
    "address_prefix": "",
    "address_street": "State",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "Annapolis",
    "address_state": "MD",
    "address_zipcode": 21401,
    "address_type": "Circle",
    "website": "http://governor.maryland.gov/",
    "contact_page": "http://governor.maryland.gov/mail/default.asp",
    "facebook_url": "https://www.facebook.com/larryhoganmd",
    "twitter_handle": "LarryHogan",
    "twitter_url": "https://twitter.com/LarryHogan",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/lawrence-hogan.jpg"
  },
  {
    "state_name": "Massachusetts",
    "state_name_slug": "massachusetts",
    "state_code": "MA",
    "state_code_slug": "ma",
    "votesmart": 124824,
    "title": "governor",
    "party": "republican",
    "name": "Charles Baker",
    "name_slug": "charles-baker",
    "first_name": "Charles",
    "middle_name": "Duane",
    "last_name": "Baker",
    "name_suffix": "Jr.",
    "goes_by": "Charlie",
    "pronunciation": "CHARR-lee BAY-ker",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "protestant",
    "openly_lgbtq": "",
    "date_of_birth": "1956-11-13",
    "entered_office": "2015-01-08",
    "term_end": "2019-01-01",
    "biography": "Charles Duane 'Charlie' Baker Jr. (born November 13, 1956), is an American businessman and the 72nd and current Governor of Massachusetts, having been sworn into office on January 8, 2015. He was a cabinet official under two Massachusetts governors, spent ten years as CEO of Harvard Pilgrim Health Care and was also the Republican nominee for governor of Massachusetts in an unsuccessful 2010 bid.",
    "phone": "617-725-4005",
    "fax": "617-727-9725",
    "latitude": 42.3587723,
    "longitude": -71.0660006,
    "address_complete": "Massachusetts State House, Office of the Governor, Room 280 Boston, MA 02133",
    "address_number": "",
    "address_prefix": "",
    "address_street": "Massachusetts",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://www.mass.gov/governor/",
    "contact_page": "http://www.mass.gov/governor/constituent-services/contact-governor-office/",
    "facebook_url": "https://www.facebook.com/CharlieBakerMA",
    "twitter_handle": "massgovernor",
    "twitter_url": "https://twitter.com/massgovernor",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/charles-baker.jpg"
  },
  {
    "state_name": "Michigan",
    "state_name_slug": "michigan",
    "state_code": "MI",
    "state_code_slug": "mi",
    "votesmart": 124011,
    "title": "governor",
    "party": "republican",
    "name": "Richard Snyder",
    "name_slug": "richard-snyder",
    "first_name": "Richard",
    "middle_name": "Dale",
    "last_name": "Snyder",
    "name_suffix": "",
    "goes_by": "Rick",
    "pronunciation": "RIK SNY-der",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1958-08-19",
    "entered_office": "2011-01-01",
    "term_end": "2019-01-01",
    "biography": "Richard Dale 'Rick' Snyder (born August 19, 1958) is an American politician, business executive, venture capitalist, and accountant. He is the 48th and current Governor of Michigan. A member of the Republican Party, he assumed office as governor on January 1, 2011. From 2005 to 2007, Snyder served as the chairman of the board of Gateway, Inc., based in Irvine, California.",
    "phone": "517-373-3400",
    "fax": "517-335-6863",
    "latitude": 42.6800039,
    "longitude": -84.502194,
    "address_complete": "Post Office Box 30013, Lansing, MI 48909",
    "address_number": "",
    "address_prefix": "",
    "address_street": "Post",
    "address_sec_unit_type": "Office",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://www.michigan.gov/snyder",
    "contact_page": "https://somgovweb.state.mi.us/GovRelations/ShareOpinion.aspx",
    "facebook_url": "https://www.facebook.com/GovernorRickSnyder",
    "twitter_handle": "onetoughnerd",
    "twitter_url": "https://twitter.com/onetoughnerd",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/richard-snyder.jpg"
  },
  {
    "state_name": "Minnesota",
    "state_name_slug": "minnesota",
    "state_code": "MN",
    "state_code_slug": "mn",
    "votesmart": 20301,
    "title": "governor",
    "party": "democrat",
    "name": "Mark Dayton",
    "name_slug": "mark-dayton",
    "first_name": "Mark",
    "middle_name": "Brandt",
    "last_name": "Dayton",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "MARK DAY-ten",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "presbyterian",
    "openly_lgbtq": "",
    "date_of_birth": "1947-01-26",
    "entered_office": "2011-01-03",
    "term_end": "2019-01-01",
    "biography": "Mark Brandt Dayton (born January 26, 1947) is an American politician who is the 40th and current Governor of Minnesota, serving since 2011. He was previously a United States Senator for Minnesota from 2001 to 2007, and the Minnesota State Auditor from 1991 to 1995. He is a member of the Minnesota Democratic–Farmer–Labor Party (DFL), which affiliates with the national Democratic Party.",
    "phone": "651-201-3400",
    "fax": "651-797-1850",
    "latitude": 44.9551538,
    "longitude": -93.104427,
    "address_complete": "130 State Capitol, 75 Reverend Dr. Martin Luther King Jr. Boulevard, Saint Paul, MN 55155",
    "address_number": 130,
    "address_prefix": "",
    "address_street": "State",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "https://mn.gov/governor/",
    "contact_page": "https://mn.gov/governor/contact-us/form/",
    "facebook_url": "https://www.facebook.com/GovMarkDayton",
    "twitter_handle": "GovMarkDayton",
    "twitter_url": "https://twitter.com/GovMarkDayton",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/mark-dayton.jpg"
  },
  {
    "state_name": "Mississippi",
    "state_name_slug": "mississippi",
    "state_code": "MS",
    "state_code_slug": "ms",
    "votesmart": 2126,
    "title": "governor",
    "party": "republican",
    "name": "Dewey Bryant",
    "name_slug": "dewey-bryant",
    "first_name": "Dewey",
    "middle_name": "Phillip",
    "last_name": "Bryant",
    "name_suffix": "",
    "goes_by": "Phil",
    "pronunciation": "FIL BRY-ant",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "united-methodist",
    "openly_lgbtq": "",
    "date_of_birth": "1954-12-09",
    "entered_office": "2012-01-10",
    "term_end": "2019-01-01",
    "biography": "Dewey Phillip 'Phil' Bryant (born December 9, 1954) is an American politician from the state of Mississippi who has served as the 64th Governor of Mississippi since 2012. He previously served as the 31st Lieutenant Governor of Mississippi from 2008 to 2012 and as the 40th State Auditor of Mississippi from 1996 to 2008.",
    "phone": "601-359-3150",
    "fax": "601-359-3741",
    "latitude": 32.3504041,
    "longitude": -90.1551408,
    "address_complete": "P.O. Box 139, Jackson, MS 39205",
    "address_number": "",
    "address_prefix": "",
    "address_street": "Jackson",
    "address_sec_unit_type": "PO. Box",
    "address_sec_unit_num": 139,
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://www.governorbryant.ms.gov/",
    "contact_page": "http://www.governorbryant.ms.gov/Pages/Contact.aspx",
    "facebook_url": "https://www.facebook.com/im4phil",
    "twitter_handle": "PhilBryantMS",
    "twitter_url": "https://twitter.com/PhilBryantMS",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/dewey-bryant.jpg"
  },
  {
    "state_name": "Missouri",
    "state_name_slug": "missouri",
    "state_code": "MO",
    "state_code_slug": "mo",
    "votesmart": 169028,
    "title": "governor",
    "party": "republican",
    "name": "Eric Greitens",
    "name_slug": "eric-greitens",
    "first_name": "Eric",
    "middle_name": "Robert",
    "last_name": "Greitens",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "E-rik GRY-tenz",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1974-04-10",
    "entered_office": "2017-01-09",
    "term_end": "2019-01-01",
    "biography": "Eric Robert Greitens (born April 10, 1974) is an American politician, author, and former Navy SEAL currently serving as the 56th Governor of Missouri, since January 2017. He is currently the second youngest Governor in the United States, after New Hampshire's Chris Sununu, also born in 1974.",
    "phone": "573-751-3222",
    "fax": "",
    "latitude": 38.5774764,
    "longitude": -92.1758644,
    "address_complete": "201 West Capitol Avenue, Room 216, Post Office Box 720, Jefferson City, MO 65101",
    "address_number": 201,
    "address_prefix": "West",
    "address_street": "Capitol",
    "address_sec_unit_type": "Room",
    "address_sec_unit_num": 216,
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "Avenue",
    "website": "https://governor.mo.gov/",
    "contact_page": "https://governor.mo.gov/get-involved/contact-the-governors-office",
    "facebook_url": "https://www.facebook.com/EricGreitens",
    "twitter_handle": "EricGreitens",
    "twitter_url": "https://twitter.com/EricGreitens",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/eric-greitens.jpg"
  },
  {
    "state_name": "Montana",
    "state_name_slug": "montana",
    "state_code": "MT",
    "state_code_slug": "mt",
    "votesmart": 110899,
    "title": "governor",
    "party": "democrat",
    "name": "Stephen Bullock",
    "name_slug": "stephen-bullock",
    "first_name": "Stephen",
    "middle_name": "Clark",
    "last_name": "Bullock",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "STEE-ven BUU-luhk",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1966-04-11",
    "entered_office": "2013-01-07",
    "term_end": "2019-01-01",
    "biography": "Stephen Clark Bullock (born April 11, 1966) is an American politician and lawyer who is the 24th and current Governor of Montana, serving since 2013. He is a member of the Democratic Party.",
    "phone": "406-444-3111",
    "fax": "406-444-5529",
    "latitude": 46.5300037,
    "longitude": -112.162194,
    "address_complete": "Office of the Governor, Post Office Box 200801, Helena, MT 59620",
    "address_number": "",
    "address_prefix": "",
    "address_street": "of",
    "address_sec_unit_type": "Office",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://governor.mt.gov/",
    "contact_page": "http://governor.mt.gov/Home/Contact/shareopinion",
    "facebook_url": "https://www.facebook.com/GovernorBullock",
    "twitter_handle": "GovernorBullock",
    "twitter_url": "https://twitter.com/GovernorBullock",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/stephen-bullock.jpg"
  },
  {
    "state_name": "Nebraska",
    "state_name_slug": "nebraska",
    "state_code": "NE",
    "state_code_slug": "ne",
    "votesmart": 57777,
    "title": "governor",
    "party": "republican",
    "name": "John Ricketts",
    "name_slug": "john-ricketts",
    "first_name": "John",
    "middle_name": "Peter",
    "last_name": "Ricketts",
    "name_suffix": "",
    "goes_by": "Pete",
    "pronunciation": "PEET RI-kits",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "roman-catholic",
    "openly_lgbtq": "",
    "date_of_birth": "1964-08-19",
    "entered_office": "2015-01-08",
    "term_end": "2019-01-01",
    "biography": "Ricketts was born in Nebraska City, Nebraska, and now lives in Omaha. He attended the University of Chicago for both his bachelor and graduate studies, and received an MBA in marketing and finance from the university's Graduate School of Business.",
    "phone": "402-471-2244",
    "fax": "402-471-6031",
    "latitude": 40.800004,
    "longitude": -96.672194,
    "address_complete": "Office of the Governor, Post Office Box 94848, Lincoln, NE 68509-4848",
    "address_number": "",
    "address_prefix": "",
    "address_street": "of",
    "address_sec_unit_type": "Office",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "https://governor.nebraska.gov/",
    "contact_page": "https://governor.nebraska.gov/contact-form",
    "facebook_url": "https://www.facebook.com/GovernorPeteRicketts",
    "twitter_handle": "GovRicketts",
    "twitter_url": "https://twitter.com/GovRicketts",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/john-ricketts.jpg"
  },
  {
    "state_name": "Nevada",
    "state_name_slug": "nevada",
    "state_code": "NV",
    "state_code_slug": "nv",
    "votesmart": 9067,
    "title": "governor",
    "party": "republican",
    "name": "Brian Sandoval",
    "name_slug": "brian-sandoval",
    "first_name": "Brian",
    "middle_name": "Edward",
    "last_name": "Sandoval",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "BRI-an SAND-OH-val",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1963-08-05",
    "entered_office": "2011-01-03",
    "term_end": "2019-01-01",
    "biography": "Brian Edward Sandoval (born August 5, 1963) is an American politician and attorney who is the 29th and current Governor of Nevada. A member of the Republican Party, Sandoval is a former United States District Judge of the United States District Court for the District of Nevada. On June 9, 2010, Sandoval defeated his GOP challengers (including the then-incumbent governor Jim Gibbons) to win the Republican nomination for the 2010 gubernatorial election.",
    "phone": "775-684-5670",
    "fax": "775-684-5683",
    "latitude": 39.1641639,
    "longitude": -119.7683391,
    "address_complete": "State Capitol, 101 North Carson Street, Carson City, NV 89701",
    "address_number": "",
    "address_prefix": "",
    "address_street": "State",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://gov.nv.gov/",
    "contact_page": "http://gov.nv.gov/Contact/Email-the-Governor/",
    "facebook_url": "https://www.facebook.com/BrianSandoval",
    "twitter_handle": "GovSandoval",
    "twitter_url": "https://twitter.com/GovSandoval",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/brian-sandoval.jpg"
  },
  {
    "state_name": "New Hampshire",
    "state_name_slug": "new-hampshire",
    "state_code": "NH",
    "state_code_slug": "nh",
    "votesmart": 125989,
    "title": "governor",
    "party": "republican",
    "name": "Christopher Sununu",
    "name_slug": "christopher-sununu",
    "first_name": "Christopher",
    "middle_name": "T.",
    "last_name": "Sununu",
    "name_suffix": "",
    "goes_by": "Chris",
    "pronunciation": "KRIS SUU-NOO-noo",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "roman-catholic",
    "openly_lgbtq": "",
    "date_of_birth": "1974-11-05",
    "entered_office": "2017-01-05",
    "term_end": "2019-01-01",
    "biography": "Christopher T. 'Chris' Sununu (born November 5, 1974) is an American politician and businessman who serves as the 82nd and current Governor of New Hampshire, since January 2017. Sununu was previously a member of the New Hampshire Executive Council, an office he held from (2011-2017). At age 42, Sununu is currently the youngest state Governor in the United States.",
    "phone": "603-271-2121",
    "fax": "603-271-7680",
    "latitude": 43.2069998,
    "longitude": -71.5403939,
    "address_complete": "107 North Main Street, Concord, NH 03301",
    "address_number": 107,
    "address_prefix": "North",
    "address_street": "Main",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "Concord",
    "address_state": "NH",
    "address_zipcode": "03301",
    "address_type": "Street",
    "website": "http://www.governor.nh.gov/",
    "contact_page": "https://business.nh.gov/nhgovernor/comments.asp",
    "facebook_url": "https://www.facebook.com/GovernorChrisSununu",
    "twitter_handle": "GovChrisSununu",
    "twitter_url": "https://twitter.com/GovChrisSununu",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/christopher-sununu.jpg"
  },
  {
    "state_name": "New Jersey",
    "state_name_slug": "new-jersey",
    "state_code": "NJ",
    "state_code_slug": "nj",
    "votesmart": 176221,
    "title": "governor",
    "party": "democrat",
    "name": "Philip Murphy",
    "name_slug": "philip-murphy",
    "first_name": "Philip",
    "middle_name": "Dunton",
    "last_name": "Murphy",
    "name_suffix": "",
    "goes_by": "Phil",
    "pronunciation": "FIL MUR-fee",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1957-08-16",
    "entered_office": "2018-01-16",
    "term_end": "2022-01-01",
    "biography": "Philip Dunton Murphy (born August 16, 1957) is an American financier, diplomat, and politician currently serving as the 56th Governor of New Jersey. Murphy, a Democrat, defeated then Lieutenant Governor Kim Guadagno in the 2017 gubernatorial election.",
    "phone": "609-292-6000",
    "fax": "",
    "latitude": 40.220707,
    "longitude": -74.763027,
    "address_complete": "Office of the Governor, Post Office Box 001, Trenton, NJ 08625",
    "address_number": "",
    "address_prefix": "",
    "address_street": "of",
    "address_sec_unit_type": "Office",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://www.nj.gov/governor/",
    "contact_page": "http://www.nj.gov/governor/contact/",
    "facebook_url": "https://www.facebook.com/PhilMurphyNJ",
    "twitter_handle": "philmurphynj",
    "twitter_url": "https://twitter.com/philmurphynj",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/philip-murphy.jpg"
  },
  {
    "state_name": "New Mexico",
    "state_name_slug": "new-mexico",
    "state_code": "NM",
    "state_code_slug": "nm",
    "votesmart": 121633,
    "title": "governor",
    "party": "republican",
    "name": "Susana Martinez",
    "name_slug": "susana-martinez",
    "first_name": "Susana",
    "middle_name": "",
    "last_name": "Martinez",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "SOO-ZA-nuh MARR-TEE-nez",
    "gender": "female",
    "ethnicity": "hispanic-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1959-07-14",
    "entered_office": "2011-01-01",
    "term_end": "2019-01-01",
    "biography": "Susana Martinez (born July 14, 1959) is an American politician and attorney who is the 31st Governor of New Mexico and chairwoman of the Republican Governors Association. A Republican, Martinez was elected governor on November 2, 2010 and sworn into office on January 1, 2011. She is the first woman to be elected governor of New Mexico and the first Hispanic woman governor in the United States.",
    "phone": "505-476-2200",
    "fax": "505-476-2226",
    "latitude": 35.6819673,
    "longitude": -105.941017,
    "address_complete": "Office of the Governor, 490 Old Santa Fe Trail, Room 400, Santa Fe, NM 87501",
    "address_number": "",
    "address_prefix": "",
    "address_street": "of",
    "address_sec_unit_type": "Office",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://www.governor.state.nm.us/",
    "contact_page": "http://www.governor.state.nm.us/Contact_the_Governor.aspx",
    "facebook_url": "https://www.facebook.com/SusanaMartinezFan",
    "twitter_handle": "Gov_Martinez",
    "twitter_url": "https://twitter.com/Gov_Martinez",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/susana-martinez.jpg"
  },
  {
    "state_name": "New York",
    "state_name_slug": "new-york",
    "state_code": "NY",
    "state_code_slug": "ny",
    "votesmart": 45083,
    "title": "governor",
    "party": "democrat",
    "name": "Andrew Cuomo",
    "name_slug": "andrew-cuomo",
    "first_name": "Andrew",
    "middle_name": "Mark",
    "last_name": "Cuomo",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "AN-droo KWOH-moh",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "roman-catholic",
    "openly_lgbtq": "",
    "date_of_birth": "1957-12-06",
    "entered_office": "2011-01-01",
    "term_end": "2019-01-01",
    "biography": "Andrew Mark Cuomo (born December 6, 1957) is an American politician and attorney who has been the 56th Governor of New York since January 1, 2011. A member of the Democratic Party, he was elected in 2010, holding the same position his father, Mario Cuomo, held for three terms from 1983 to 1995.",
    "phone": "518-474-8390",
    "fax": "",
    "latitude": 42.6497791,
    "longitude": -73.7618584,
    "address_complete": "Governor of New York State, NYS State Capitol Building, Albany, NY 12224",
    "address_number": "",
    "address_prefix": "",
    "address_street": "Governor",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "of",
    "address_state": "New York",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://www.governor.ny.gov/",
    "contact_page": "http://www.governor.ny.gov/contact-iframe",
    "facebook_url": "https://www.facebook.com/GovernorAndrewCuomo",
    "twitter_handle": "nygovcuomo",
    "twitter_url": "https://twitter.com/nygovcuomo",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/andrew-cuomo.jpg"
  },
  {
    "state_name": "North Carolina",
    "state_name_slug": "north-carolina",
    "state_code": "NC",
    "state_code_slug": "nc",
    "votesmart": 5900,
    "title": "governor",
    "party": "democrat",
    "name": "Roy Cooper",
    "name_slug": "roy-cooper",
    "first_name": "Roy",
    "middle_name": "Asberry",
    "last_name": "Cooper",
    "name_suffix": "III",
    "goes_by": "",
    "pronunciation": "ROY KOO-per",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "presbyterian",
    "openly_lgbtq": "",
    "date_of_birth": "1957-06-13",
    "entered_office": "2017-01-01",
    "term_end": "2019-01-01",
    "biography": "Roy Asberry Cooper III (born June 13, 1957) is an American politician and attorney who is the 75th and current Governor of North Carolina, since January 2017. Prior to his governorship, Cooper had served as the Attorney General of North Carolina from 2001 to 2017 and was previously a member of the North Carolina State Senate.",
    "phone": "919-814-2000",
    "fax": "",
    "latitude": 35.8093599,
    "longitude": -78.7094088,
    "address_complete": "20301 Mail Service Center, Raleigh, NC 27699",
    "address_number": 20301,
    "address_prefix": "",
    "address_street": "Mail Service",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "Raleigh",
    "address_state": "NC",
    "address_zipcode": 27699,
    "address_type": "Center",
    "website": "https://governor.nc.gov/",
    "contact_page": "https://governor.nc.gov/contact-governor-cooper",
    "facebook_url": "https://www.facebook.com/NCgovernor",
    "twitter_handle": "NC_Governor",
    "twitter_url": "https://twitter.com/NC_Governor",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/roy-cooper.jpg"
  },
  {
    "state_name": "North Dakota",
    "state_name_slug": "north-dakota",
    "state_code": "ND",
    "state_code_slug": "nd",
    "votesmart": 170745,
    "title": "governor",
    "party": "republican",
    "name": "Douglas Burgum",
    "name_slug": "douglas-burgum",
    "first_name": "Douglas",
    "middle_name": "J.",
    "last_name": "Burgum",
    "name_suffix": "",
    "goes_by": "Doug",
    "pronunciation": "DOAG BUR-gum",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1956-08-01",
    "entered_office": "2016-12-15",
    "term_end": "2019-01-01",
    "biography": "Douglas J. Burgum (born August 1, 1956) is an American entrepreneur, philanthropist and politician serving as the 33rd and current Governor of North Dakota since December 15, 2016. He is a member of the Republican Party.",
    "phone": "701-328-2200",
    "fax": "701-328-2205",
    "latitude": 46.8207013,
    "longitude": -100.7849455,
    "address_complete": "600 East Boulevard, Avenue Bismarck, ND 58505",
    "address_number": 600,
    "address_prefix": "",
    "address_street": "East",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "Avenue Bismarck",
    "address_state": "ND",
    "address_zipcode": 58505,
    "address_type": "Boulevard",
    "website": "https://www.governor.nd.gov/",
    "contact_page": "https://www.governor.nd.gov/contact-us",
    "facebook_url": "https://www.facebook.com/GovernorDougBurgum",
    "twitter_handle": "DougBurgum",
    "twitter_url": "https://twitter.com/DougBurgum",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/douglas-burgum.jpg"
  },
  {
    "state_name": "Ohio",
    "state_name_slug": "ohio",
    "state_code": "OH",
    "state_code_slug": "oh",
    "votesmart": 27017,
    "title": "governor",
    "party": "republican",
    "name": "John Kasich",
    "name_slug": "john-kasich",
    "first_name": "John",
    "middle_name": "Richard",
    "last_name": "Kasich",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "JOAN KA-sich",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "christian",
    "openly_lgbtq": "",
    "date_of_birth": "1952-05-13",
    "entered_office": "2011-01-10",
    "term_end": "2019-01-01",
    "biography": "John Richard Kasich (born May 13, 1952) is an American politician and former television host. He is the 69th and current Governor of Ohio. First elected in 2010 and re-elected in 2014, Kasich is a member of the Republican Party.[2] His second term is set to end on January 14, 2019, due to term limits.",
    "phone": "614-466-3555",
    "fax": "",
    "latitude": 39.9604503,
    "longitude": -83.0033678,
    "address_complete": "Riffe Center, 30th Floor, 77 South High Street, Columbus, OH 43215",
    "address_number": "",
    "address_prefix": "",
    "address_street": "Riffe",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "Center",
    "website": "http://governor.ohio.gov/",
    "contact_page": "http://governor.ohio.gov/Contact/ContacttheGovernor.aspx",
    "facebook_url": "https://www.facebook.com/JohnKasich",
    "twitter_handle": "OHPressSec",
    "twitter_url": "https://twitter.com/OHPressSec",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/john-kasich.jpg"
  },
  {
    "state_name": "Oklahoma",
    "state_name_slug": "oklahoma",
    "state_code": "OK",
    "state_code_slug": "ok",
    "votesmart": 1699,
    "title": "governor",
    "party": "republican",
    "name": "Mary Fallin",
    "name_slug": "mary-fallin",
    "first_name": "Mary",
    "middle_name": "",
    "last_name": "Fallin",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "ME-ree FAW-lin",
    "gender": "female",
    "ethnicity": "white-american",
    "religion": "christian",
    "openly_lgbtq": "",
    "date_of_birth": "1954-12-09",
    "entered_office": "2011-01-10",
    "term_end": "2019-01-01",
    "biography": "Mary Fallin (born December 9, 1954) is an American politician who is the 27th and current Governor of Oklahoma. A member of the Republican Party, Fallin was elected governor in 2010 and re-elected in 2014.",
    "phone": "405-521-2342",
    "fax": "405-521-3353",
    "latitude": 35.4921098,
    "longitude": -97.5055107,
    "address_complete": "Oklahoma State Capitol, 2300 North Lincoln Boulevard, Room 212, Oklahoma City, OK 73105",
    "address_number": "",
    "address_prefix": "",
    "address_street": "Oklahoma",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "https://www.ok.gov/governor/",
    "contact_page": "https://www.ok.gov/triton/modules/formbuilder/form.php?form_id=0d5f27f90f279a5b64535ec11836feaa07db37cbb20807e960b2c0aa58b9f358",
    "facebook_url": "https://www.facebook.com/GovernorMaryFallin",
    "twitter_handle": "GovMaryFallin",
    "twitter_url": "https://twitter.com/GovMaryFallin",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/mary-fallin.jpg"
  },
  {
    "state_name": "Oregon",
    "state_name_slug": "oregon",
    "state_code": "OR",
    "state_code_slug": "or",
    "votesmart": 2990,
    "title": "governor",
    "party": "democrat",
    "name": "Katherine Brown",
    "name_slug": "katherine-brown",
    "first_name": "Katherine",
    "middle_name": "",
    "last_name": "Brown",
    "name_suffix": "",
    "goes_by": "Kate",
    "pronunciation": "KAYT BROWN",
    "gender": "female",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1960-06-21",
    "entered_office": "2015-02-18",
    "term_end": "2019-01-01",
    "biography": "Katherine 'Kate' Brown (born June 21, 1960) is an American politician who is the 38th and current Governor of Oregon. Brown, a Democrat and an attorney, previously served as Oregon Secretary of State and as majority leader of the Oregon State Senate, where she represented portions of Milwaukie and of Northeast and Southeast Portland.",
    "phone": "503-378-4582",
    "fax": "",
    "latitude": 44.9382486,
    "longitude": -123.032757,
    "address_complete": "160 State Capitol, 900 Court Street, Salem, OR 97301-4047",
    "address_number": 160,
    "address_prefix": "",
    "address_street": "State",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://www.oregon.gov/gov/pages/index.aspx",
    "contact_page": "http://www.oregon.gov/gov/Pages/share-your-opinion.aspx",
    "facebook_url": "https://www.facebook.com/oregongovernor",
    "twitter_handle": "OregonGovBrown",
    "twitter_url": "https://twitter.com/OregonGovBrown",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/katherine-brown.jpg"
  },
  {
    "state_name": "Pennsylvania",
    "state_name_slug": "pennsylvania",
    "state_code": "PA",
    "state_code_slug": "pa",
    "votesmart": 77203,
    "title": "governor",
    "party": "democrat",
    "name": "Thomas Wolf",
    "name_slug": "thomas-wolf",
    "first_name": "Thomas",
    "middle_name": "Westerman",
    "last_name": "Wolf",
    "name_suffix": "",
    "goes_by": "Tom",
    "pronunciation": "TAWM WAWLF",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1948-11-17",
    "entered_office": "2015-01-20",
    "term_end": "2019-01-01",
    "biography": "Thomas Westerman 'Tom' Wolf (born November 17, 1948) is an American businessman and politician who is the 47th and current Governor of Pennsylvania, since taking office on January 20, 2015. A Democrat, he defeated Republican incumbent Tom Corbett in the 2014 gubernatorial election. Previously, Wolf served as the Secretary of the Pennsylvania Department of Revenue from April 2007 until November 2008 and as an executive in his family-owned business.",
    "phone": "717-787-2500",
    "fax": "717-772-8284",
    "latitude": 40.2645516,
    "longitude": -76.8860975,
    "address_complete": "508 Main Capitol Building, Harrisburg, PA 17120",
    "address_number": 508,
    "address_prefix": "",
    "address_street": "Main Capitol",
    "address_sec_unit_type": "Building",
    "address_sec_unit_num": "Harrisbur",
    "address_city": "g",
    "address_state": "PA",
    "address_zipcode": 17120,
    "address_type": "",
    "website": "https://www.governor.pa.gov/",
    "contact_page": "https://www.governor.pa.gov/contact/",
    "facebook_url": "https://www.facebook.com/governorwolf",
    "twitter_handle": "governortomwolf",
    "twitter_url": "https://twitter.com/governortomwolf",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/thomas-wolf.jpg"
  },
  {
    "state_name": "Rhode Island",
    "state_name_slug": "rhode-island",
    "state_code": "RI",
    "state_code_slug": "ri",
    "votesmart": 128028,
    "title": "governor",
    "party": "democrat",
    "name": "Gina Raimondo",
    "name_slug": "gina-raimondo",
    "first_name": "Gina",
    "middle_name": "Marie",
    "last_name": "Raimondo",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "JEE-nuh RAY-mahn-doh",
    "gender": "female",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1971-05-17",
    "entered_office": "2015-01-06",
    "term_end": "2019-01-01",
    "biography": "Gina Marie Raimondo (born May 17, 1971) is an American politician, businesswoman, venture capitalist, and the 75th and current Governor of the State of Rhode Island. Raimondo, a member of the Democratic Party, is the first woman to serve as Governor of Rhode Island. Prior to her election as governor, she served as the General Treasurer for the State of Rhode Island and was the second Rhode Island woman to serve as Treasurer.",
    "phone": "401-222-2080",
    "fax": "401-222-8096",
    "latitude": 41.8310614,
    "longitude": -71.4171496,
    "address_complete": "82 Smith Street, Providence, RI 02903",
    "address_number": 82,
    "address_prefix": "",
    "address_street": "Smith",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "Providence",
    "address_state": "RI",
    "address_zipcode": "02903",
    "address_type": "Street",
    "website": "http://www.gov.ri.gov/",
    "contact_page": "http://www.gov.ri.gov/contact/",
    "facebook_url": "https://www.facebook.com/GinaMRaimondo",
    "twitter_handle": "ginaraimondo",
    "twitter_url": "https://twitter.com/ginaraimondo",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/gina-raimondo.jpg"
  },
  {
    "state_name": "South Carolina",
    "state_name_slug": "south-carolina",
    "state_code": "SC",
    "state_code_slug": "sc",
    "votesmart": 48189,
    "title": "governor",
    "party": "republican",
    "name": "Henry McMaster",
    "name_slug": "henry-mcmaster",
    "first_name": "Henry",
    "middle_name": "Dargan",
    "last_name": "McMaster",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "HEN-ree MUHK-MAS-ter",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "presbyterian",
    "openly_lgbtq": "",
    "date_of_birth": "1947-05-27",
    "entered_office": "2017-01-24",
    "term_end": "2019-01-01",
    "biography": "Henry Dargan McMaster (born May 27, 1947) is an American politician and attorney who is the 117th and current Governor of South Carolina. He assumed office on January 24, 2017. He previously served as the 91st Lieutenant Governor of South Carolina from 2015 to 2017, as well as Attorney General of South Carolina from 2003 to 2011.",
    "phone": "803-734-2100",
    "fax": "803-734-5167",
    "latitude": 34.0004102,
    "longitude": -81.0350236,
    "address_complete": "The Honorable Henry McMaster, Office of the Governor, 1100 Gervais Street, Columbia, SC 29201",
    "address_number": "",
    "address_prefix": "",
    "address_street": "The",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://governor.sc.gov/Pages/default.aspx",
    "contact_page": "http://governor.sc.gov/Contact/Pages/default.aspx",
    "facebook_url": "https://www.facebook.com/HenryMcMaster",
    "twitter_handle": "SCGOVOFFICE",
    "twitter_url": "https://twitter.com/SCGOVOFFICE",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/henry-mcmaster.jpg"
  },
  {
    "state_name": "South Dakota",
    "state_name_slug": "south-dakota",
    "state_code": "SD",
    "state_code_slug": "sd",
    "votesmart": 11218,
    "title": "governor",
    "party": "republican",
    "name": "Dennis Daugaard",
    "name_slug": "dennis-daugaard",
    "first_name": "Dennis",
    "middle_name": "Martin",
    "last_name": "Daugaard",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "DE-nis DAH-gard",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "lutheran",
    "openly_lgbtq": "",
    "date_of_birth": "1953-06-11",
    "entered_office": "2011-01-08",
    "term_end": "2019-01-01",
    "biography": "Dennis Martin Daugaard (born June 11, 1953) is an American attorney and politician who has been the 32nd Governor of South Dakota since January 2011. He is the first governor of South Dakota or any state in the United States to be the child of deaf parents.",
    "phone": "607-773-3212",
    "fax": "",
    "latitude": 44.367069,
    "longitude": -100.3484242,
    "address_complete": "Office of the Governor, 500 East Capitol Avenue, Pierre, SD 57501",
    "address_number": "",
    "address_prefix": "",
    "address_street": "of",
    "address_sec_unit_type": "Office",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://sd.gov/governor/",
    "contact_page": "http://sd.gov/governor/contact/contact.aspx",
    "facebook_url": "",
    "twitter_handle": "SDGovDaugaard",
    "twitter_url": "https://twitter.com/SDGovDaugaard",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/dennis-daugaard.jpg"
  },
  {
    "state_name": "Tennessee",
    "state_name_slug": "tennessee",
    "state_code": "TN",
    "state_code_slug": "tn",
    "votesmart": 78497,
    "title": "governor",
    "party": "republican",
    "name": "William Haslam",
    "name_slug": "william-haslam",
    "first_name": "William",
    "middle_name": "Edward",
    "last_name": "Haslam",
    "name_suffix": "",
    "goes_by": "Bill",
    "pronunciation": "BIL HAZ-lahm",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "presbyterian",
    "openly_lgbtq": "",
    "date_of_birth": "1958-08-23",
    "entered_office": "2011-01-15",
    "term_end": "2019-01-01",
    "biography": "William Edward 'Bill' Haslam (born August 23, 1958) is an American politician and businessman who is the 49th and current Governor of Tennessee. A member of the Republican Party, Haslam was elected Governor in 2010 and was sworn in on January 15, 2011.",
    "phone": "615-741-2001",
    "fax": "",
    "latitude": 36.1658533,
    "longitude": -86.7864881,
    "address_complete": "1st Floor, State Capitol, 600 Charlotte Avenur, Nashville, TN 37243",
    "address_number": 1,
    "address_prefix": "",
    "address_street": "st",
    "address_sec_unit_type": "Floor",
    "address_sec_unit_num": "State",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://www.tn.gov/governor",
    "contact_page": "http://www.tn.gov/governor/topic/contact",
    "facebook_url": "https://www.facebook.com/TeamHaslam",
    "twitter_handle": "billhaslam",
    "twitter_url": "https://twitter.com/billhaslam",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/william-haslam.jpg"
  },
  {
    "state_name": "Texas",
    "state_name_slug": "texas",
    "state_code": "TX",
    "state_code_slug": "tx",
    "votesmart": 50168,
    "title": "governor",
    "party": "republican",
    "name": "Gregory Abbott",
    "name_slug": "gregory-abbott",
    "first_name": "Gregory",
    "middle_name": "Wayne",
    "last_name": "Abbott",
    "name_suffix": "",
    "goes_by": "Greg",
    "pronunciation": "GREG A-buht",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "roman-catholic",
    "openly_lgbtq": "",
    "date_of_birth": "1957-11-13",
    "entered_office": "2015-01-20",
    "term_end": "2019-01-01",
    "biography": "Gregory Wayne 'Greg' Abbott (born November 13, 1957) is an American lawyer and politician who currently serves as the 48th Governor of Texas since January 2015. During the Governorship of his predecessor, Rick Perry, Abbott was the 50th Attorney General of Texas and is a Republican.",
    "phone": "512-463-2000",
    "fax": "",
    "latitude": 30.2727169,
    "longitude": -97.7410268,
    "address_complete": "Office of the Governor, Post Office Box 12428, Austin, TX 78711-2428",
    "address_number": "",
    "address_prefix": "",
    "address_street": "of",
    "address_sec_unit_type": "Office",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://gov.texas.gov/",
    "contact_page": "https://gov.texas.gov/contact/",
    "facebook_url": "https://www.facebook.com/TexasGovernor",
    "twitter_handle": "TexGov",
    "twitter_url": "https://twitter.com/TexGov",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/gregory-abbott.jpg"
  },
  {
    "state_name": "Utah",
    "state_name_slug": "utah",
    "state_code": "UT",
    "state_code_slug": "ut",
    "votesmart": 50344,
    "title": "governor",
    "party": "republican",
    "name": "Gary Herbert",
    "name_slug": "gary-herbert",
    "first_name": "Gary",
    "middle_name": "Richard",
    "last_name": "Herbert",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "GE-ree HUR-bert",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "christian",
    "openly_lgbtq": "",
    "date_of_birth": "1947-05-07",
    "entered_office": "2009-08-11",
    "term_end": "2019-01-01",
    "biography": "Gary Richard Herbert (born May 7, 1947) is an American politician who is the 17th and current Governor of Utah. A member of the Republican Party, Herbert has served as Governor since August 2009. From July 2015 to July 2016, Herbert served as chair of the National Governors Association.",
    "phone": "801-538-1000",
    "fax": "801-538-1528",
    "latitude": 40.7443666,
    "longitude": -111.9725741,
    "address_complete": "Utah State Capitol, 350 North State Street, Suite 200, Post Office Box 142220, Salt Lake City, UT 84114",
    "address_number": "",
    "address_prefix": "",
    "address_street": "Utah",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "https://www.utah.gov/governor/",
    "contact_page": "https://gocentral.utah.gov/Request/Contact?response=true",
    "facebook_url": "https://www.facebook.com/GovGaryHerbert",
    "twitter_handle": "governorherbert",
    "twitter_url": "https://twitter.com/governorherbert",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/gary-herbert.jpg"
  },
  {
    "state_name": "Vermont",
    "state_name_slug": "vermont",
    "state_code": "VT",
    "state_code_slug": "vt",
    "votesmart": 55934,
    "title": "governor",
    "party": "republican",
    "name": "Philip Scott",
    "name_slug": "philip-scott",
    "first_name": "Philip",
    "middle_name": "",
    "last_name": "Scott",
    "name_suffix": "",
    "goes_by": "Phil",
    "pronunciation": "FIL SKAHT",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1958-08-04",
    "entered_office": "2017-01-05",
    "term_end": "2019-01-01",
    "biography": "Philip 'Phil' Scott (born August 4, 1958) is an American politician and businessman serving as the 82nd and current Governor of the state of Vermont, since January 2017. A Republican, he won the 2016 general election with over 52% of the vote. He was previously the 80th Lieutenant Governor of Vermont, an office he held from 2011 to 2017.",
    "phone": "802-828-3333",
    "fax": "802-828-3339",
    "latitude": 44.2612298,
    "longitude": -72.5817197,
    "address_complete": "109 State Street, Pavilion Montpelier, VT 05609",
    "address_number": 109,
    "address_prefix": "",
    "address_street": "State",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "Pavilion Montpelier",
    "address_state": "VT",
    "address_zipcode": "05609",
    "address_type": "Street",
    "website": "http://governor.vermont.gov/",
    "contact_page": "http://governor.vermont.gov/contact-us/message",
    "facebook_url": "https://www.facebook.com/GovPhilScott",
    "twitter_handle": "GovPhilScott",
    "twitter_url": "https://twitter.com/GovPhilScott",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/philip-scott.jpg"
  },
  {
    "state_name": "Virginia",
    "state_name_slug": "virginia",
    "state_code": "VA",
    "state_code_slug": "va",
    "votesmart": "",
    "title": "governor",
    "party": "democrat",
    "name": "Ralph Northam",
    "name_slug": "ralph-northam",
    "first_name": "Ralph",
    "middle_name": "Shearer",
    "last_name": "Northam",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "RALF NORTH-am",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1959-09-13",
    "entered_office": "2018-01-13",
    "term_end": "2022-01-01",
    "biography": "Ralph Shearer Northam (born September 13, 1959) is an American physician, veteran and politician serving as the 73rd Governor of Virginia since January 13, 2018. He served as the 40th Lieutenant Governor of Virginia from 2014 to 2018 prior to winning the governorship against Republican nominee Ed Gillespie in 2017.",
    "phone": "804-786-2211",
    "fax": "",
    "latitude": 37.6284448,
    "longitude": -77.5469394,
    "address_complete": "Post Office Box 1475, Richmond, VA 23218",
    "address_number": "",
    "address_prefix": "",
    "address_street": "Post",
    "address_sec_unit_type": "Office",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "https://governor.virginia.gov/",
    "contact_page": "https://governor.virginia.gov/constituent-services/communicating-with-the-governors-office/",
    "facebook_url": "https://www.facebook.com/ralph.northam",
    "twitter_handle": "ralphnortham",
    "twitter_url": "https://twitter.com/ralphnortham",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/ralph-northam.jpg"
  },
  {
    "state_name": "Washington",
    "state_name_slug": "washington",
    "state_code": "WA",
    "state_code_slug": "wa",
    "votesmart": 27125,
    "title": "governor",
    "party": "democrat",
    "name": "Jay Inslee",
    "name_slug": "jay-inslee",
    "first_name": "Jay",
    "middle_name": "Robert",
    "last_name": "Inslee",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "JAY INZ-lee",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "protestant",
    "openly_lgbtq": "",
    "date_of_birth": "1951-02-09",
    "entered_office": "2013-01-16",
    "term_end": "2019-01-01",
    "biography": "Jay Robert Inslee (born February 9, 1951) is an American politician, attorney and member of the Democratic Party who has served as the 23rd Governor of Washington since January 2013.",
    "phone": "360-902-4111",
    "fax": "360-753-4110",
    "latitude": 47.0400036,
    "longitude": -122.892194,
    "address_complete": "Office of the Governor, Post Office Box 40002, Olympia, WA 98504-0002",
    "address_number": "",
    "address_prefix": "",
    "address_street": "of",
    "address_sec_unit_type": "Office",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://www.governor.wa.gov/",
    "contact_page": "http://www.governor.wa.gov/contact/contact/send-gov-inslee-e-message",
    "facebook_url": "https://www.facebook.com/WaStateGov",
    "twitter_handle": "jayinslee",
    "twitter_url": "https://twitter.com/jayinslee",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/jay-inslee.jpg"
  },
  {
    "state_name": "West Virginia",
    "state_name_slug": "west-virginia",
    "state_code": "WV",
    "state_code_slug": "wv",
    "votesmart": 166287,
    "title": "governor",
    "party": "democrat",
    "name": "James Justice",
    "name_slug": "james-justice",
    "first_name": "James",
    "middle_name": "Conley",
    "last_name": "Justice",
    "name_suffix": "Jr.",
    "goes_by": "Jim",
    "pronunciation": "JIM JUS-tis",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1951-04-27",
    "entered_office": "2017-01-16",
    "term_end": "2019-01-01",
    "biography": "James Conley 'Jim' Justice Jr. (born April 27, 1951) is an American coal mining and agriculture businessman and politician who is the 36th and current Governor of West Virginia since January 2017. Owner of over 50 companies, including The Greenbrier, a luxury resort, Justice is one of the few billionaires from the state of West Virginia. A Democrat, Justice ran for Governor in the 2016 general election as the Democratic nominee, defeating the Republican nominee, Bill Cole.",
    "phone": "304-558-2000",
    "fax": "",
    "latitude": 38.3372072,
    "longitude": -81.6145768,
    "address_complete": "State Capitol, 1900 Kanawha Blvd. E, Charleston, WV 25305",
    "address_number": "",
    "address_prefix": "",
    "address_street": "State",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://www.governor.wv.gov/Pages/default.aspx",
    "contact_page": "http://www.governor.wv.gov/Pages/SubmitaCommenttotheGovernor.aspx",
    "facebook_url": "https://www.facebook.com/WVGovernor",
    "twitter_handle": "WVGovernor",
    "twitter_url": "https://twitter.com/WVGovernor",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/james-justice.jpg"
  },
  {
    "state_name": "Wisconsin",
    "state_name_slug": "wisconsin",
    "state_code": "WI",
    "state_code_slug": "wi",
    "votesmart": 3552,
    "title": "governor",
    "party": "republican",
    "name": "Scott Walker",
    "name_slug": "scott-walker",
    "first_name": "Scott",
    "middle_name": "Kevin",
    "last_name": "Walker",
    "name_suffix": "",
    "goes_by": "",
    "pronunciation": "SKAHT WAH-ker",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "unspecified",
    "openly_lgbtq": "",
    "date_of_birth": "1967-06-30",
    "entered_office": "2011-01-03",
    "term_end": "2019-01-01",
    "biography": "Scott Kevin Walker (born November 2, 1967) is an American politician who is the 45th and current Governor of Wisconsin. First elected governor in the 2010 Wisconsin general election, he won a 2012 recall election and was reelected governor in the 2014 Wisconsin gubernatorial election. He also served in the Wisconsin State Assembly and as the Milwaukee County Executive.",
    "phone": "608-266-1212",
    "fax": "",
    "latitude": 43.086661,
    "longitude": -89.3857785,
    "address_complete": "Office of Governor Scott Walker, 115 East Capitol, Madison, WI 53702",
    "address_number": "",
    "address_prefix": "",
    "address_street": "of",
    "address_sec_unit_type": "Office",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "https://walker.wi.gov/",
    "contact_page": "https://walker.wi.gov/contact-us",
    "facebook_url": "https://www.facebook.com/governorscottwalker",
    "twitter_handle": "govwalker",
    "twitter_url": "https://twitter.com/govwalker",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/scott-walker.jpg"
  },
  {
    "state_name": "Wyoming",
    "state_name_slug": "wyoming",
    "state_code": "WY",
    "state_code_slug": "wy",
    "votesmart": 127254,
    "title": "governor",
    "party": "republican",
    "name": "Matthew Mead",
    "name_slug": "matthew-mead",
    "first_name": "Matthew",
    "middle_name": "Hansen",
    "last_name": "Mead",
    "name_suffix": "",
    "goes_by": "Matt",
    "pronunciation": "MAT ME-ad",
    "gender": "male",
    "ethnicity": "white-american",
    "religion": "episcopalian",
    "openly_lgbtq": "",
    "date_of_birth": "1962-03-11",
    "entered_office": "2011-01-03",
    "term_end": "2019-01-01",
    "biography": "Matthew Hansen 'Matt' Mead (born March 11, 1962) is an American lawyer and politician who has served as the 32nd Governor of Wyoming since 2011. A Republican, he is a maternal grandson of Governor and U.S. Senator Clifford Hansen.",
    "phone": "307-777-7434",
    "fax": "307-632-3909",
    "latitude": 41.1398184,
    "longitude": -104.8221281,
    "address_complete": "State Capitol, 200 West 24th Street, Cheyenne, WY 82002-0010",
    "address_number": "",
    "address_prefix": "",
    "address_street": "State",
    "address_sec_unit_type": "",
    "address_sec_unit_num": "",
    "address_city": "",
    "address_state": "",
    "address_zipcode": "",
    "address_type": "",
    "website": "http://governor.wyo.gov/",
    "contact_page": "https://sites.google.com/a/wyo.gov/governor/contact-us",
    "facebook_url": "https://www.facebook.com/governormattmead",
    "twitter_handle": "GovMattMead",
    "twitter_url": "https://twitter.com/GovMattMead",
    "photo_url": "https://cdn.civil.services/us-governors/headshots/512x512/matthew-mead.jpg"
  }
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
    newState = StateTable.create(name: @name, abbrv: @abbrv, census_id: @census_id, poverty: @poverty)
    gov = @gov_array.first {|gov| gov["state_code"] == newState.abbrv }
    govHash = {
      "state_table_id" => newState.id,
      "party" => gov[:party],
      "name"=> gov[:name],
      "dob"=>gov[:date_of_birth],
      "entered_office"=> gov[:entered_office],
      "term_end"=> gov[:term_end],
      "bio"=> gov[:biography],
      "phone"=> gov[:phone],
      "address"=> gov[:address_complete],
      "website"=> gov[:website],
      "facebook"=> gov[:facebook_url],
      "twitter"=> gov[:twitter_url],
      "twitter_handle"=> gov[:twitter_handle],
      "photo_url"=> gov[:photo_url]
    }
    Governor.create(govHash)}
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
