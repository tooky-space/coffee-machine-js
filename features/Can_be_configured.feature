Feature: Can be configured

  The coffee machine can be configured to ensure the coffee delivered
  is as good as possible.

  Scenario: Display settings
    Given the coffee machine is started
    When I switch to settings mode
    Then displayed message is:
      """
      Settings:
       - 1: water hardness
       - 2: grinder
      """

  Scenario: Default settings
    Given the coffee machine is started
    When I switch to settings mode
    Then settings should be:
      | water hardness | 2      |
      | grinder        | medium |
