Feature: Edit a plant
  As an admin user
  I want to edit an existing plant
  In order to maintain the plant data set

  Scenario: Rename Rucola to Rucoli
    Given I am logged in as admin user
    And the plant with name "Rucola" and family "Kreuzblütler"
    When I rename the plant to "Rucoli"
    Then the plant is available under the new name

  Scenario: Change the family of Kopfsalat to Gaensefussgewaechse
    Given I am logged in as admin user
    And the plant with name "Kofpsalat" and family "Korbblütler"
    And The family "Gänsefuchsgewächse"
    When I change the family from "Korbblütler" to "Gänsefuchsgewächse"
    Then the family of the plant is changed
    And the family contains the newly changed plant
    And the old family does not contains the newly changed plant anymore
