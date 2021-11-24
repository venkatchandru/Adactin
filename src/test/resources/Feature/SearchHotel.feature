Feature: Book Hotels in adactin hotel page

  Scenario Outline: Verify search hotel in adactin page
    Given User is an adactin page
    When User should login "<username>" and "<password>"
    And User should search hotels "<Location>", "<Hotels>", "<RoomType>", "<NumberofRooms>", "<CheckInDate>", "<CheckOutDate>", "<AdultsperRoom>" and "<ChildrenperRoom>"
    Then User should verify "Select Hotel" message

    Examples: 
      | username    | password | Location  | Hotels         | RoomType | NumberofRooms | CheckInDate | CheckOutDate | AdultsperRoom | ChildrenperRoom |
      | SuguAravind | RZT36U   | Melbourne | Hotel Sunshine | Double   | 1 - One       | 16-11-2021  | 17-11-2021   | 2 - Two       | 0 - None        |

  Scenario Outline: Verify mandatory fields in adactin page
    Given User is an adactin page
    When User should login "<username>" and "<password>"
    And User should search hotels "<Location>", "<NumberofRooms>", "<CheckInDate>", "<CheckOutDate>" and "<AdultsperRoom>"
    Then User should verify "Select Hotel" message

    Examples: 
      | username   | password | Location  | NumberofRooms | CheckInDate | CheckOutDate | AdultsperRoom |
      | Sarath0420 | RZT36U   | Melbourne | 1 - One       | 16-11-2021  | 17-11-2021   | 2 - Two       |

  Scenario: Verify checkindate and checkoutdate in adactin page
    Given User is an adactin page
    When User should login "<username>" and "<password>"
      | username | password   |
      | Sarath   | Sarath0420 |
    And User should give invalid "<checkInDate>" and "<checkOutDate>"
      | checkInDate | checkOutDate |
      | 18-11-2021  | 18-11-2020   |
    Then User should verify "Check-In Date shall be before than Check-Out Date", "Check-Out Date shall be after than Check-In Date" message

  Scenario: Verify without enter any fields in adactin page
    Given User is an adactin page
    When User should login "<username>" and "<password>"
      | username | password   |
      | Sarath   | Sarath0420 |
    Then User should verify "Please Select a Location" message
