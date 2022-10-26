@YodyTesting
Feature: Inventory Adjustment

  Rule super admin can view the menu "Inventory", staff can not see it

  Scenario: verify the created product is existing on the first page
    Given login to dashboard with username is "aaaa" and password is "bbb"

  Scenario: Login to dashboard
#    Given user is on homepage
    When login to dashboard with
      | username | password | case            |
      | linh     | 12345678 | invalid account |
      | vananh   | 87654321 | valid account   |


    Scenario: Login 2
      When login to dashboard with
        | username | password | case            |
        | linh     | 12345678 | invalid account |
        | vananh   | 87654321 | valid account   |
      Then verify login successfully

    Scenario Outline: Login 3
      When login to dashboard with "<username>" and "<password>"
      Then verify login successfully
      Examples:
        | username | password |
        | linh     | 12345678 |
        | vananh   | 87654321 |


