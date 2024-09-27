*** Settings ***
Library     SeleniumLibrary
Resource    ../resources/shopping_cart_keywords.robot

*** Test Cases ***
As a User, I should be able to checkout the Order
    Given Open Browser and Navigate
    When User Log In With Valid Credentials
    And User Add Item to Shopping Cart
    And Navigate to Cart Page
    And Navigate to Checkout Page
    And User fill in Checkout Information
    And Confirm The Order
    Then User can verify Order Confirmation
