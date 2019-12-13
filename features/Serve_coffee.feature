Feature: Serve coffee

  Delivering high-quality coffee is the key capability of the machine.

  Scenario: Simple use
    # Well, sometimes, you just get a coffee.
    Given the coffee machine is started
    When I take a coffee
    Then coffee should be served
