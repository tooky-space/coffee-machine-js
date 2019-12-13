Feature: Support internationalisation

  The coffee machine will be availble in multiple territories and will support
  local languages.

  Scenario: No messages are displayed when machine is shut down
    Given the coffee machine is started
    When I shutdown the coffee machine
    Then message "" should be displayed

  Scenario Outline: Messages are based on language
    # Well, sometimes, you just get a coffee.
    When I start the coffee machine using language "<language>"
    Then message "<ready_message>" should be displayed

    Examples:
      | language | ready_message |
      | en       | Ready         |
      | fr       | Pret          |
