
Feature: Verifying Adatin hotel booking 

  Scenario Outline: Verifying adatin hotel website booking
    Given User should on the adatin page
    When User should login "<Username>" and "<Password>"
    And User should search hotels "<Location>", "<Hotels>", "<Roomtype>", "<Noofrooms>",  "<Checkindate>"	, "<Checkoutdate>", "<Adultsperroom>" and "<Childrenperroom>"
    And User should select hotel
    And User should book the hotel "<FirstName>","<LastName>","<BillingAddress>","<CreditcardNo>","<CreditcardType>","<Expirymonth>" , "<Expiryyear>" and "<CVVNumber>"
    Then User should get booking confirmation number
    
    Examples: 
      | Username    | Password  | Location | Hotels      |Roomtype |Noofrooms     |Checkindate|Checkoutdate|Adultsperroom  |Childrenperroom  |FirstName   | LastName  |BillingAddress | CreditcardNo    | CreditcardType  |Expirymonth  |Expiryyear  | CVVNumber  | 
      | SuguAravind | sugu@3005 | Sydney   | Hotel Creek |Standard |2 - Two       |17/11/2021 |18/11/2021 |    2 - Two     |   1 - One       |  Venkat    |    C	    |  Chennai      |1234567891234569 |     VISA        | November    |   2022     |  456       |
			| SuguAravind | sugu@3005 | Melbourne| Hotel Creek |Standard |2 - Two       |17/11/2021 |18/11/2021 |    2 - Two     |   1 - One       |  Sarath 	  |    A      |  Chennai      |1234567891234569 |     VISA        | November    |   2022     |  456       |
			| SuguAravind | sugu@3005 | Brisbane | Hotel Creek |Standard |2 - Two       |17/11/2021 |18/11/2021 |    2 - Two     |   1 - One       |  VelMurugan|    A      |  Chennai      |1234567891234569 |     VISA        | November    |   2022     |  456       |
			| SuguAravind | sugu@3005 | London   | Hotel Creek |Standard |2 - Two       |17/11/2021 |18/11/2021 |    2 - Two     |   1 - One       |  Saravanan	|    A      |  Chennai      |1234567891234569 |     VISA        | November    |   2022     |  456       |
			| SuguAravind | sugu@3005 | New york | Hotel Creek |Standard |2 - Two       |17/11/2021 |18/11/2021 |    2 - Two     |   1 - One       |  Venkat    |    C      |  Chennai      |1234567891234569 |     VISA        | November    |   2022     |  456       |   
			| SuguAravind | sugu@3005 | London   | Hotel Creek |Standard |2 - Two       |17/11/2021 |18/11/2021 |    2 - Two     |   1 - One       |  Sarath 	  |    A      |  Chennai      |1234567891234569 |     VISA        | November    |   2022     |  456       |
			| SuguAravind | sugu@3005 | Paris    | Hotel Creek |Standard |2 - Two       |17/11/2021 |18/11/2021 |    2 - Two     |   1 - One       |  Sarath 	  |    A      |  Chennai      |1234567891234569 |     VISA        | November    |   2022     |  456       |
			| SuguAravind | sugu@3005 | Paris    | Hotel Creek |Standard |2 - Two       |17/11/2021 |18/11/2021 |    2 - Two     |   1 - One       |  VelMurugan|    A      |  Chennai      |1234567891234569 |     VISA        | November    |   2022     |  456       |
			| SuguAravind | sugu@3005 | Sydney   | Hotel Creek |Standard |2 - Two       |17/11/2021 |18/11/2021 |    2 - Two     |   1 - One       |  VelMurugan|    A      |  Chennai      |1234567891234569 |     VISA        | November    |   2022     |  456       |
			| SuguAravind | sugu@3005 | Sydney   | Hotel Creek |Standard |2 - Two       |17/11/2021 |18/11/2021 |    2 - Two     |   1 - One       |  Saravanan |    A      |  Chennai      |1234567891234569 |     VISA        | November    |   2022     |  456       |
			