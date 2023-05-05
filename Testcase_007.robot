*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Positive
  [Tags]  sanity
  Open Browser  https://www.saucedemo.com/  chrome
  Maximize Browser Window
  Sleep    1s
  Input Text    //input[@id="user-name"]    standard_user
  Sleep    1s
  Input Text    //input[@id="password"]    secret_sauce
  Sleep    1s
  Click Element    //input[@id="login-button"]
  Sleep    3s
  Capture Page Screenshot
  Close Browser