*** Settings ***
Resource    ../settings.resource

*** Keywords ***
Open Browser To Home Page
    Open Browser    ${URL_BASE}    ${BROWSER}    oprtions=${CHROME_OPTIONS}
    Log    De certo os testes, família!!!!