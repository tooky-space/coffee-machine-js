Feature: Bad usage

  You keep getting coffee even if the "Empty grounds" message is displayed.
  That said it's not a fantastic idea, you'll get grounds everywhere when
  you'll decide to empty it.

  Scenario: Full grounds does not block coffee
    Given the coffee machine is started
    And I handle everything except the grounds
    When I take "50" coffees
    Then message "Empty grounds" should be displayed
    And coffee should be served
