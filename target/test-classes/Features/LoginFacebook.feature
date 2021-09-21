#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Feature:validating the login page of facebook
#Scenario: Bus.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature:Validating the login page of Facebook

  @tag1
  Scenario: Login the facebook with valid credentials
    Given Launch the Browser
    And open the facebook Application
    When enter the valid username and password
    And click the login button
    
    Then validate the msg
    And check more outcomes

  @tag2
  Scenario Outline: Title of your scenario outline
    Given I want to write a step with <name>
    When I check for the <value> in step
    Then I verify the <status> in step

    Examples: 
      | name  | value | status  |
      | name1 |     5 | success |
      | name2 |     7 | Fail    |
