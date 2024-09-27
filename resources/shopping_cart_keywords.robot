*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}         https://www.saucedemo.com
${userName}    standard_user
${password}    secret_sauce

*** Keywords ***
Open Browser and Navigate
    Open Browser    ${URL}    chrome
    Maximize Browser Window

User Log In With Valid Credentials
    Input Text  id=user-name    ${userName}
    Input Text  id=password    ${password}
    Click Button  id=login-button

User Add Item to Shopping Cart
    Click Button  id=add-to-cart-sauce-labs-backpack

Navigate to Cart Page
    Element Should Be Visible    id=shopping_cart_container
    Click Element    id=shopping_cart_container

Navigate to Checkout Page
    Element Should Be Visible    id=checkout
    Click Button  id=checkout

User fill in Checkout Information
    Input Text  id=first-name  Rizki
    Input Text  id=last-name  Firmansyah
    Input Text  id=postal-code  15157
    Click Button  id=continue

Confirm The Order
    Click Button  id=finish

User can verify Order Confirmation
    Element Should Be Visible  xpath=//h2[@data-test='complete-header']