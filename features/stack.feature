Feature: The Forth interpreter shall understand stack operations

  Background:
    Given a forth interpreter

  Scenario: Drop Top Element
     When I execute "1 2 DROP ."
     Then I should get "1 ok"

  Scenario: Swap Top Two Elements
     When I execute "1 2 SWAP . ."
     Then I should get "1 2 ok"

  Scenario: CLEAR empties the stack
    When I execute "1 2 3 CLEAR"
    Then I should get "ok"
    When I execute "."
    Then I should receive the error "stack is empty"

  Scenario: Minimum
     When I execute "0 1 3 MIN . ."
     Then I should get "1 0 ok"
     When I execute "0 3 1 MIN . ."
     Then I should get "1 0 ok"

  Scenario: Maximum
     When I execute "0 1 3 MAX . ."
     Then I should get "3 0 ok"
     When I execute "0 3 1 MAX . ."
     Then I should get "3 0 ok"
