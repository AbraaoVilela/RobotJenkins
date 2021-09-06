*Settings*

Library             SeleniumLibrary
Resource            pageobject/LoginPage.robot

*Variables*
${URL}                  https://smart.sig-energy.com/
${BROWSER}              chrome
${TIMEOUT}              30

*Keywords*
Start Session
    Set Selenium Implicit Wait              ${TIMEOUT}
    Open BROWSER        about:blank         ${BROWSER}       options=add_experimental_option('excludeSwitches', ['enable-logging'])
    Maximize Browser Window
    
End Session
    Capture Page Screenshot
    Close Browser