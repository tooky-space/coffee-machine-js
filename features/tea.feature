Feature: Drinking Tea
  Rule: Decaf before bed
    Scenario: Caffeinated in the evening
      Given it's 20:00
      When I drink a caffeinated tea
      Then I expect to sleep poorly